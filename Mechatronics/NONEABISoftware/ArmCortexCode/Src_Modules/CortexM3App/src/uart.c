#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/usart.h>
#include <libopencm3/cm3/nvic.h>

#include "uart.h"
#include "ring.h"

#define USART0_SEND_BUFFER_LEN 256
#define USART0_RECEIVE_BUFFER_LEN   256

ring_t usart_send_ring;
ring_t usart_receive_ring;

char usart_send_buffer[USART0_SEND_BUFFER_LEN];
char usart_receive_buffer[USART0_RECEIVE_BUFFER_LEN];

#if ((USART0_SEND_BUFFER_LEN - 1) & USART0_SEND_BUFFER_LEN) == 0
# if USART0_SEND_BUFFER_LEN > 256
# warning USART0_SEND_BUFFER > 256
# endif
#else
	#warning USART0_SEND_BUFFER NOT POWER OF 2
#endif

#if ((USART0_RECEIVE_BUFFER_LEN- 1) & USART0_RECEIVE_BUFFER_LEN) == 0
# if USART0_RECEIVE_BUFFER_LEN > 256
# warning USART0_RECEIVE_BUFFER > 256
# endif
#else
	#warning USART0_RECEIVE_BUFFER NOT POWER OF 2
#endif

void uart_init(){			
  ring_buffer_init(&usart_receive_ring, usart_receive_buffer, sizeof(usart_send_buffer[0]), sizeof(usart_send_buffer));

  ring_buffer_init(&usart_send_ring, usart_send_buffer, sizeof(usart_send_buffer[0]),sizeof(usart_send_buffer));

  /* Enable the USART1 interrupt. */
  nvic_enable_irq(NVIC_USART1_IRQ);

  /* Setup GPIO pin GPIO_USART1_RE_TX on GPIO port B for transmit. */
  gpio_set_mode(GPIOA, GPIO_MODE_OUTPUT_50_MHZ,
		GPIO_CNF_OUTPUT_ALTFN_PUSHPULL, GPIO_USART1_TX);

  /* Setup GPIO pin GPIO_USART1_RE_RX on GPIO port B for receive. */
  gpio_set_mode(GPIOA, GPIO_MODE_INPUT,
		GPIO_CNF_INPUT_FLOAT, GPIO_USART1_RX);

  /* Setup UART parameters. */
  usart_set_baudrate(USART1, 115200);
  usart_set_databits(USART1, 8);
  usart_set_stopbits(USART1, USART_STOPBITS_1);
  usart_set_parity(USART1, USART_PARITY_NONE);
  usart_set_flow_control(USART1, USART_FLOWCONTROL_NONE);
  usart_set_mode(USART1, USART_MODE_TX_RX);

  /* Enable USART1 Receive interrupt. */
  USART_CR1(USART1) |= USART_CR1_RXNEIE;

  /* Finally enable the USART. */
  usart_enable(USART1);

  nvic_get_active_irq(NVIC_USART1_IRQ);
  
}

void printString(const char myString[]) {
  uint8_t i = 0;
  while (myString[i]) {
    while(ring_buffer_full(&usart_send_ring));//wait till there's space
    ring_buffer_put(&usart_send_ring, &myString[i]);
    USART_CR1(USART1) |= USART_CR1_TXEIE;
    i++;
  }
}

void _putchar(char character){
  while(ring_buffer_full(&usart_send_ring));//wait till there's space
  ring_buffer_put(&usart_send_ring, &character);
  USART_CR1(USART1) |= USART_CR1_TXEIE;
}

int serialAvailable(void){
  return  (!ring_buffer_empty(&usart_receive_ring))? 1:0;
}

char get_char(void){
  char c = 0;
 
  ring_buffer_get(&usart_receive_ring, &c);
 
  return c;
}

void usart1_isr(void)
{

  if (((USART_CR1(USART1) & USART_CR1_RXNEIE) != 0) &&
      ((USART_SR(USART1) & USART_SR_RXNE) != 0)) {

    char i = usart_recv(USART1);
    ring_buffer_put(&usart_send_ring, &i);
    
    /* Enable transmit interrupt so it sends back the data. */
    USART_CR1(USART1) |= USART_CR1_TXEIE;
  }


  if (((USART_CR1(USART1) & USART_CR1_TXEIE) != 0) &&
      ((USART_SR(USART1) & USART_SR_TXE) != 0)) {

    char c;
	  
    if(ring_buffer_get(&usart_send_ring,&c) != -1){
      usart_send(USART1, c);
    }else{
      USART_CR1(USART1) &= ~USART_CR1_TXEIE;
    }
  }
}
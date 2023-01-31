#include "stm32g431xx.h"
#include <stdio.h>
#include <string.h>

#define UART_RX_BUFFER_LEN 256
char receiveBuffer[UART_RX_BUFFER_LEN] = {0};

void printString(const char myString[]);
extern void initialise_monitor_handles(void);  

int main(void)
{
  //OPTION BYTES
  //PG10 reset Input/Output
  //nBOOT0 = 1
  //nSWBOOT0  = 1 (BOOT0 taken from PB8/BOOT0 pin)
  //SRAM1 and CCM SRAM parity check disable
  //nBOOT1 = 1
  //Software window watchdog
  //Independent watchdog counter is running in stop mode
  //Software independent watchdog
  //No reset generated when entering the Stop mode
  //BOR_LEV threshold 1.7
  //Read protection not active
  


  //---------------------INCREASE CPU SPEED-------------------------

  //The HSI16 is used as system clock source after startup from Reset
  //Flash erase and programming is only possible in voltage scale range 1

  //PWR_CR1 Low power run not set, Voltage scaling range 1, low power mode= Stop 0 mode
  //PWR_CR5 Main regulator in range 1 normal mode
  //FLASH_ACR Instruction cache and data cache enabled, zero wait state*
  //RCC_CR All clocks off and not ready(hsi*), HSE not bypassed
  //RCC_CFGR HSI16 selected as system clock, sysclk & PCLK1 & PCLK2 not divided, MCO output disabled 
  //RCC_PLLCFGR PLLn mult by 8, PLLm div by 1, no PLL sourcce, PLLR div by 2, PLLR disabled    


  //Wait states for less than 90 MHz at VCore Range 1 normal mode
  FLASH->ACR |= FLASH_ACR_PRFTEN;
  FLASH->ACR = (FLASH->ACR & (~FLASH_ACR_LATENCY)) | FLASH_ACR_LATENCY_2WS; //2 wait states
    
  //Turn HSE and wait till is ready
  RCC->CR |= RCC_CR_HSEON;
  while(!(RCC->CR & (RCC_CR_HSERDY)));

  //Turn PLL on, configure it and wait till ready
  RCC->PLLCFGR = (RCC->PLLCFGR & ~(RCC_PLLCFGR_PLLM | RCC_PLLCFGR_PLLN))
    | (0b00 << RCC_PLLCFGR_PLLM_Pos) | (20 << RCC_PLLCFGR_PLLN_Pos); //M = 3, N = 24
  RCC->PLLCFGR |= RCC_PLLCFGR_PLLSRC_HSE;    
    
  RCC->CR |= RCC_CR_PLLON;
  while(!RCC_CR_PLLRDY);

  RCC->PLLCFGR |= RCC_PLLCFGR_PLLREN;
    
  //Select PLL as system clocksource and wait till selected
  RCC->CFGR = (RCC->CFGR & (~RCC_CFGR_SW_PLL)) | (RCC_CFGR_SW_PLL);
  while( ((RCC->CFGR) & RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL);

  //-----------------Enable independent clocks-----------------
  RCC->CCIPR = (RCC->CCIPR & (~RCC_CCIPR_USART1SEL)) | (0b01 << RCC_CCIPR_USART1SEL_Pos);

  //---------------------ENABLE GPIO CLOCK---------------------
  RCC->AHB2ENR |= RCC_AHB2ENR_GPIOAEN;
  RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;
  
  GPIOA->MODER = (GPIOA->MODER & (~GPIO_MODER_MODE8)) | (0b01 << GPIO_MODER_MODE8_Pos); //General Purpose Output mode
  GPIOA->OSPEEDR = (GPIOA->OSPEEDR & (~GPIO_OSPEEDR_OSPEED8)) | (0b00 << GPIO_OSPEEDR_OSPEED8_Pos); //Low speed
  GPIOA->OTYPER &= ~GPIO_OTYPER_OT8; //Push pull
  GPIOA->PUPDR = (GPIOA->PUPDR & (~GPIO_PUPDR_PUPD8)) | (0b00 << GPIO_PUPDR_PUPD8_Pos); //No Pull up down
  //  GPIOA->BSRR |= GPIO_BSRR_BS_8;


  //UART1 GPIO CONFIGURATION
  //PA10 UART1_RX
  GPIOA->MODER = (GPIOA->MODER & (~GPIO_MODER_MODE10)) | (0b10 << GPIO_MODER_MODE10_Pos) ; //Alternate function mode
  GPIOA->OTYPER &= (~GPIO_OTYPER_OT10);//Push pull  
  GPIOA->OSPEEDR = (GPIOA->OSPEEDR & (~GPIO_OSPEEDR_OSPEED10)) | (0b00 << GPIO_OSPEEDR_OSPEED10_Pos); //Low speed
  GPIOA->PUPDR = (GPIOA->PUPDR & (~GPIO_PUPDR_PUPD10)) | (0b00 << GPIO_PUPDR_PUPD10_Pos); //No pull up, no pull down
  GPIOA->AFR[1] = (GPIOA->AFR[1] & (~GPIO_AFRH_AFSEL10)) | (7 << GPIO_AFRH_AFSEL10_Pos); //Alternate function 10

  //PB6 UART1_TX
  GPIOB->MODER = (GPIOB->MODER & (~GPIO_MODER_MODE6)) | (0b10 << GPIO_MODER_MODE6_Pos) ; //Alternate function mode
  GPIOB->OTYPER &= (~GPIO_OTYPER_OT6);//Push pull  
  GPIOB->OSPEEDR = (GPIOB->OSPEEDR & (~GPIO_OSPEEDR_OSPEED6)) | (0b00 << GPIO_OSPEEDR_OSPEED6_Pos); //Low speed
  GPIOB->PUPDR = (GPIOB->PUPDR & (~GPIO_PUPDR_PUPD6)) | (0b00 << GPIO_PUPDR_PUPD6_Pos); //No pull up, no pull down
  GPIOB->AFR[0] = (GPIOB->AFR[0] & (~GPIO_AFRL_AFSEL6)) | (7 << GPIO_AFRL_AFSEL6_Pos); //Alternate function 10


  //---------------------CONFIGURE I2C-------------------------

  /*
  //I2C2 GPIO CONFIGUREATION
  //PA8 I2C2_SDA
  GPIOA->MODER = (GPIOA->MODER & (~GPIO_MODER_MODE8)) | (0b10 << GPIO_MODER_MODE8_Pos); //Alternate function mode
  GPIOA->OTYPER |= GPIO_OTYPER_OT8; //Open drain
  GPIOA->OSPEEDR = (GPIOA->OSPEEDR & (~GPIO_OSPEEDR_OSPEED8)) | (0b00 << GPIO_OSPEEDR_OSPEED8_Pos); //Low speed
  GPIOA->PUPDR = (GPIOA->PUPDR & (~GPIO_PUPDR_PUPD8)) | (0b01 << GPIO_PUPDR_PUPD8_Pos); //Pull up
  GPIOA->AFR[1] = (GPIOA->AFR[1] & (~GPIO_AFRH_AFSEL8)) | (4 << GPIO_AFRH_AFSEL8_Pos); //Alternate function 4

  //PA9 I2C2_SCL
  GPIOA->MODER = (GPIOA->MODER & (~GPIO_MODER_MODE9)) | (0b10 << GPIO_MODER_MODE9_Pos); //Alternate function mode
  GPIOA->OTYPER |= GPIO_OTYPER_OT9; //Open drain
  GPIOA->OSPEEDR = (GPIOA->OSPEEDR & (~GPIO_OSPEEDR_OSPEED9)) | (0b00 << GPIO_OSPEEDR_OSPEED9_Pos); //Low speed
  GPIOA->PUPDR = (GPIOA->PUPDR & (~GPIO_PUPDR_PUPD9)) | (0b01 << GPIO_PUPDR_PUPD9_Pos); //Pull up
  GPIOA->AFR[1] = (GPIOA->AFR[1] & (~GPIO_AFRH_AFSEL9)) | (4 << GPIO_AFRH_AFSEL9_Pos); //Alternate function 4

  //I2C2 CONFIGURATION
    
  //RCC_CCIPR I2C2 PCLK selected as clock
  //Analog noise filter ON
  //Digital filter diSabled
  //Clock stretching enabled    
  RCC->APB1ENR1 |= RCC_APB1ENR1_I2C2EN; //Enable I2C2 clock
  I2C2->TIMINGR = 0x00702991 & 0xF0FFFFFFU; //Set timings
  I2C2->CR1 |= I2C_CR1_PE; //Enable periphereal
  */

  //---------------------CONFIGURE UART-------------------------

  RCC->APB2ENR |= RCC_APB2ENR_USART1EN; //Enable UART1 clock
  
  //UART1 CONFIGURATION
  USART1->CR1 &= ~USART_CR1_FIFOEN;//FIFO mode disabled
  USART1->CR1 &= ~(USART_CR1_M0 | USART_CR1_M1);//1 start bit, 8 data bits
  USART1->CR1 &= ~USART_CR1_OVER8;//Oversampling by 16
  USART1->CR1 &= ~USART_CR1_PCE;//No parity
  USART1->CR1 |= USART_CR1_TE;//Enable transmiter
  USART1->CR1 |= USART_CR1_RE;//Enable receiver
  USART1->CR2 = (USART1->CR2 & ~(USART_CR2_STOP)) | (0b00 << USART_CR2_STOP_Pos);//1 Stop bit
  USART1->CR3 &= ~USART_CR3_ONEBIT;//Three sample bit method
  USART1->CR3 &= ~USART_CR3_CTSE;//CTS disabled
  USART1->CR3 &= ~USART_CR3_RTSE;//RTS disabled
  USART1->CR3 |= USART_CR3_OVRDIS;//Overrun Disable
  USART1->CR3 |= USART_CR3_DMAT;//Enable DMA transmit
  USART1->CR3 |= USART_CR3_DMAR;//Enable DMA receive
  USART1->PRESC = (USART1->PRESC & (~USART_PRESC_PRESCALER)) | (0b0000 << USART_PRESC_PRESCALER_Pos);//Input clock not divided
  USART1->BRR = 694;//80,000,000/ 173 = 115,200
  USART1->CR1 |= USART_CR1_UE;//Enable USART



  //-------------------CONFIGURE DMA---------------------------

  RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;//Enable DMA1 clock
  RCC->AHB1ENR |= RCC_AHB1ENR_DMAMUX1EN;//Enable DMA multiplexer clock

  //DMA UART TX CONFIGURATION
  DMA1_Channel2->CCR |= DMA_CCR_DIR; //read from memory
  DMA1_Channel2->CCR = (DMA1_Channel2->CCR & (~DMA_CCR_PL)) | (0b00 << DMA_CCR_PL_Pos); //Low Priority level
  DMA1_Channel2->CCR &= ~(DMA_CCR_CIRC);//circular mode disabled

  DMA1_Channel2->CPAR = (uint32_t)&USART1->TDR;//DMA destination address
  DMA1_Channel2->CCR &= ~(DMA_CCR_PINC);//Periphereal increment mode disabled
  DMA1_Channel2->CCR = (DMA1_Channel2->CCR &= (~DMA_CCR_PSIZE)) | (0b00 << DMA_CCR_PSIZE_Pos); //Perihphereal size 8 bits

  DMA1_Channel2->CCR |= (DMA_CCR_MINC);//Memory increment mode enabled
  DMA1_Channel2->CCR = (DMA1_Channel2->CCR &= (~DMA_CCR_MSIZE)) | (0b00 << DMA_CCR_MSIZE_Pos); //Memory size 8 bits

  DMAMUX1_Channel1->CCR = (DMAMUX1_Channel1->CCR & (~DMAMUX_CxCR_DMAREQ_ID)) | (25 << DMAMUX_CxCR_DMAREQ_ID_Pos);//Request 25

  //DMA UART RX CONFIGURATION
  DMA1_Channel1->CCR &= ~DMA_CCR_DIR; //read from periphereal
  DMA1_Channel1->CCR = (DMA1_Channel1->CCR & (~DMA_CCR_PL)) | (0b01 << DMA_CCR_PL_Pos); //Medium Priority level
  DMA1_Channel1->CCR |= DMA_CCR_CIRC;//circular mode enabled
  DMA1_Channel1->CNDTR = UART_RX_BUFFER_LEN;//DMA length

  DMA1_Channel1->CPAR = (uint32_t)&USART1->RDR;//DMA source address
  DMA1_Channel1->CCR &= ~(DMA_CCR_PINC);//Periphereal increment mode disabled
  DMA1_Channel1->CCR = (DMA1_Channel1->CCR &= (~DMA_CCR_PSIZE)) | (0b00 << DMA_CCR_PSIZE_Pos); //Perihphereal size 8 bits

  DMA1_Channel1->CMAR = (uint32_t)receiveBuffer;//DMA destination address
  DMA1_Channel1->CCR |= (DMA_CCR_MINC);//Memory increment mode enabled
  DMA1_Channel1->CCR = (DMA1_Channel1->CCR &= (~DMA_CCR_MSIZE)) | (0b00 << DMA_CCR_MSIZE_Pos); //Memory size 8 bits

  DMAMUX1_Channel0->CCR = (DMAMUX1_Channel0->CCR & (~DMAMUX_CxCR_DMAREQ_ID)) | (24 << DMAMUX_CxCR_DMAREQ_ID_Pos);//Request 24

  DMA1_Channel1->CCR |= DMA_CCR_EN;//Channel enable
  

  initialise_monitor_handles();
  
  uint32_t g = 0;

  while (1)
  {

    printString("Hola\n");

    GPIOA->BSRR |= GPIO_BSRR_BS8;
    for(int i = 1; i < 1000000;i++);
    GPIOA->BSRR |= GPIO_BSRR_BR8;
    for(int i = 1; i < 1000000;i++);


    while(receiveBuffer[g]){
      printf("%c",receiveBuffer[g]);
      g = (g+1) % UART_RX_BUFFER_LEN;
    }

    
    /*
    if(USART1->ISR & USART_ISR_RXNE){
      g = (USART1->RDR) & 0X00FF;
      printf("%c\n",g);
    };
    */


  }


  //
  
}

void printString(const char myString[]){
  DMA1_Channel2->CCR &= ~DMA_CCR_EN;//Channel disable
  DMA1_Channel2->CMAR = (uint32_t)myString;//DMA source address
  DMA1_Channel2->CNDTR = strlen(myString);//DMA length
  DMA1_Channel2->CCR |= DMA_CCR_EN;//Channel enable
  while(!(DMA1->ISR & DMA_ISR_TCIF2));//Wait till transfere complete
  DMA1->ISR |= DMA_IFCR_CTCIF2;//Clear transfere complete  
}


#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include "FreeRTOS.h"
#include "printf.h"
#include "task.h"
#include "lcd.h"
#include "uart.h"

static volatile uint32_t interruptCall = 0;
static volatile uint32_t timesCalled = 0;
static volatile uint32_t error = 0;
static volatile uint32_t lastTimesCalled = 0;
static volatile uint32_t lastTimeValue = 0;
static volatile uint32_t currTimeValue = 0;

static volatile uint32_t overflowCounter=0 ;

void configurePeriphereals(void);

void configurePeriphereals(void){
  rcc_periph_clock_enable(RCC_AFIO);    // I2C UART
  rcc_periph_clock_enable(RCC_GPIOA);   // TIM1 TIM2 
  rcc_periph_clock_enable(RCC_GPIOB);	// I2C TIM2 UART
  rcc_periph_clock_enable(RCC_GPIOC);	// I2C TIM2
  rcc_periph_clock_enable(RCC_I2C1);	// I2C
  rcc_periph_clock_enable(RCC_TIM1);    // TIM1
  rcc_periph_clock_enable(RCC_TIM2);    // TIM2
  rcc_periph_clock_enable(RCC_USART1);  // UART

  //32bit Timer
  
  //TIM1 
  TIM1_CCMR1 |= (TIM_CCMR1_CC1S_IN_TI1);//TI1 for CaptureChannel 1
  TIM1_CCER &= ~(TIM_CCER_CC1P);//Rising Edge
  TIM1_CCER |= (TIM_CCER_CC1E);//Enable capture on CaptureChannel1

  TIM1_CCMR1 |= (TIM_CCMR1_CC2S_IN_TI1);//TI1 for CaptureChannel 2
  TIM1_CCER |= (TIM_CCER_CC2P);//Falling Edge
  TIM1_CCER |= (TIM_CCER_CC2E);//Enable capture on CaptureChannel2
  
  TIM1_CCMR2 |= (TIM_CCMR2_CC3S_IN_TI3);//TI3 for CaptureChannel 3
  TIM1_CCER &= ~(TIM_CCER_CC3P);//Rising Edge
  TIM1_CCER |= (TIM_CCER_CC3E);//Enable capture on CaptureChannel 3  

  TIM1_CCMR2 |= (TIM_CCMR2_CC4S_IN_TI3);//TI3 for CaptureChannel 4
  TIM1_CCER |= (TIM_CCER_CC4P);//Falling Edge
  TIM1_CCER |= (TIM_CCER_CC4E);//Enable capture on CaptureChannel 4

  timer_enable_irq(TIM1, TIM_DIER_CC1IE);//Interrupts
  timer_enable_irq(TIM1, TIM_DIER_CC2IE);//Interrupts
  timer_enable_irq(TIM1, TIM_DIER_CC3IE);//Interrupts
  timer_enable_irq(TIM1, TIM_DIER_CC4IE);//Interrupts
  timer_enable_irq(TIM1, TIM_DIER_UIE);//Interrupts
  
  TIM1_PSC = 72;
  TIM1_CR1 |= TIM_CR1_CEN;  
  //TIM1

  //TIM2
  gpio_set_mode(GPIOA,
		GPIO_MODE_INPUT,
		GPIO_CNF_INPUT_FLOAT,
		GPIO15);  
   gpio_set_mode(GPIOB,
		GPIO_MODE_INPUT,
		GPIO_CNF_INPUT_FLOAT,
		GPIO3);
  TIM2_ARR = 0xFFFF;
  TIM2_CCMR1 |= (TIM_CCMR1_CC2S_IN_TI2 | TIM_CCMR1_CC1S_IN_TI1);
  TIM2_CCER &= ~(TIM_CCER_CC1P | TIM_CCER_CC2P);
  TIM2_SMCR |= TIM_SMCR_SMS_EM3;
  TIM2_CNT = 32767;
  TIM2_CR1 = TIM_CR1_CEN;
  //TIM2  

  //I2C
  gpio_set_mode(GPIOB,
		GPIO_MODE_OUTPUT_50_MHZ,
		GPIO_CNF_OUTPUT_ALTFN_OPENDRAIN,
		GPIO8|GPIO9);			
  gpio_set(GPIOB,GPIO8|GPIO9);
  //I2C

  //UART
  uart_init();
  //UART

  gpio_primary_remap(AFIO_MAPR_SWJ_CFG_JTAG_OFF_SW_ON,
		     AFIO_MAPR_I2C1_REMAP |  //I2C PB8 + PB9
		     AFIO_MAPR_TIM2_REMAP_PARTIAL_REMAP1 |
		     AFIO_MAPR_USART1_REMAP  ); //USART PB6 + PB7
  
  nvic_enable_irq(NVIC_TIM1_CC_IRQ);
  nvic_enable_irq(NVIC_TIM1_UP_IRQ);
  nvic_enable_irq(NVIC_USART1_IRQ);
  nvic_set_priority(NVIC_TIM1_CC_IRQ,(0 << 4));
  nvic_set_priority(NVIC_TIM1_UP_IRQ,(0 << 4));
  nvic_set_priority(NVIC_TIM1_UP_IRQ,(1 << 4));
}

static void
task1(void *args __attribute__((unused))) {

  lcd_init(LCD_DISP_ON);
  lcd_puts("Hello");

  char buffer[20];


  uint32_t lastTC = 0;
  int16_t zeroCounter;
  
  for (;;) {

    zeroCounter = (uint16_t)TIM2_CNT - (int16_t)32767;
    sprintf(buffer,"%d ", zeroCounter);
    lcd_gotoxy(0,2);
    lcd_puts(buffer);


    if(lastTC != timesCalled){
      if(!error){
	printf("%u \n", timesCalled);
	printf("%u \n\n", interruptCall);
      } else  if(error){
	printf("ERROR %u %u %u \n", timesCalled, lastTimeValue, currTimeValue);
	printf("%u \n\n", interruptCall);
	error = 0;
      }
      lastTC = timesCalled;
    }


  }
}

void tim1_cc_isr(){

  if(TIM1_SR & TIM_SR_CC1IF){
    timesCalled = (overflowCounter << 16) | TIM1_CCR1;
    interruptCall = 1;
  }else if(TIM1_SR & TIM_SR_CC2IF){
    timesCalled = (overflowCounter << 16) | TIM1_CCR2;
    interruptCall = 2;
  }else if(TIM1_SR & TIM_SR_CC3IF){
    timesCalled = (overflowCounter << 16) | TIM1_CCR3;
    interruptCall = 3;
  }else if(TIM1_SR & TIM_SR_CC4IF){
    timesCalled = (overflowCounter << 16) | TIM1_CCR4;
    interruptCall = 4;
  }
  
  if(timesCalled < lastTimesCalled){
    error = 1;
    lastTimeValue = lastTimesCalled;
    currTimeValue = timesCalled;    
  }
  
  lastTimesCalled = timesCalled;
}

void tim1_up_isr(){
  TIM1_SR &= ~TIM_SR_UIF;
  overflowCounter++;  
}

int main(void)
{
  rcc_clock_setup_in_hse_8mhz_out_72mhz();// For "blue pill"
  configurePeriphereals();
  xTaskCreate(task1,"task1",800,NULL,1,NULL);
  vTaskStartScheduler();
  for(;;);
  return 0;
}

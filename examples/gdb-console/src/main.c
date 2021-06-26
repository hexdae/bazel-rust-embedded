#include <stdint.h>

#define BIT(n) (1UL << n)

volatile uint32_t* const RCC_APB2ENR = (uint32_t*)(0x40021018);
volatile uint32_t* const GPIOC_CRH = (uint32_t*)(0x40011004);
volatile uint32_t* const GPIOC_ODR = (uint32_t*)(0x4001100C);

// Taking into account 16Mhz system clock
void delay_ms(volatile unsigned int delay)
{
    for (; delay > 0; delay--){
        for(volatile int i = 0; i < 3195; ++i);
    }
}

int main() {

    // Enable clock for GPIO PORT C
    // RCC->APB2ENR->IOPC_EN = 0b1;
    *RCC_APB2ENR |= BIT(4);

    // Set GPIOC 13 config to output
    // GPIOC->CRH->CNF13 = 0b00
    *GPIOC_CRH &= ~(BIT(23) | BIT(22));

    // Set GPIOC 13 MODE to OUTPUT 2Mhz
    // GPIOC->CRH->MODE13 = 0b10
    *GPIOC_CRH |= BIT(21);

    while(1){
        // Toggle GPIOC 13
        *GPIOC_ODR ^= BIT(13);
        delay_ms(100);
    }
}
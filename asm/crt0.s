	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	.global __start
__start:
	arm_func_start sub_08000000
sub_08000000: @ 0x08000000
	b _080000D0
_08000004:

	.include "asm/rom_header.inc"

@ 80000C0
	.word 0

	.global GPIOPortData
GPIOPortData: @ 80000C4
	.hword 0

	.global GPIOPortDirection
GPIOPortDirection: @ 80000C6
	.hword 0

	.global GPIOPortReadEnable
GPIOPortReadEnable: @ 80000C8
	.hword 0

	.space 6
_080000D0:
	mov r0, #PSR_IRQ_MODE
	msr cpsr_cf, r0
	ldr sp, _08000108
	mov r0, #PSR_SYS_MODE
	msr cpsr_cf, r0
	ldr sp, _08000104
	ldr r1, _08000248 @ =INTR_VECTOR
	add r0, pc, #0x18 @ =IntrMain
	str r0, [r1]
	ldr r1, _0800024C @ =AgbMain
	mov lr, pc
	bx r1
_08000100:
	b _080000D0
_08000104: .4byte IWRAM_END - 0x400
_08000108: .4byte IWRAM_END - 0x60

	arm_func_start IntrMain
IntrMain: @ 0x0800010C
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr ip, [r3]
	mrs r0, spsr
	push {r0, r3, ip, lr}
	mov r0, #1
	strh r0, [r3, #8]
	and r1, ip, ip, lsr #16
	mov r2, #0
	ands r0, r1, #INTR_FLAG_SERIAL
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_VBLANK
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_HBLANK
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_VCOUNT
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER0
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER1
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER2
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER3
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA0
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA1
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA2
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA3
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_KEYPAD
	bne _080001D4
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_GAMEPAK
_080001D0:
	bne _080001D0
_080001D4:
	strh r0, [r3, #2]
	ldr r0, _08000250 @ =gSTWIStatus
	ldr r0, [r0]
	ldrb r0, [r0, #0xa]
	mov r1, #INTR_FLAG_TIMER0
	lsl r0, r1, r0
	orr r0, r0, #INTR_FLAG_GAMEPAK
	orr r1, r0, #INTR_FLAG_SERIAL
	and r1, r1, ip
	strh r1, [r3]
	mrs r3, cpsr
	bic r3, r3, #PSR_I_BIT | PSR_F_BIT | PSR_MODE_MASK
	orr r3, r3, #PSR_SYS_MODE
	msr cpsr_cf, r3
	ldr r1, _08000254 @ =gIntrTable
	add r1, r1, r2
	ldr r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0 @ =_08000224
	bx r0
_08000224:
	ldm sp!, {lr}
	mrs r3, apsr
	bic r3, r3, #PSR_I_BIT | PSR_F_BIT | PSR_MODE_MASK
	orr r3, r3, #PSR_I_BIT | PSR_IRQ_MODE
	msr cpsr_cf, r3
	pop {r0, r3, ip, lr}
	strh ip, [r3]
	msr spsr_cf, r0
	bx lr
	.align 2, 0
_08000248: .4byte INTR_VECTOR
_0800024C: .4byte AgbMain
_08000250: .4byte gSTWIStatus
_08000254: .4byte gIntrTable

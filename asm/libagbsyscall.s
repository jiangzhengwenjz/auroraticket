	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x0800CB6C
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x0800CB70
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x0800CB74
	svc #6
	bx lr

	thumb_func_start Mod
Mod: @ 0x0800CB78
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start SoftReset
SoftReset: @ 0x0800CB80
	ldr r3, _0800CB90 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _0800CB94 @ =gUnk_03007F00
	mov sp, r1
	svc #1
	svc #0
	.align 2, 0
_0800CB90: .4byte 0x04000208
_0800CB94: .4byte gUnk_03007F00

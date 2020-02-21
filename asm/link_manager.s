	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start rfu_LMAN_REQBN_softReset_and_checkID
rfu_LMAN_REQBN_softReset_and_checkID: @ 0x08003780
	push {r4, lr}
	bl rfu_REQBN_softReset_and_checkID
	adds r4, r0, #0
	ldr r0, _080037C4 @ =0x00008001
	cmp r4, r0
	bne _08003794
	ldr r1, _080037C8 @ =gUnk_03001D48
	movs r0, #1
	strb r0, [r1, #8]
_08003794:
	ldr r0, _080037C8 @ =gUnk_03001D48
	ldrb r2, [r0, #4]
	adds r1, r0, #0
	cmp r2, #0x17
	beq _080037A8
	cmp r2, #1
	beq _080037A8
	movs r0, #0
	strb r0, [r1, #5]
	strb r0, [r1, #4]
_080037A8:
	movs r0, #0
	strb r0, [r1, #7]
	strb r0, [r1, #0xd]
	strb r0, [r1, #1]
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r1, #6]
	bl rfu_LMAN_managerChangeAgbClockMaster
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080037C4: .4byte 0x00008001
_080037C8: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_REQ_sendData
rfu_LMAN_REQ_sendData: @ 0x080037CC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _080037EC @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _080037F4
	ldr r0, _080037F0 @ =gUnk_03001D48
	ldrb r0, [r0, #2]
	movs r2, #0
	cmp r0, #1
	bne _080037FC
	movs r2, #1
	b _080037FC
	.align 2, 0
_080037EC: .4byte gRfuLinkStatus
_080037F0: .4byte gUnk_03001D48
_080037F4:
	ldr r0, _08003808 @ =gUnk_03001D48
	ldrb r1, [r0, #3]
	movs r1, #0
	strb r1, [r0, #3]
_080037FC:
	adds r0, r2, #0
	bl rfu_REQ_sendData
	pop {r0}
	bx r0
	.align 2, 0
_08003808: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_initializeManager
rfu_LMAN_initializeManager: @ 0x0800380C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r5, #0
	beq _08003854
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08003844 @ =gUnk_03001D48
	ldr r2, _08003848 @ =0x01000024
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0xff
	strb r0, [r4, #6]
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	ldr r0, _0800384C @ =rfu_LMAN_MSC_callback
	bl rfu_setMSCCallback
	ldr r0, _08003850 @ =rfu_LMAN_REQ_callback
	bl rfu_setREQCallback
	movs r0, #0
	b _08003856
	.align 2, 0
_08003844: .4byte gUnk_03001D48
_08003848: .4byte 0x01000024
_0800384C: .4byte rfu_LMAN_MSC_callback
_08003850: .4byte rfu_LMAN_REQ_callback
_08003854:
	movs r0, #4
_08003856:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_LMAN_endManager
rfu_LMAN_endManager: @ 0x08003860
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08003884 @ =gUnk_03001D48
	ldr r2, _08003888 @ =0x01000020
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0xff
	strb r0, [r4, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003884: .4byte gUnk_03001D48
_08003888: .4byte 0x01000020

	thumb_func_start rfu_LMAN_initializeRFU
rfu_LMAN_initializeRFU: @ 0x0800388C
	push {r4, lr}
	adds r4, r0, #0
	bl rfu_LMAN_clearVariables
	ldr r1, _080038BC @ =gUnk_03001D48
	movs r2, #1
	strb r2, [r1, #4]
	movs r0, #2
	strb r0, [r1, #5]
	str r4, [r1, #0x3c]
	ldrb r0, [r4, #0x11]
	strb r0, [r1, #9]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #0x32]
	ldrh r0, [r4, #0x14]
	strh r0, [r1, #0x18]
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080038B4
	strb r2, [r1, #0xb]
_080038B4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080038BC: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_clearVariables
rfu_LMAN_clearVariables: @ 0x080038C0
	push {r4, r5, lr}
	ldr r2, _08003904 @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r2, #5]
	strb r0, [r2, #4]
	movs r1, #0xff
	strb r1, [r2, #6]
	strb r0, [r2, #7]
	strb r0, [r2, #0x10]
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x24
	strb r0, [r1]
	adds r1, #0xc
	strb r0, [r1]
	movs r3, #0
	adds r5, r2, #0
	adds r5, #0x28
	movs r4, #0
	adds r2, #0x34
_080038E8:
	lsls r1, r3, #1
	adds r0, r1, r5
	strh r4, [r0]
	adds r1, r1, r2
	strh r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080038E8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003904: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_powerDownRFU
rfu_LMAN_powerDownRFU: @ 0x08003908
	ldr r1, _08003910 @ =gUnk_03001D48
	movs r0, #0x15
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08003910: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_establishConnection
rfu_LMAN_establishConnection: @ 0x08003914
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r3, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r1, _0800394C @ =gUnk_03001D48
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08003950
	cmp r0, #8
	bne _0800393A
	cmp r5, #1
	beq _08003950
_0800393A:
	movs r0, #1
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #1
	b _080039E2
	.align 2, 0
_0800394C: .4byte gUnk_03001D48
_08003950:
	bl rfu_getMasterSlave
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08003970
	ldr r1, _0800396C @ =gUnk_03001D48
	movs r0, #2
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #2
	b _080039E2
	.align 2, 0
_0800396C: .4byte gUnk_03001D48
_08003970:
	movs r2, #0
	ldrh r0, [r6]
	ldr r4, _080039A4 @ =0x0000FFFF
	adds r1, r6, #2
	ldr r3, _080039A8 @ =gUnk_03001D48
	cmp r0, r4
	beq _08003990
_0800397E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bhi _08003990
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, r4
	bne _0800397E
_08003990:
	cmp r2, #0x10
	bne _080039AC
	movs r0, #4
	strh r0, [r3, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #4
	b _080039E2
	.align 2, 0
_080039A4: .4byte 0x0000FFFF
_080039A8: .4byte gUnk_03001D48
_080039AC:
	cmp r5, #1
	bls _080039BA
	movs r0, #1
	strb r0, [r3, #7]
	movs r5, #1
	movs r7, #0
	b _080039BE
_080039BA:
	movs r0, #0
	strb r0, [r3, #7]
_080039BE:
	cmp r5, #0
	beq _080039C8
	movs r0, #5
	strb r0, [r3, #4]
	b _080039D6
_080039C8:
	movs r0, #9
	strb r0, [r3, #4]
	ldrb r0, [r3, #0xb]
	cmp r0, #0
	beq _080039D6
	movs r0, #2
	strb r0, [r3, #0xb]
_080039D6:
	strb r5, [r3, #6]
	strh r7, [r3, #0x1a]
	mov r0, r8
	strh r0, [r3, #0x26]
	str r6, [r3, #0x20]
	movs r0, #0
_080039E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start rfu_LMAN_CHILD_connectParent
rfu_LMAN_CHILD_connectParent: @ 0x080039EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r1, _08003A20 @ =gUnk_03001D48
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08003A24
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08003A24
	movs r0, #1
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #1
	b _08003AC4
	.align 2, 0
_08003A20: .4byte gUnk_03001D48
_08003A24:
	bl rfu_getMasterSlave
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08003A44
	ldr r1, _08003A40 @ =gUnk_03001D48
	movs r0, #2
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #2
	b _08003AC4
	.align 2, 0
_08003A40: .4byte gUnk_03001D48
_08003A44:
	movs r2, #0
	ldr r0, _08003A90 @ =gRfuLinkStatus
	ldr r1, [r0]
	ldrb r3, [r1, #8]
	ldr r5, _08003A94 @ =gUnk_03001D48
	adds r7, r0, #0
	cmp r2, r3
	bhs _08003A72
	ldrh r0, [r1, #0x14]
	cmp r0, r6
	beq _08003A72
	adds r4, r1, #0
	adds r1, r3, #0
_08003A5E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r1
	bhs _08003A72
	lsls r0, r2, #5
	adds r0, r4, r0
	ldrh r0, [r0, #0x14]
	cmp r0, r6
	bne _08003A5E
_08003A72:
	ldr r0, [r7]
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _08003A7E
	cmp r2, r0
	bne _08003A98
_08003A7E:
	movs r0, #3
	strh r0, [r5, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #3
	b _08003AC4
	.align 2, 0
_08003A90: .4byte gRfuLinkStatus
_08003A94: .4byte gUnk_03001D48
_08003A98:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08003AA2
	cmp r0, #9
	bne _08003AAA
_08003AA2:
	movs r0, #0xc
	strb r0, [r5, #4]
	movs r0, #0xd
	b _08003AB0
_08003AAA:
	movs r0, #0xb
	strb r0, [r5, #4]
	movs r0, #0xc
_08003AB0:
	strb r0, [r5, #5]
	strh r6, [r5, #0x1e]
	mov r0, r8
	strh r0, [r5, #0x1a]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _08003AC2
	movs r0, #7
	strb r0, [r5, #7]
_08003AC2:
	movs r0, #0
_08003AC4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_LMAN_PARENT_stopWaitLinkRecoveryAndDisconnect
rfu_LMAN_PARENT_stopWaitLinkRecoveryAndDisconnect: @ 0x08003AD0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r6, _08003B34 @ =gUnk_03001D48
	adds r3, r6, #0
	adds r3, #0x30
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08003B2C
	adds r0, r2, #0
	bics r0, r1
	strb r0, [r3]
	movs r4, #0
	ldr r7, _08003B38 @ =gRfuLinkStatus
	movs r5, #1
	adds r3, #4
	movs r2, #0
_08003AF6:
	adds r0, r1, #0
	asrs r0, r4
	ands r0, r5
	cmp r0, #0
	beq _08003B06
	lsls r0, r4, #1
	adds r0, r0, r3
	strh r2, [r0]
_08003B06:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08003AF6
	ldr r0, [r7]
	ldrb r4, [r0, #3]
	ands r4, r1
	cmp r4, #0
	beq _08003B20
	adds r0, r4, #0
	bl rfu_LMAN_disconnect
_08003B20:
	ldr r0, _08003B34 @ =gUnk_03001D48
	strh r4, [r0, #0x14]
	movs r0, #0x33
	adds r1, r4, #0
	bl rfu_LMAN_occureCallback
_08003B2C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B34: .4byte gUnk_03001D48
_08003B38: .4byte gRfuLinkStatus

	thumb_func_start rfu_LMAN_stopManager
rfu_LMAN_stopManager: @ 0x08003B3C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	movs r2, #0
	ldr r1, _08003B58 @ =gUnk_03001D48
	strb r2, [r1, #7]
	adds r5, r1, #0
	cmp r0, #0
	beq _08003B5C
	bl rfu_LMAN_clearVariables
	movs r0, #0x17
	strb r0, [r5, #4]
	b _08003C26
	.align 2, 0
_08003B58: .4byte gUnk_03001D48
_08003B5C:
	ldrb r0, [r5, #4]
	subs r0, #5
	cmp r0, #0xd
	bhi _08003C12
	lsls r0, r0, #2
	ldr r1, _08003B70 @ =_08003B74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003B70: .4byte _08003B74
_08003B74: @ jump table
	.4byte _08003BAC @ case 0
	.4byte _08003BB8 @ case 1
	.4byte _08003BB8 @ case 2
	.4byte _08003C18 @ case 3
	.4byte _08003BC2 @ case 4
	.4byte _08003BCC @ case 5
	.4byte _08003BCC @ case 6
	.4byte _08003BD6 @ case 7
	.4byte _08003BE0 @ case 8
	.4byte _08003BE0 @ case 9
	.4byte _08003C18 @ case 10
	.4byte _08003BE6 @ case 11
	.4byte _08003C0C @ case 12
	.4byte _08003C0C @ case 13
_08003BAC:
	movs r1, #0
	movs r0, #8
	strb r0, [r5, #4]
	strb r1, [r5, #5]
	movs r2, #0x13
	b _08003C18
_08003BB8:
	movs r0, #7
	strb r0, [r5, #4]
	movs r0, #8
	strb r0, [r5, #5]
	b _08003C18
_08003BC2:
	movs r0, #0
	strb r0, [r5, #5]
	strb r0, [r5, #4]
	movs r2, #0x21
	b _08003C18
_08003BCC:
	movs r1, #0
	movs r0, #0xb
	strb r0, [r5, #4]
	strb r1, [r5, #5]
	b _08003C18
_08003BD6:
	movs r0, #0
	strb r0, [r5, #5]
	strb r0, [r5, #4]
	movs r2, #0x23
	b _08003C18
_08003BE0:
	movs r0, #0xe
	strb r0, [r5, #4]
	b _08003C18
_08003BE6:
	ldrb r0, [r5, #0x11]
	strb r0, [r5, #4]
	ldrb r0, [r5, #0x12]
	strb r0, [r5, #5]
	ldr r4, _08003C08 @ =gRfuLinkStatus
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	bl rfu_LMAN_disconnect
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	strh r0, [r5, #0x14]
	movs r0, #0x33
	movs r1, #1
	bl rfu_LMAN_occureCallback
	b _08003C26
	.align 2, 0
_08003C08: .4byte gRfuLinkStatus
_08003C0C:
	movs r0, #0x12
	strb r0, [r5, #4]
	b _08003C18
_08003C12:
	strb r2, [r5, #5]
	strb r2, [r5, #4]
	movs r2, #0x43
_08003C18:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _08003C26
	adds r0, r2, #0
	movs r1, #0
	bl rfu_LMAN_occureCallback
_08003C26:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_linkWatcher
rfu_LMAN_linkWatcher: @ 0x08003C2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	mov r8, r1
	mov r5, sp
	adds r5, #1
	mov r4, sp
	adds r4, #2
	mov r1, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl rfu_REQBN_watchLink
	mov r0, sp
	ldrb r0, [r0]
	adds r7, r4, #0
	cmp r0, #0
	beq _08003CF6
	ldr r1, _08003CC8 @ =gUnk_03001D48
	mov r0, sp
	ldrb r0, [r0]
	strh r0, [r1, #0x14]
	ldrb r0, [r5]
	strh r0, [r1, #0x16]
	ldrb r0, [r1, #9]
	adds r6, r1, #0
	cmp r0, #0
	beq _08003CE6
	movs r0, #1
	strb r0, [r6, #0xa]
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _08003C82
	ldrb r0, [r5]
	cmp r0, #0
	bne _08003C82
	movs r0, #4
	strb r0, [r6, #0xa]
_08003C82:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _08003CCC
	movs r2, #0
	mov r4, sp
	movs r5, #1
	mov ip, r6
	mov r3, ip
	adds r3, #0x30
	movs r6, #0x34
	add r6, ip
	mov sb, r6
_08003C9A:
	ldrb r0, [r4]
	asrs r0, r2
	ands r0, r5
	cmp r0, #0
	beq _08003CB8
	adds r0, r5, #0
	lsls r0, r2
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r2, #1
	add r0, sb
	mov r6, ip
	ldrh r1, [r6, #0x32]
	strh r1, [r0]
_08003CB8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08003C9A
	movs r0, #0x31
	b _08003CDE
	.align 2, 0
_08003CC8: .4byte gUnk_03001D48
_08003CCC:
	movs r0, #0
	strb r0, [r6, #0xa]
	mov r0, sp
	ldrb r0, [r0]
	bl rfu_LMAN_disconnect
	movs r0, #1
	mov r8, r0
	movs r0, #0x33
_08003CDE:
	movs r1, #1
	bl rfu_LMAN_occureCallback
	b _08003CF2
_08003CE6:
	mov r0, sp
	ldrb r0, [r0]
	bl sub_08001AD4
	movs r1, #1
	mov r8, r1
_08003CF2:
	bl rfu_LMAN_managerChangeAgbClockMaster
_08003CF6:
	ldr r0, _08003DD4 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _08003DC4
	ldrb r0, [r7]
	cmp r0, #0
	beq _08003D54
	movs r2, #0
	ldr r6, _08003DD8 @ =gUnk_03001D48
	movs r3, #1
	adds r4, r6, #0
	adds r4, #0x34
	adds r6, #0x30
	adds r5, r7, #0
_08003D14:
	ldrb r0, [r6]
	asrs r0, r2
	ands r0, r3
	cmp r0, #0
	beq _08003D30
	ldrb r0, [r5]
	asrs r0, r2
	ands r0, r3
	cmp r0, #0
	beq _08003D30
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0]
_08003D30:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08003D14
	ldr r3, _08003DD8 @ =gUnk_03001D48
	adds r2, r3, #0
	adds r2, #0x30
	ldrb r1, [r7]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	ldrb r0, [r7]
	strh r0, [r3, #0x14]
	movs r0, #0x32
	movs r1, #1
	bl rfu_LMAN_occureCallback
_08003D54:
	ldr r0, _08003DD8 @ =gUnk_03001D48
	adds r4, r0, #0
	adds r4, #0x30
	ldrb r1, [r4]
	adds r6, r0, #0
	cmp r1, #0
	beq _08003DC0
	movs r3, #0
	movs r2, #0
	movs r5, #1
_08003D68:
	ldrb r0, [r4]
	asrs r0, r2
	ands r0, r5
	cmp r0, #0
	beq _08003D9A
	lsls r1, r2, #1
	adds r0, r6, #0
	adds r0, #0x34
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08003D9A
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08003D9A
	adds r0, r5, #0
	lsls r0, r2
	ldrb r1, [r4]
	bics r1, r0
	strb r1, [r4]
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_08003D9A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08003D68
	cmp r3, #0
	beq _08003DB2
	adds r0, r3, #0
	bl sub_08001AD4
	movs r6, #1
	mov r8, r6
_08003DB2:
	ldr r0, _08003DD8 @ =gUnk_03001D48
	adds r1, r0, #0
	adds r1, #0x30
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	bne _08003DC4
_08003DC0:
	movs r0, #0
	strb r0, [r6, #0xa]
_08003DC4:
	mov r0, r8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003DD4: .4byte gRfuLinkStatus
_08003DD8: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_syncVBlank
rfu_LMAN_syncVBlank: @ 0x08003DDC
	push {lr}
	bl rfu_syncVBlank
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08003DF4
	movs r0, #0xf1
	movs r1, #0
	bl rfu_LMAN_occureCallback
	bl rfu_LMAN_managerChangeAgbClockMaster
_08003DF4:
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_manager_entity
rfu_LMAN_manager_entity: @ 0x08003DF8
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, _08003E10 @ =gUnk_03001D48
	ldr r2, [r1, #0x40]
	cmp r2, #0
	bne _08003E14
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08003E14
	strb r2, [r1, #4]
	b _08003FE2
	.align 2, 0
_08003E10: .4byte gUnk_03001D48
_08003E14:
	ldr r0, _08003E48 @ =gUnk_03001D48
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08003E22
	adds r0, r3, #0
	bl rfu_LMAN_settingPCSWITCH
_08003E22:
	ldr r4, _08003E48 @ =gUnk_03001D48
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _08003E2C
	b _08003FAC
_08003E2C:
	bl rfu_waitREQComplete
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #4]
	subs r0, #1
	cmp r0, #0x16
	bls _08003E3E
	b _08003FA2
_08003E3E:
	lsls r0, r0, #2
	ldr r1, _08003E4C @ =_08003E50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003E48: .4byte gUnk_03001D48
_08003E4C: .4byte _08003E50
_08003E50: @ jump table
	.4byte _08003ED0 @ case 0
	.4byte _08003F08 @ case 1
	.4byte _08003F0E @ case 2
	.4byte _08003F24 @ case 3
	.4byte _08003F3C @ case 4
	.4byte _08003F42 @ case 5
	.4byte _08003F48 @ case 6
	.4byte _08003FA2 @ case 7
	.4byte _08003F4E @ case 8
	.4byte _08003F54 @ case 9
	.4byte _08003F5A @ case 10
	.4byte _08003F60 @ case 11
	.4byte _08003F70 @ case 12
	.4byte _08003F76 @ case 13
	.4byte _08003FA2 @ case 14
	.4byte _08003F7C @ case 15
	.4byte _08003F8C @ case 16
	.4byte _08003F92 @ case 17
	.4byte _08003F98 @ case 18
	.4byte _08003FA2 @ case 19
	.4byte _08003F9E @ case 20
	.4byte _08003FA2 @ case 21
	.4byte _08003EAC @ case 22
_08003EAC:
	bl rfu_LMAN_REQBN_softReset_and_checkID
	ldr r1, _08003EC8 @ =0x00008001
	movs r2, #0xff
	cmp r0, r1
	bne _08003EBA
	movs r2, #0x44
_08003EBA:
	ldr r1, _08003ECC @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r1, #5]
	strb r0, [r1, #4]
	adds r0, r2, #0
	b _08003EFA
	.align 2, 0
_08003EC8: .4byte 0x00008001
_08003ECC: .4byte gUnk_03001D48
_08003ED0:
	bl rfu_LMAN_REQBN_softReset_and_checkID
	ldr r1, _08003EE8 @ =0x00008001
	cmp r0, r1
	bne _08003EF0
	ldr r0, _08003EEC @ =gUnk_03001D48
	ldrb r1, [r0, #5]
	strb r1, [r0, #4]
	movs r1, #3
	strb r1, [r0, #5]
	b _08003FA2
	.align 2, 0
_08003EE8: .4byte 0x00008001
_08003EEC: .4byte gUnk_03001D48
_08003EF0:
	ldr r1, _08003F04 @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r1, #5]
	strb r0, [r1, #4]
	movs r0, #0xff
_08003EFA:
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _08003FA2
	.align 2, 0
_08003F04: .4byte gUnk_03001D48
_08003F08:
	bl rfu_REQ_reset
	b _08003FA2
_08003F0E:
	ldr r0, _08003F20 @ =gUnk_03001D48
	ldr r2, [r0, #0x3c]
	ldrh r0, [r2, #2]
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	bl rfu_REQ_configSystem
	b _08003FA2
	.align 2, 0
_08003F20: .4byte gUnk_03001D48
_08003F24:
	ldr r0, _08003F38 @ =gUnk_03001D48
	ldr r3, [r0, #0x3c]
	ldrb r0, [r3, #4]
	ldrh r1, [r3, #6]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl rfu_REQ_configGameData
	b _08003FA2
	.align 2, 0
_08003F38: .4byte gUnk_03001D48
_08003F3C:
	bl rfu_REQ_startSearchChild
	b _08003FA2
_08003F42:
	bl rfu_REQ_pollSearchChild
	b _08003FA2
_08003F48:
	bl rfu_REQ_endSearchChild
	b _08003FA2
_08003F4E:
	bl rfu_REQ_startSearchParent
	b _08003FA2
_08003F54:
	bl rfu_REQ_pollSearchParent
	b _08003FA2
_08003F5A:
	bl rfu_REQ_endSearchParent
	b _08003FA2
_08003F60:
	ldr r0, _08003F6C @ =gUnk_03001D48
	ldrh r0, [r0, #0x1e]
	bl rfu_REQ_startConnectParent
	b _08003FA2
	.align 2, 0
_08003F6C: .4byte gUnk_03001D48
_08003F70:
	bl rfu_REQ_pollConnectParent
	b _08003FA2
_08003F76:
	bl rfu_REQ_endConnectParent
	b _08003FA2
_08003F7C:
	ldr r0, _08003F88 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	bl rfu_REQ_CHILD_startConnectRecovery
	b _08003FA2
	.align 2, 0
_08003F88: .4byte gRfuLinkStatus
_08003F8C:
	bl rfu_REQ_CHILD_pollConnectRecovery
	b _08003FA2
_08003F92:
	bl rfu_REQ_CHILD_endConnectRecovery
	b _08003FA2
_08003F98:
	bl rfu_REQ_changeMasterSlave
	b _08003FA2
_08003F9E:
	bl rfu_REQ_stopMode
_08003FA2:
	bl rfu_waitREQComplete
	ldr r1, _08003FE8 @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r1, #0xe]
_08003FAC:
	ldr r0, _08003FE8 @ =gUnk_03001D48
	ldrb r0, [r0, #4]
	subs r0, #0x12
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08003FBC
	b _08003E22
_08003FBC:
	ldr r0, _08003FEC @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _08003FD2
	movs r0, #0
	bl rfu_LMAN_linkWatcher
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08003FE2
_08003FD2:
	bl rfu_LMAN_PARENT_checkRecvChildName
	bl rfu_LMAN_CHILD_checkSendChildName
	bl rfu_LMAN_CHILD_linkRecoveryProcess
	bl rfu_LMAN_checkNICommunicateStatus
_08003FE2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003FE8: .4byte gUnk_03001D48
_08003FEC: .4byte gRfuLinkStatus

	thumb_func_start rfu_LMAN_settingPCSWITCH
rfu_LMAN_settingPCSWITCH: @ 0x08003FF0
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _08004014 @ =gUnk_03001D48
	ldrb r1, [r0, #7]
	adds r4, r0, #0
	cmp r1, #5
	bne _0800401A
	movs r2, #1
	strb r2, [r4, #6]
	strb r1, [r4, #4]
	ldrh r0, [r4, #0x1c]
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004018
	movs r0, #6
	strb r0, [r4, #7]
	b _0800401A
	.align 2, 0
_08004014: .4byte gUnk_03001D48
_08004018:
	strb r2, [r4, #7]
_0800401A:
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _08004044
	strb r0, [r4, #6]
	movs r0, #5
	strb r0, [r4, #4]
	adds r0, r3, #0
	movs r1, #0x8c
	bl __umodsi3
	strh r0, [r4, #0x1a]
	movs r1, #0x8c
	subs r1, r1, r0
	strh r1, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004040
	movs r0, #2
	b _08004042
_08004040:
	movs r0, #3
_08004042:
	strb r0, [r4, #7]
_08004044:
	ldrb r0, [r4, #7]
	cmp r0, #3
	bne _0800405A
	movs r0, #0
	strb r0, [r4, #6]
	movs r0, #0x28
	strh r0, [r4, #0x1a]
	movs r0, #4
	strb r0, [r4, #7]
	movs r0, #9
	strb r0, [r4, #4]
_0800405A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_REQ_callback
rfu_LMAN_REQ_callback: @ 0x08004060
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08004098 @ =gUnk_03001D48
	ldrb r1, [r0, #0xe]
	adds r7, r0, #0
	cmp r1, #0
	bne _0800407E
	b _08004544
_0800407E:
	movs r0, #0
	strb r0, [r7, #0xe]
	mov r0, r8
	subs r0, #0x10
	cmp r0, #0x2d
	bls _0800408C
	b _08004536
_0800408C:
	lsls r0, r0, #2
	ldr r1, _0800409C @ =_080040A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004098: .4byte gUnk_03001D48
_0800409C: .4byte _080040A0
_080040A0: @ jump table
	.4byte _08004158 @ case 0
	.4byte _08004536 @ case 1
	.4byte _08004536 @ case 2
	.4byte _08004536 @ case 3
	.4byte _08004536 @ case 4
	.4byte _08004536 @ case 5
	.4byte _08004184 @ case 6
	.4byte _08004170 @ case 7
	.4byte _08004536 @ case 8
	.4byte _08004198 @ case 9
	.4byte _080041A8 @ case 10
	.4byte _080041CC @ case 11
	.4byte _080041EC @ case 12
	.4byte _0800420C @ case 13
	.4byte _0800427C @ case 14
	.4byte _080042AE @ case 15
	.4byte _080042C4 @ case 16
	.4byte _0800430C @ case 17
	.4byte _08004536 @ case 18
	.4byte _08004536 @ case 19
	.4byte _08004536 @ case 20
	.4byte _08004536 @ case 21
	.4byte _08004536 @ case 22
	.4byte _08004484 @ case 23
	.4byte _08004536 @ case 24
	.4byte _08004536 @ case 25
	.4byte _08004536 @ case 26
	.4byte _08004536 @ case 27
	.4byte _08004536 @ case 28
	.4byte _08004536 @ case 29
	.4byte _08004536 @ case 30
	.4byte _08004536 @ case 31
	.4byte _08004536 @ case 32
	.4byte _08004536 @ case 33
	.4byte _0800437C @ case 34
	.4byte _080043C8 @ case 35
	.4byte _08004410 @ case 36
	.4byte _08004536 @ case 37
	.4byte _08004536 @ case 38
	.4byte _08004536 @ case 39
	.4byte _08004536 @ case 40
	.4byte _08004536 @ case 41
	.4byte _08004536 @ case 42
	.4byte _08004536 @ case 43
	.4byte _08004536 @ case 44
	.4byte _08004524 @ case 45
_08004158:
	cmp r6, #0
	beq _0800415E
	b _08004536
_0800415E:
	ldr r0, _0800416C @ =gUnk_03001D48
	ldrb r1, [r0, #5]
	strb r1, [r0, #4]
	movs r1, #4
	strb r1, [r0, #5]
	b _08004536
	.align 2, 0
_0800416C: .4byte gUnk_03001D48
_08004170:
	cmp r6, #0
	beq _08004176
	b _08004536
_08004176:
	ldr r0, _08004180 @ =gUnk_03001D48
	ldrb r1, [r0, #5]
	strb r1, [r0, #4]
	strb r6, [r0, #5]
	b _08004536
	.align 2, 0
_08004180: .4byte gUnk_03001D48
_08004184:
	cmp r6, #0
	beq _0800418A
	b _08004536
_0800418A:
	ldr r0, _08004194 @ =gUnk_03001D48
	strb r6, [r0, #5]
	strb r6, [r0, #4]
	movs r0, #0
	b _080044A2
	.align 2, 0
_08004194: .4byte gUnk_03001D48
_08004198:
	cmp r6, #0
	beq _0800419E
	b _08004536
_0800419E:
	ldr r1, _080041A4 @ =gUnk_03001D48
	movs r0, #6
	b _080042B8
	.align 2, 0
_080041A4: .4byte gUnk_03001D48
_080041A8:
	ldr r1, _080041C8 @ =gUnk_03001D48
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _080041B2
	b _08004536
_080041B2:
	subs r0, #1
	strh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080041BE
	b _08004536
_080041BE:
	movs r0, #7
	strb r0, [r1, #4]
	movs r0, #8
	strb r0, [r1, #5]
	b _08004536
	.align 2, 0
_080041C8: .4byte gUnk_03001D48
_080041CC:
	cmp r6, #0
	beq _080041D2
	b _08004536
_080041D2:
	ldr r0, _080041E8 @ =gUnk_03001D48
	ldrb r1, [r0, #5]
	strb r1, [r0, #4]
	strb r6, [r0, #5]
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080041E2
	b _08004536
_080041E2:
	movs r0, #0x13
	b _080044A2
	.align 2, 0
_080041E8: .4byte gUnk_03001D48
_080041EC:
	cmp r6, #0
	beq _080041F2
	b _08004536
_080041F2:
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	bne _08004202
	ldrh r0, [r7, #0x1a]
	cmp r0, #1
	bls _08004202
	subs r0, #1
	strh r0, [r7, #0x1a]
_08004202:
	ldr r1, _08004208 @ =gUnk_03001D48
	movs r0, #0xa
	b _080042B8
	.align 2, 0
_08004208: .4byte gUnk_03001D48
_0800420C:
	cmp r6, #0
	bne _08004252
	bl rfu_LMAN_CHILD_checkEnableParentCandidate
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	strb r0, [r1]
	ldr r4, _08004274 @ =gUnk_03001D48
	strh r0, [r4, #0x14]
	cmp r0, #0
	beq _0800422C
	movs r0, #0x20
	movs r1, #1
	bl rfu_LMAN_occureCallback
_0800422C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08004252
	ldrh r0, [r4, #0x1a]
	cmp r0, #1
	beq _08004252
	ldr r0, _08004278 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #4
	bne _08004252
	bl rfu_REQ_endSearchParent
	bl rfu_waitREQComplete
	movs r0, #9
	strb r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0xb]
_08004252:
	ldr r1, _08004274 @ =gUnk_03001D48
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _0800425C
	b _08004536
_0800425C:
	subs r0, #1
	strh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004268
	b _08004536
_08004268:
	movs r0, #0xb
	strb r0, [r1, #4]
	movs r0, #0
	strb r0, [r1, #5]
	b _08004536
	.align 2, 0
_08004274: .4byte gUnk_03001D48
_08004278: .4byte gRfuLinkStatus
_0800427C:
	cmp r6, #0
	beq _08004282
	b _08004536
_08004282:
	ldr r2, _0800429C @ =gUnk_03001D48
	ldrb r0, [r2, #5]
	strb r0, [r2, #4]
	ldrb r1, [r2, #7]
	cmp r1, #0
	bne _080042A0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08004296
	b _08004536
_08004296:
	movs r0, #0x21
	b _080044A2
	.align 2, 0
_0800429C: .4byte gUnk_03001D48
_080042A0:
	cmp r1, #7
	bne _080042A6
	b _08004536
_080042A6:
	movs r0, #5
	strb r0, [r2, #4]
	strb r0, [r2, #7]
	b _08004536
_080042AE:
	cmp r6, #0
	beq _080042B4
	b _08004536
_080042B4:
	ldr r1, _080042C0 @ =gUnk_03001D48
	movs r0, #0xd
_080042B8:
	strb r0, [r1, #5]
	strb r0, [r1, #4]
	b _08004536
	.align 2, 0
_080042C0: .4byte gUnk_03001D48
_080042C4:
	cmp r6, #0
	bne _080042E8
	ldr r4, _08004304 @ =gUnk_03001D58
	mov r0, sp
	adds r1, r4, #0
	bl rfu_getConnectParentStatus
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080042E8
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _080042E8
	adds r1, r4, #0
	subs r1, #0x10
	movs r0, #0xe
	strb r0, [r1, #4]
_080042E8:
	ldr r1, _08004308 @ =gUnk_03001D48
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _080042F2
	b _08004536
_080042F2:
	subs r0, #1
	strh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080042FE
	b _08004536
_080042FE:
	movs r0, #0xe
	strb r0, [r1, #4]
	b _08004536
	.align 2, 0
_08004304: .4byte gUnk_03001D58
_08004308: .4byte gUnk_03001D48
_0800430C:
	cmp r6, #0
	beq _08004312
	b _08004536
_08004312:
	ldr r4, _08004344 @ =gUnk_03001D58
	mov r0, sp
	adds r1, r4, #0
	bl rfu_getConnectParentStatus
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004324
	b _08004536
_08004324:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004348
	adds r1, r4, #0
	subs r1, #0x10
	movs r0, #0x13
	strb r0, [r1, #4]
	movs r0, #0xf
	strb r0, [r1, #5]
	movs r0, #0x22
	strh r0, [r1, #0x1e]
	ldrb r0, [r1, #0x10]
	strh r0, [r1, #0x14]
	b _08004368
	.align 2, 0
_08004344: .4byte gUnk_03001D58
_08004348:
	adds r1, r4, #0
	subs r1, #0x10
	strb r6, [r1, #5]
	strb r6, [r1, #4]
	movs r0, #0x23
	strh r0, [r1, #0x1e]
	mov r0, sp
	ldrb r0, [r0]
	strh r0, [r1, #0x14]
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _08004368
	movs r0, #3
	strb r0, [r1, #7]
	movs r0, #9
	strb r0, [r1, #4]
_08004368:
	ldr r4, _08004378 @ =gUnk_03001D48
	ldrb r0, [r4, #0x1e]
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #0
	strh r0, [r4, #0x1e]
	b _08004536
	.align 2, 0
_08004378: .4byte gUnk_03001D48
_0800437C:
	cmp r6, #0
	beq _08004382
	b _08004536
_08004382:
	ldr r2, _080043C4 @ =gRfuLinkStatus
	ldr r3, [r2]
	ldrb r0, [r3, #3]
	movs r1, #0
	strh r0, [r7, #0x14]
	movs r0, #0x11
	strb r0, [r7, #5]
	strb r0, [r7, #4]
	strb r1, [r7, #0x10]
	ldrb r0, [r3, #3]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080043A0
	b _08004536
_080043A0:
	adds r1, r7, #0
	movs r3, #1
_080043A4:
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080043B4
	b _08004536
_080043B4:
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	ldrb r4, [r7, #0x10]
	asrs r0, r4
	ands r0, r3
	cmp r0, #0
	beq _080043A4
	b _08004536
	.align 2, 0
_080043C4: .4byte gRfuLinkStatus
_080043C8:
	cmp r6, #0
	bne _080043E6
	mov r0, sp
	bl rfu_CHILD_getConnectRecoveryStatus
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080043E6
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080043E6
	ldr r1, _0800440C @ =gUnk_03001D48
	movs r0, #0x12
	strb r0, [r1, #4]
_080043E6:
	ldr r2, _0800440C @ =gUnk_03001D48
	ldrb r0, [r2, #0x10]
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #0x34
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne _080043FA
	b _08004536
_080043FA:
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004406
	b _08004536
_08004406:
	movs r0, #0x12
	strb r0, [r2, #4]
	b _08004536
	.align 2, 0
_0800440C: .4byte gUnk_03001D48
_08004410:
	cmp r6, #0
	beq _08004416
	b _08004536
_08004416:
	mov r0, sp
	bl rfu_CHILD_getConnectRecoveryStatus
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004424
	b _08004536
_08004424:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004440
	ldr r1, _0800443C @ =gUnk_03001D48
	movs r0, #0x13
	strb r0, [r1, #4]
	movs r0, #0x16
	strb r0, [r1, #5]
	movs r0, #0x32
	strh r0, [r1, #0x1e]
	b _08004454
	.align 2, 0
_0800443C: .4byte gUnk_03001D48
_08004440:
	ldr r4, _0800447C @ =gUnk_03001D48
	strb r6, [r4, #5]
	strb r6, [r4, #4]
	ldr r0, _08004480 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	bl rfu_LMAN_disconnect
	movs r0, #0x33
	strh r0, [r4, #0x1e]
_08004454:
	ldr r5, _0800447C @ =gUnk_03001D48
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x34
	adds r0, r0, r1
	movs r1, #0
	movs r4, #0
	strh r4, [r0]
	adds r0, r5, #0
	adds r0, #0x30
	strb r1, [r0]
	strb r1, [r5, #0xa]
	ldrb r0, [r5, #0x1e]
	movs r1, #1
	bl rfu_LMAN_occureCallback
	strh r4, [r5, #0x1e]
	b _08004536
	.align 2, 0
_0800447C: .4byte gUnk_03001D48
_08004480: .4byte gRfuLinkStatus
_08004484:
	cmp r6, #0
	bne _08004536
	ldr r5, _080044AC @ =gUnk_03001D48
	ldrb r1, [r5, #5]
	adds r0, r1, #0
	cmp r0, #0x16
	bne _080044B0
	ldrb r0, [r5, #0x11]
	strb r0, [r5, #4]
	ldrb r0, [r5, #0x12]
	strb r0, [r5, #5]
	ldrb r0, [r5, #2]
	movs r0, #1
	strb r0, [r5, #2]
	movs r0, #0x41
_080044A2:
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _08004536
	.align 2, 0
_080044AC: .4byte gUnk_03001D48
_080044B0:
	cmp r0, #0xf
	bne _08004536
	strb r1, [r5, #4]
	ldrb r0, [r5, #2]
	movs r4, #1
	strb r4, [r5, #2]
	movs r0, #0x41
	movs r1, #0
	bl rfu_LMAN_occureCallback
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r0, [r5, #0x10]
	lsls r4, r0
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #1
	adds r1, #4
	adds r0, r0, r1
	ldrh r1, [r5, #0x26]
	movs r7, #0
	strh r1, [r0]
	ldrb r1, [r5, #0x10]
	movs r0, #4
	bl rfu_clearSlot
	mov r4, sp
	ldrb r0, [r5, #0x10]
	movs r1, #0xe
	bl rfu_NI_CHILD_setSendGameName
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08004536
	strb r7, [r5, #5]
	strb r7, [r5, #4]
	bl rfu_LMAN_managerChangeAgbClockMaster
	ldr r0, _08004520 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	orrs r0, r1
	bl rfu_LMAN_disconnect
	mov r0, sp
	ldrb r0, [r0]
	strh r0, [r5, #0x14]
	movs r0, #0x25
	movs r1, #1
	bl rfu_LMAN_occureCallback
	b _08004536
	.align 2, 0
_08004520: .4byte gRfuLinkStatus
_08004524:
	cmp r6, #0
	bne _08004536
	ldr r0, _08004540 @ =gUnk_03001D48
	strb r6, [r0, #5]
	strb r6, [r0, #4]
	movs r0, #0x42
	movs r1, #0
	bl rfu_LMAN_occureCallback
_08004536:
	ldr r1, _08004540 @ =gUnk_03001D48
	movs r0, #1
	strb r0, [r1, #0xe]
	b _08004592
	.align 2, 0
_08004540: .4byte gUnk_03001D48
_08004544:
	cmp r6, #3
	bne _08004592
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _08004592
	mov r3, r8
	cmp r3, #0x24
	beq _0800455C
	cmp r3, #0x26
	beq _0800455C
	cmp r3, #0x27
	bne _08004592
_0800455C:
	bl rfu_REQ_RFUStatus
	bl rfu_waitREQComplete
	mov r0, sp
	bl rfu_getRFUStatus
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004592
	ldr r4, _080045A8 @ =gRfuLinkStatus
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004592
	bl rfu_getSTWIRecvBuffer
	ldr r1, [r4]
	ldrb r1, [r1, #2]
	strb r1, [r0, #4]
	movs r1, #1
	strb r1, [r0, #5]
	movs r0, #0x29
	bl rfu_LMAN_linkWatcher
	movs r6, #0
_08004592:
	mov r4, r8
	cmp r4, #0x26
	bne _0800459A
	b _080046AE
_0800459A:
	cmp r4, #0x26
	bgt _080045AC
	cmp r4, #0x10
	bne _080045A4
	b _080046CC
_080045A4:
	b _080046EA
	.align 2, 0
_080045A8: .4byte gRfuLinkStatus
_080045AC:
	mov r0, r8
	cmp r0, #0x30
	beq _080045BA
	cmp r0, #0x3d
	bne _080045B8
	b _080046CC
_080045B8:
	b _080046EA
_080045BA:
	cmp r6, #0
	beq _080045C0
	b _080046EE
_080045C0:
	bl rfu_getSTWIRecvBuffer
	ldr r4, _08004670 @ =gUnk_03001D48
	ldrb r0, [r0, #8]
	strh r0, [r4, #0x14]
	bl rfu_LMAN_reflectCommunicationStatus
	adds r2, r4, #0
	adds r2, #0x30
	ldrb r1, [r2]
	cmp r1, #0
	beq _08004616
	ldrb r0, [r4, #0x14]
	adds r3, r1, #0
	bics r3, r0
	adds r0, r3, #0
	strb r0, [r2]
	movs r3, #0
	adds r7, r4, #0
	adds r1, r7, #0
	movs r5, #1
	adds r4, r1, #0
	adds r4, #0x34
	movs r2, #0
_080045F0:
	ldrh r0, [r1, #0x14]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	beq _08004600
	lsls r0, r3, #1
	adds r0, r0, r4
	strh r2, [r0]
_08004600:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080045F0
	ldr r1, _08004670 @ =gUnk_03001D48
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08004616
	strb r0, [r1, #5]
	strb r0, [r1, #4]
_08004616:
	mov r3, sp
	ldr r1, _08004670 @ =gUnk_03001D48
	ldrb r2, [r1]
	ldrb r0, [r1, #0x14]
	ands r0, r2
	strb r0, [r3]
	movs r3, #0
	adds r7, r1, #0
	ldr r2, _08004674 @ =gRfuLinkStatus
	mov r1, sp
	movs r5, #1
	adds r4, r7, #0
_0800462E:
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	beq _08004642
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08004642
	subs r0, #1
	strb r0, [r7, #1]
_08004642:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800462E
	ldrb r1, [r7, #0x14]
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
	ldrb r1, [r7, #7]
	cmp r1, #0
	beq _0800468C
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0800469E
	cmp r1, #8
	bne _08004678
	ldrh r0, [r7, #0x1c]
	strh r0, [r7, #0x1a]
	movs r0, #6
	strb r0, [r7, #7]
	b _0800468A
	.align 2, 0
_08004670: .4byte gUnk_03001D48
_08004674: .4byte gRfuLinkStatus
_08004678:
	ldrb r0, [r7, #4]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800468C
	movs r0, #1
	strb r0, [r7, #7]
	movs r0, #5
_0800468A:
	strb r0, [r7, #4]
_0800468C:
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0800469E
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _0800469E
	movs r0, #0xff
	strb r0, [r7, #6]
_0800469E:
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	bne _080046EA
	movs r0, #0x40
	movs r1, #1
	bl rfu_LMAN_occureCallback
	b _080046EA
_080046AE:
	bl rfu_LMAN_CHILD_checkSendChildName2
	ldr r0, _080046C8 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080046EA
	movs r0, #0x50
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _080046EA
	.align 2, 0
_080046C8: .4byte gRfuLinkStatus
_080046CC:
	cmp r6, #0
	bne _080046EE
	ldr r0, _08004718 @ =gUnk_03001D48
	strb r6, [r0, #0xd]
	strb r6, [r0, #1]
	strb r6, [r0]
	movs r1, #0xff
	strb r1, [r0, #6]
	bl rfu_LMAN_managerChangeAgbClockMaster
	mov r4, r8
	cmp r4, #0x3d
	bne _080046EA
	bl rfu_LMAN_endManager
_080046EA:
	cmp r6, #0
	beq _0800473E
_080046EE:
	ldr r7, _08004718 @ =gUnk_03001D48
	mov r0, r8
	cmp r0, #0x1c
	bne _08004720
	cmp r6, #0
	beq _08004720
	ldrb r0, [r7, #7]
	cmp r0, #4
	bne _08004720
	ldr r2, _0800471C @ =gRfuLinkStatus
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	movs r0, #0xf
	strb r0, [r1, #2]
	bl rfu_LMAN_disconnect
	bl rfu_waitREQComplete
	b _08004750
	.align 2, 0
_08004718: .4byte gUnk_03001D48
_0800471C: .4byte gRfuLinkStatus
_08004720:
	movs r1, #0
	mov r3, r8
	strh r3, [r7, #0x14]
	strh r6, [r7, #0x16]
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _08004732
	strb r1, [r7, #5]
	strb r1, [r7, #4]
_08004732:
	movs r0, #0xf0
	movs r1, #2
	bl rfu_LMAN_occureCallback
	bl rfu_LMAN_managerChangeAgbClockMaster
_0800473E:
	mov r4, r8
	cmp r4, #0xff
	bne _08004750
	movs r0, #0xf2
	movs r1, #0
	bl rfu_LMAN_occureCallback
	bl rfu_LMAN_managerChangeAgbClockMaster
_08004750:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_MSC_callback
rfu_LMAN_MSC_callback: @ 0x0800475C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, _08004790 @ =gUnk_03001D48
	ldrb r7, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldr r0, _08004794 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r5, [r0]
	cmp r5, #0
	bne _08004798
	adds r0, r6, #0
	bl rfu_LMAN_linkWatcher
	ldrb r0, [r4, #2]
	cmp r0, #1
	beq _080047B0
	bl rfu_LMAN_managerChangeAgbClockMaster
	strb r5, [r4, #0xf]
	strb r7, [r4, #0xe]
	b _080047D4
	.align 2, 0
_08004790: .4byte gUnk_03001D48
_08004794: .4byte gRfuLinkStatus
_08004798:
	mov r0, sp
	bl rfu_UNI_PARENT_getDRAC_ACK
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080047B0
	mov r1, sp
	ldrb r0, [r4, #3]
	ldrb r1, [r1]
	orrs r0, r1
	ldrb r1, [r4, #3]
	strb r0, [r4, #3]
_080047B0:
	ldr r4, _080047DC @ =gUnk_03001D48
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _080047CC
	adds r0, r6, #0
	bl _call_via_r1
	bl rfu_waitREQComplete
	ldrb r0, [r4, #2]
	cmp r0, #2
	bne _080047CC
	bl rfu_LMAN_managerChangeAgbClockMaster
_080047CC:
	ldr r1, _080047DC @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r1, #0xf]
	strb r7, [r1, #0xe]
_080047D4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080047DC: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_PARENT_checkRecvChildName
rfu_LMAN_PARENT_checkRecvChildName: @ 0x080047E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08004864 @ =gUnk_03001D48
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r1, #0
	cmp r0, #3
	bls _080047FE
	b _080049F2
_080047FE:
	ldr r0, _08004868 @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	ldrb r0, [r3, #0xc]
	adds r4, r1, #0
	eors r4, r0
	ands r4, r1
	ldrb r0, [r2, #7]
	bics r4, r0
	mov r8, r4
	strb r1, [r3, #0xc]
	cmp r4, #0
	beq _08004826
	strh r4, [r3, #0x14]
	movs r0, #0x10
	movs r1, #1
	str r3, [sp, #4]
	bl rfu_LMAN_occureCallback
	ldr r3, [sp, #4]
_08004826:
	movs r0, #0
	str r0, [sp]
	movs r6, #0
	adds r7, r3, #0
	movs r1, #0x24
	adds r1, r1, r3
	mov sb, r1
_08004834:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r6
	lsrs r4, r0, #0x18
	movs r5, #0
	mov r0, r8
	ands r0, r4
	cmp r0, #0
	beq _08004886
	lsls r1, r6, #1
	adds r0, r7, #0
	adds r0, #0x28
	adds r1, r1, r0
	ldrh r0, [r7, #0x26]
	strh r0, [r1]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strb r0, [r2]
	adds r6, #1
	mov sl, r6
	b _0800493C
	.align 2, 0
_08004864: .4byte gUnk_03001D48
_08004868: .4byte gRfuLinkStatus
_0800486C:
	ldrb r1, [r7]
	adds r0, r4, #0
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldr r0, [sp]
	orrs r0, r4
	str r0, [sp]
	movs r0, #1
	orrs r5, r0
	b _080048D0
_08004886:
	mov r1, sb
	ldrb r0, [r1]
	ands r0, r4
	adds r2, r6, #1
	mov sl, r2
	cmp r0, #0
	beq _0800493C
	ldr r0, _080048E0 @ =gRfuSlotStatusNI
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r0, [r1, #0x34]
	cmp r0, #0x46
	bne _080048EC
	adds r0, r1, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #1
	bne _08004904
	movs r5, #2
	ldr r3, [r3, #0x20]
	ldrh r2, [r3]
	ldr r0, _080048E4 @ =0x0000FFFF
	cmp r2, r0
	beq _080048D0
	ldr r0, _080048E8 @ =gRfuLinkStatus
	ldr r0, [r0]
	lsls r1, r6, #5
	adds r0, r0, r1
	ldrh r0, [r0, #0x18]
	ldr r1, _080048E4 @ =0x0000FFFF
_080048C4:
	cmp r0, r2
	beq _0800486C
	adds r3, #2
	ldrh r2, [r3]
	cmp r2, r1
	bne _080048C4
_080048D0:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _08004904
	movs r0, #4
	orrs r5, r0
	b _08004904
	.align 2, 0
_080048E0: .4byte gRfuSlotStatusNI
_080048E4: .4byte 0x0000FFFF
_080048E8: .4byte gRfuLinkStatus
_080048EC:
	lsls r1, r6, #1
	adds r0, r3, #0
	adds r0, #0x28
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r1, _080049C0 @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _08004904
	movs r5, #6
_08004904:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0800492A
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r4
	movs r2, #0
	mov r1, sb
	strb r0, [r1]
	lsls r0, r6, #1
	adds r1, r7, #0
	adds r1, #0x28
	adds r0, r0, r1
	strh r2, [r0]
	movs r0, #8
	adds r1, r6, #0
	bl rfu_clearSlot
_0800492A:
	movs r0, #4
	ands r5, r0
	ldr r3, _080049C4 @ =gUnk_03001D48
	cmp r5, #0
	beq _0800493C
	ldrb r1, [r7, #0xd]
	adds r0, r4, #0
	orrs r0, r1
	strb r0, [r7, #0xd]
_0800493C:
	mov r2, sl
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08004948
	b _08004834
_08004948:
	ldr r4, [sp]
	cmp r4, #0
	beq _0800495A
	ldr r0, _080049C4 @ =gUnk_03001D48
	strh r4, [r0, #0x14]
	movs r0, #0x11
	movs r1, #1
	bl rfu_LMAN_occureCallback
_0800495A:
	ldr r1, _080049C4 @ =gUnk_03001D48
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _08004996
	movs r5, #1
	ldr r0, _080049C8 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0800497A
	ldrb r0, [r1, #3]
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, r1
	beq _0800497A
	movs r5, #0
_0800497A:
	cmp r5, #0
	beq _08004996
	ldr r4, _080049C4 @ =gUnk_03001D48
	ldrb r0, [r4, #0xd]
	bl rfu_LMAN_disconnect
	ldrb r0, [r4, #0xd]
	movs r1, #0
	strh r0, [r4, #0x14]
	strb r1, [r4, #0xd]
	movs r0, #0x12
	movs r1, #1
	bl rfu_LMAN_occureCallback
_08004996:
	ldr r0, _080049C4 @ =gUnk_03001D48
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bne _080049F2
	ldrb r0, [r3, #4]
	cmp r0, #8
	bne _080049F2
	ldrb r0, [r3, #7]
	cmp r0, #0
	bne _080049CC
	strb r0, [r3, #5]
	strb r0, [r3, #4]
	movs r0, #0x14
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _080049F2
	.align 2, 0
_080049C0: .4byte 0x0000FFFF
_080049C4: .4byte gUnk_03001D48
_080049C8: .4byte gRfuLinkStatus
_080049CC:
	cmp r0, #2
	bne _080049D8
	movs r0, #3
	strb r0, [r3, #7]
	movs r0, #9
	b _080049DE
_080049D8:
	movs r0, #1
	strb r0, [r3, #7]
	movs r0, #5
_080049DE:
	strb r0, [r3, #4]
	ldrb r0, [r3]
	cmp r0, #0
	beq _080049F2
	movs r0, #0
	strh r0, [r3, #0x1a]
	movs r0, #8
	strb r0, [r3, #7]
	movs r0, #5
	strb r0, [r3, #4]
_080049F2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_LMAN_CHILD_checkSendChildName
rfu_LMAN_CHILD_checkSendChildName: @ 0x08004A04
	push {r4, r5, r6, lr}
	ldr r1, _08004AA8 @ =0x04000208
	ldrh r0, [r1]
	adds r6, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08004AAC @ =gUnk_03001D48
	ldrb r0, [r4, #4]
	cmp r0, #0xf
	bne _08004A68
	ldrb r1, [r4, #0x10]
	lsls r1, r1, #1
	adds r5, r4, #0
	adds r5, #0x28
	adds r1, r1, r5
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004A3E
	ldr r1, _08004AB0 @ =gRfuSlotStatusNI
	ldrb r0, [r4, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0x27
	bne _08004A68
_08004A3E:
	bl rfu_LMAN_requestChangeAgbClockMaster
	movs r0, #0x18
	strb r0, [r4, #4]
	ldrb r1, [r4, #0x10]
	movs r0, #4
	bl rfu_clearSlot
	adds r2, r4, #0
	adds r2, #0x24
	movs r1, #1
	ldrb r0, [r4, #0x10]
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x10]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0]
_08004A68:
	ldr r0, _08004AA8 @ =0x04000208
	strh r6, [r0]
	ldr r5, _08004AAC @ =gUnk_03001D48
	ldrb r0, [r5, #4]
	cmp r0, #0x18
	bne _08004AA2
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _08004A7E
	bl rfu_LMAN_requestChangeAgbClockMaster
_08004A7E:
	ldrb r0, [r5, #2]
	adds r4, r0, #0
	cmp r4, #0
	bne _08004AA2
	strb r4, [r5, #5]
	strb r4, [r5, #4]
	ldr r0, _08004AB4 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	orrs r0, r1
	bl rfu_LMAN_disconnect
	strh r4, [r5, #0x14]
	movs r0, #0x25
	movs r1, #1
	bl rfu_LMAN_occureCallback
_08004AA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004AA8: .4byte 0x04000208
_08004AAC: .4byte gUnk_03001D48
_08004AB0: .4byte gRfuSlotStatusNI
_08004AB4: .4byte gRfuLinkStatus

	thumb_func_start rfu_LMAN_CHILD_checkSendChildName2
rfu_LMAN_CHILD_checkSendChildName2: @ 0x08004AB8
	push {r4, r5, lr}
	ldr r5, _08004B0C @ =gUnk_03001D48
	ldrb r0, [r5, #4]
	cmp r0, #0xf
	bne _08004B04
	ldr r1, _08004B10 @ =gRfuSlotStatusNI
	ldrb r2, [r5, #0x10]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0x26
	bne _08004B04
	movs r4, #0
	strb r4, [r5, #5]
	strb r4, [r5, #4]
	movs r0, #4
	adds r1, r2, #0
	bl rfu_clearSlot
	adds r2, r5, #0
	adds r2, #0x24
	movs r1, #1
	ldrb r0, [r5, #0x10]
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x28
	adds r0, r0, r1
	strh r4, [r0]
	movs r0, #0x24
	movs r1, #0
	bl rfu_LMAN_occureCallback
_08004B04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004B0C: .4byte gUnk_03001D48
_08004B10: .4byte gRfuSlotStatusNI

	thumb_func_start rfu_LMAN_CHILD_linkRecoveryProcess
rfu_LMAN_CHILD_linkRecoveryProcess: @ 0x08004B14
	push {lr}
	ldr r1, _08004B3C @ =gUnk_03001D48
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08004B38
	ldrb r0, [r1, #0xa]
	cmp r0, #1
	bne _08004B38
	ldrb r0, [r1, #4]
	strb r0, [r1, #0x11]
	ldrb r0, [r1, #5]
	strb r0, [r1, #0x12]
	movs r0, #0x10
	strb r0, [r1, #4]
	movs r0, #0x11
	strb r0, [r1, #5]
	movs r0, #2
	strb r0, [r1, #0xa]
_08004B38:
	pop {r0}
	bx r0
	.align 2, 0
_08004B3C: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_CHILD_checkEnableParentCandidate
rfu_LMAN_CHILD_checkEnableParentCandidate: @ 0x08004B40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	movs r5, #0
	ldr r1, _08004BAC @ =gRfuLinkStatus
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	cmp r6, r0
	bhs _08004B9C
	mov r8, r0
	ldr r0, _08004BB0 @ =gUnk_03001D48
	mov sl, r0
	mov sb, r1
_08004B60:
	mov r1, sl
	ldr r3, [r1, #0x20]
	ldrh r2, [r3]
	adds r0, r5, #1
	mov ip, r0
	ldr r1, _08004BB4 @ =0x0000FFFF
	cmp r2, r1
	beq _08004B92
	mov r1, sb
	ldr r0, [r1]
	lsls r1, r5, #5
	adds r0, r0, r1
	ldrh r4, [r0, #0x18]
	ldr r7, _08004BB4 @ =0x0000FFFF
	movs r1, #1
	lsls r1, r5
_08004B80:
	cmp r4, r2
	bne _08004B8A
	orrs r6, r1
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
_08004B8A:
	adds r3, #2
	ldrh r2, [r3]
	cmp r2, r7
	bne _08004B80
_08004B92:
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _08004B60
_08004B9C:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004BAC: .4byte gRfuLinkStatus
_08004BB0: .4byte gUnk_03001D48
_08004BB4: .4byte 0x0000FFFF

	thumb_func_start rfu_LMAN_occureCallback
rfu_LMAN_occureCallback: @ 0x08004BB8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, _08004BDC @ =gUnk_03001D48
	ldr r2, [r4, #0x40]
	cmp r2, #0
	beq _08004BCE
	bl _call_via_r2
_08004BCE:
	movs r0, #0
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004BDC: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_disconnect
rfu_LMAN_disconnect: @ 0x08004BE0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08004C00 @ =gUnk_03001D48
	ldrb r5, [r4, #0xe]
	movs r1, #1
	strb r1, [r4, #0xe]
	bl rfu_REQ_disconnect
	bl rfu_waitREQComplete
	strb r5, [r4, #0xe]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004C00: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_reflectCommunicationStatus
rfu_LMAN_reflectCommunicationStatus: @ 0x08004C04
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08004CD0 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08004C4C
	movs r4, #0
_08004C16:
	ldr r1, _08004CD4 @ =gRfuSlotStatusNI
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08004C42
	ldrb r1, [r2, #0x1a]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08004C42
	adds r2, r1, #0
	bics r2, r5
	movs r0, #0x20
	adds r1, r4, #0
	bl rfu_changeSendTarget
_08004C42:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08004C16
_08004C4C:
	ldr r0, _08004CD0 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08004C8A
	movs r4, #0
_08004C58:
	ldr r1, _08004CD4 @ =gRfuSlotStatusNI
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2, #0x34]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08004C80
	adds r0, r2, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _08004C80
	adds r0, r4, #0
	bl rfu_NI_stopReceivingData
_08004C80:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08004C58
_08004C8A:
	ldr r0, _08004CD0 @ =gRfuLinkStatus
	ldr r3, [r0]
	ldrb r2, [r3, #6]
	cmp r2, #0
	beq _08004CC8
	mvns r1, r5
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #6]
	movs r4, #0
	ldr r7, _08004CD8 @ =gRfuSlotStatusUNI
	ldr r6, _08004CDC @ =0x00008024
_08004CA2:
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, r6
	bne _08004CBE
	ldrb r3, [r2, #3]
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _08004CBE
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #3]
_08004CBE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08004CA2
_08004CC8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004CD0: .4byte gRfuLinkStatus
_08004CD4: .4byte gRfuSlotStatusNI
_08004CD8: .4byte gRfuSlotStatusUNI
_08004CDC: .4byte 0x00008024

	thumb_func_start rfu_LMAN_checkNICommunicateStatus
rfu_LMAN_checkNICommunicateStatus: @ 0x08004CE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08004DCC @ =gUnk_03001D48
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _08004DBC
	ldr r0, _08004DD0 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08004D80
	movs r6, #0
_08004D00:
	ldr r3, _08004DD4 @ =gRfuSlotStatusNI
	lsls r2, r6, #2
	adds r0, r2, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r1, r0
	adds r7, r2, #0
	adds r0, r6, #1
	mov sb, r0
	cmp r1, #0
	beq _08004D76
	movs r5, #0
	movs r4, #0
	movs r1, #1
	mov r8, r1
	mov sl, r3
_08004D26:
	adds r0, r7, r3
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	asrs r0, r4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08004D50
	lsls r0, r4, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _08004DCC @ =gUnk_03001D48
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	bls _08004D50
	mov r0, r8
	lsls r0, r4
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_08004D50:
	cmp r5, #0
	beq _08004D6C
	mov r1, sl
	adds r0, r7, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	adds r2, r5, #0
	eors r2, r0
	movs r0, #0x20
	adds r1, r6, #0
	str r3, [sp]
	bl rfu_changeSendTarget
	ldr r3, [sp]
_08004D6C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08004D26
_08004D76:
	mov r3, sb
	lsls r0, r3, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08004D00
_08004D80:
	ldr r0, _08004DD0 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08004DBC
	movs r6, #0
_08004D8C:
	ldr r1, _08004DD4 @ =gRfuSlotStatusNI
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2, #0x34]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08004DB2
	ldr r1, _08004DCC @ =gUnk_03001D48
	ldrh r0, [r2, #0x36]
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	bls _08004DB2
	adds r0, r6, #0
	bl rfu_NI_stopReceivingData
_08004DB2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08004D8C
_08004DBC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004DCC: .4byte gUnk_03001D48
_08004DD0: .4byte gRfuLinkStatus
_08004DD4: .4byte gRfuSlotStatusNI

	thumb_func_start rfu_LMAN_setMSCCallback
rfu_LMAN_setMSCCallback: @ 0x08004DD8
	push {lr}
	ldr r1, _08004DE8 @ =gUnk_03001D48
	str r0, [r1, #0x44]
	ldr r0, _08004DEC @ =rfu_LMAN_MSC_callback
	bl rfu_setMSCCallback
	pop {r0}
	bx r0
	.align 2, 0
_08004DE8: .4byte gUnk_03001D48
_08004DEC: .4byte rfu_LMAN_MSC_callback

	thumb_func_start rfu_LMAN_setLMANCallback
rfu_LMAN_setLMANCallback: @ 0x08004DF0
	ldr r1, _08004DF8 @ =gUnk_03001D48
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0
_08004DF8: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_setLinkRecovery
rfu_LMAN_setLinkRecovery: @ 0x08004DFC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _08004E20 @ =gUnk_03001D48
	ldrb r1, [r0, #9]
	adds r3, r0, #0
	cmp r1, #0
	beq _08004E24
	cmp r4, #0
	bne _08004E24
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08004E24
	movs r0, #5
	b _08004E34
	.align 2, 0
_08004E20: .4byte gUnk_03001D48
_08004E24:
	ldr r2, _08004E3C @ =0x04000208
	ldrh r1, [r2]
	movs r0, #0
	strh r0, [r2]
	strb r4, [r3, #9]
	strh r5, [r3, #0x32]
	strh r1, [r2]
	movs r0, #0
_08004E34:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08004E3C: .4byte 0x04000208

	thumb_func_start rfu_LMAN_setNIFailCounterLimit
rfu_LMAN_setNIFailCounterLimit: @ 0x08004E40
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08004E5C @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	orrs r0, r1
	cmp r0, #0
	bne _08004E64
	ldr r0, _08004E60 @ =gUnk_03001D48
	strh r2, [r0, #0x18]
	movs r0, #0
	b _08004E74
	.align 2, 0
_08004E5C: .4byte gRfuLinkStatus
_08004E60: .4byte gUnk_03001D48
_08004E64:
	ldr r1, _08004E78 @ =gUnk_03001D48
	movs r0, #6
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #6
_08004E74:
	pop {r1}
	bx r1
	.align 2, 0
_08004E78: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_setFastSearchParent
rfu_LMAN_setFastSearchParent: @ 0x08004E7C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	ldr r1, _08004EA4 @ =gUnk_03001D48
	ldrb r0, [r1, #4]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08004EA8
	movs r0, #7
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #7
	b _08004EB6
	.align 2, 0
_08004EA4: .4byte gUnk_03001D48
_08004EA8:
	cmp r2, #0
	beq _08004EB2
	movs r0, #1
	strb r0, [r1, #0xb]
	b _08004EB4
_08004EB2:
	strb r3, [r1, #0xb]
_08004EB4:
	movs r0, #0
_08004EB6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_LMAN_managerChangeAgbClockMaster
rfu_LMAN_managerChangeAgbClockMaster: @ 0x08004EBC
	push {lr}
	ldr r1, _08004ED8 @ =gUnk_03001D48
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08004ED4
	ldrb r0, [r1, #2]
	movs r0, #0
	strb r0, [r1, #2]
	movs r0, #0x45
	movs r1, #0
	bl rfu_LMAN_occureCallback
_08004ED4:
	pop {r0}
	bx r0
	.align 2, 0
_08004ED8: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_requestChangeAgbClockMaster
rfu_LMAN_requestChangeAgbClockMaster: @ 0x08004EDC
	push {lr}
	ldr r1, _08004EF0 @ =gUnk_03001D48
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08004EF4
	movs r0, #0x45
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _08004F00
	.align 2, 0
_08004EF0: .4byte gUnk_03001D48
_08004EF4:
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08004F00
	ldrb r0, [r1, #2]
	movs r0, #2
	strb r0, [r1, #2]
_08004F00:
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_forceChangeSP
rfu_LMAN_forceChangeSP: @ 0x08004F04
	push {lr}
	ldr r0, _08004F24 @ =gUnk_03001D48
	ldrb r1, [r0, #7]
	adds r2, r0, #0
	cmp r1, #0
	beq _08004F6E
	ldrb r0, [r2, #4]
	subs r0, #5
	cmp r0, #6
	bhi _08004F6E
	lsls r0, r0, #2
	ldr r1, _08004F28 @ =_08004F2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004F24: .4byte gUnk_03001D48
_08004F28: .4byte _08004F2C
_08004F2C: @ jump table
	.4byte _08004F48 @ case 0
	.4byte _08004F50 @ case 1
	.4byte _08004F5A @ case 2
	.4byte _08004F5A @ case 3
	.4byte _08004F60 @ case 4
	.4byte _08004F60 @ case 5
	.4byte _08004F66 @ case 6
_08004F48:
	movs r0, #3
	strb r0, [r2, #7]
	movs r0, #9
	b _08004F6C
_08004F50:
	movs r0, #2
	strb r0, [r2, #7]
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _08004F6E
_08004F5A:
	movs r0, #2
	strb r0, [r2, #7]
	b _08004F6E
_08004F60:
	movs r0, #0x28
	strh r0, [r2, #0x1a]
	b _08004F6E
_08004F66:
	movs r0, #0x28
	strh r0, [r2, #0x1a]
	movs r0, #0xa
_08004F6C:
	strb r0, [r2, #4]
_08004F6E:
	pop {r0}
	bx r0
	.align 2, 0

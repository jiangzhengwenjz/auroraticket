	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start rfu_initializeAPI
rfu_initializeAPI: @ 0x08008C2C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	movs r0, #0xf0
	lsls r0, r0, #0x14
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne _08008C50
	cmp r7, #0
	bne _08008C58
_08008C50:
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08008C5C
_08008C58:
	movs r0, #2
	b _08008D52
_08008C5C:
	cmp r7, #0
	beq _08008C68
	ldr r3, _08008C64 @ =0x00000E8C
	b _08008C6A
	.align 2, 0
_08008C64: .4byte 0x00000E8C
_08008C68:
	ldr r3, _08008C74 @ =0x0000052C
_08008C6A:
	cmp r2, r3
	bhs _08008C78
	movs r0, #1
	b _08008D52
	.align 2, 0
_08008C74: .4byte 0x0000052C
_08008C78:
	ldr r0, _08008D5C @ =gRfuLinkStatus
	str r4, [r0]
	ldr r1, _08008D60 @ =gRfuStatic
	adds r0, r4, #0
	adds r0, #0xb4
	str r0, [r1]
	ldr r1, _08008D64 @ =gRfuFixed
	adds r0, #0x18
	str r0, [r1]
	ldr r2, _08008D68 @ =gRfuSlotStatusNI
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r4, r1
	str r0, [r2]
	ldr r1, _08008D6C @ =gRfuSlotStatusUNI
	movs r3, #0xdb
	lsls r3, r3, #2
	adds r0, r4, r3
	str r0, [r1]
	movs r5, #1
	ldr r0, _08008D70 @ =gUnk_03002520
	mov ip, r0
	adds r6, r2, #0
	adds r4, r1, #0
_08008CA8:
	lsls r2, r5, #2
	adds r3, r2, r6
	subs r1, r5, #1
	lsls r1, r1, #2
	adds r0, r1, r6
	ldr r0, [r0]
	adds r0, #0x70
	str r0, [r3]
	adds r2, r2, r4
	adds r1, r1, r4
	ldr r0, [r1]
	adds r0, #0x1c
	str r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08008CA8
	ldr r4, _08008D6C @ =gRfuSlotStatusUNI
	ldr r0, [r4, #0xc]
	adds r1, r0, #0
	adds r1, #0x1c
	mov r2, ip
	str r1, [r2]
	ldr r1, _08008D64 @ =gRfuFixed
	ldr r1, [r1]
	adds r1, #0xdc
	adds r0, #0x54
	str r0, [r1]
	mov r1, r8
	adds r2, r7, #0
	bl STWI_init_all
	bl rfu_STC_clearAPIVariables
	movs r5, #0
	ldr r3, _08008D68 @ =gRfuSlotStatusNI
	movs r2, #0
_08008CF4:
	lsls r1, r5, #2
	adds r0, r1, r3
	ldr r0, [r0]
	str r2, [r0, #0x68]
	str r2, [r0, #0x6c]
	adds r1, r1, r4
	ldr r0, [r1]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08008CF4
	ldr r1, _08008D74 @ =rfu_STC_fastCopy
	movs r5, #2
	rsbs r5, r5, #0
	ands r5, r1
	ldr r2, _08008D64 @ =gRfuFixed
	ldr r0, [r2]
	adds r4, r0, #0
	adds r4, #8
	ldr r0, _08008D78 @ =rfu_REQ_changeMasterSlave
	subs r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r3, r0, #0x10
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08008D7C @ =0x0000FFFF
	cmp r3, r0
	beq _08008D48
	adds r6, r0, #0
_08008D36:
	ldrh r0, [r5]
	strh r0, [r4]
	adds r5, #2
	adds r4, #2
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	bne _08008D36
_08008D48:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #9
	str r0, [r1, #4]
	movs r0, #0
_08008D52:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008D5C: .4byte gRfuLinkStatus
_08008D60: .4byte gRfuStatic
_08008D64: .4byte gRfuFixed
_08008D68: .4byte gRfuSlotStatusNI
_08008D6C: .4byte gRfuSlotStatusUNI
_08008D70: .4byte gUnk_03002520
_08008D74: .4byte rfu_STC_fastCopy
_08008D78: .4byte rfu_REQ_changeMasterSlave
_08008D7C: .4byte 0x0000FFFF

	thumb_func_start rfu_STC_clearAPIVariables
rfu_STC_clearAPIVariables: @ 0x08008D80
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r1, _08008DF4 @ =0x04000208
	ldrh r0, [r1]
	adds r7, r0, #0
	movs r6, #0
	strh r6, [r1]
	ldr r5, _08008DF8 @ =gRfuStatic
	ldr r1, [r5]
	ldrb r4, [r1]
	mov r0, sp
	strh r6, [r0]
	ldr r2, _08008DFC @ =0x0100000C
	bl CpuSet
	ldr r2, [r5]
	movs r0, #8
	ands r4, r0
	movs r1, #0
	strb r4, [r2]
	mov r0, sp
	adds r0, #2
	strh r1, [r0]
	ldr r4, _08008E00 @ =gRfuLinkStatus
	ldr r1, [r4]
	ldr r2, _08008E04 @ =0x0100005A
	bl CpuSet
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r6, [r0, #6]
	ldr r1, [r4]
	movs r0, #0xff
	strb r0, [r1]
	bl rfu_clearAllSlot
	ldr r0, _08008E08 @ =gUnk_03002400
	strb r6, [r0]
	movs r1, #0
	ldr r3, _08008E0C @ =gUnk_030023F8
	movs r2, #0
_08008DD6:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08008DD6
	ldr r0, _08008DF4 @ =0x04000208
	strh r7, [r0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008DF4: .4byte 0x04000208
_08008DF8: .4byte gRfuStatic
_08008DFC: .4byte 0x0100000C
_08008E00: .4byte gRfuLinkStatus
_08008E04: .4byte 0x0100005A
_08008E08: .4byte gUnk_03002400
_08008E0C: .4byte gUnk_030023F8

	thumb_func_start rfu_REQ_PARENT_resumeRetransmitAndChange
rfu_REQ_PARENT_resumeRetransmitAndChange: @ 0x08008E10
	push {lr}
	ldr r0, _08008E20 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	bl STWI_send_ResumeRetransmitAndChangeREQ
	pop {r0}
	bx r0
	.align 2, 0
_08008E20: .4byte rfu_STC_REQ_callback

	thumb_func_start rfu_UNI_PARENT_getDRAC_ACK
rfu_UNI_PARENT_getDRAC_ACK: @ 0x08008E24
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4]
	ldr r5, _08008E3C @ =gRfuLinkStatus
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #1
	beq _08008E40
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08008E66
	.align 2, 0
_08008E3C: .4byte gRfuLinkStatus
_08008E40:
	bl rfu_getSTWIRecvBuffer
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0x28
	beq _08008E50
	cmp r0, #0x36
	bne _08008E64
_08008E50:
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _08008E5C
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	b _08008E5E
_08008E5C:
	ldrb r0, [r1, #4]
_08008E5E:
	strb r0, [r4]
	movs r0, #0
	b _08008E66
_08008E64:
	movs r0, #0x10
_08008E66:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start rfu_setTimerInterrupt
rfu_setTimerInterrupt: @ 0x08008E6C
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r2, #0
	bl STWI_init_timer
	pop {r0}
	bx r0

	thumb_func_start rfu_getSTWIRecvBuffer
rfu_getSTWIRecvBuffer: @ 0x08008E80
	ldr r0, _08008E8C @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08008E8C: .4byte gRfuFixed

	thumb_func_start rfu_setMSCCallback
rfu_setMSCCallback: @ 0x08008E90
	push {lr}
	bl STWI_set_Callback_S
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_setREQCallback
rfu_setREQCallback: @ 0x08008E9C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008EB4 @ =gRfuFixed
	ldr r0, [r0]
	str r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bl rfu_enableREQCallback
	pop {r0}
	bx r0
	.align 2, 0
_08008EB4: .4byte gRfuFixed

	thumb_func_start rfu_enableREQCallback
rfu_enableREQCallback: @ 0x08008EB8
	push {lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08008ED0
	ldr r0, _08008ECC @ =gRfuStatic
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	b _08008EDA
	.align 2, 0
_08008ECC: .4byte gRfuStatic
_08008ED0:
	ldr r0, _08008EE0 @ =gRfuStatic
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
_08008EDA:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08008EE0: .4byte gRfuStatic

	thumb_func_start rfu_STC_REQ_callback
rfu_STC_REQ_callback: @ 0x08008EE4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08008F18 @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	ldr r0, _08008F1C @ =gRfuStatic
	ldr r0, [r0]
	strh r4, [r0, #0xe]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08008F12
	ldr r0, _08008F20 @ =gRfuFixed
	ldr r0, [r0]
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
_08008F12:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008F18: .4byte rfu_CB_defaultCallback
_08008F1C: .4byte gRfuStatic
_08008F20: .4byte gRfuFixed

	thumb_func_start rfu_CB_defaultCallback
rfu_CB_defaultCallback: @ 0x08008F24
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	cmp r0, #0xff
	bne _08008F80
	ldr r0, _08008F88 @ =gRfuStatic
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08008F4E
	ldr r0, _08008F8C @ =gRfuFixed
	ldr r0, [r0]
	ldr r2, [r0]
	movs r0, #0xff
	adds r1, r3, #0
	bl _call_via_r2
_08008F4E:
	ldr r0, _08008F90 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	adds r5, r0, #0
	orrs r5, r1
	movs r4, #0
_08008F5C:
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08008F6E
	adds r0, r4, #0
	bl rfu_STC_removeLinkData
_08008F6E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08008F5C
	ldr r0, _08008F90 @ =gRfuLinkStatus
	ldr r1, [r0]
	movs r0, #0xff
	strb r0, [r1]
_08008F80:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008F88: .4byte gRfuStatic
_08008F8C: .4byte gRfuFixed
_08008F90: .4byte gRfuLinkStatus

	thumb_func_start rfu_waitREQComplete
rfu_waitREQComplete: @ 0x08008F94
	push {lr}
	bl STWI_poll_CommandEnd
	ldr r0, _08008FA4 @ =gRfuStatic
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	pop {r1}
	bx r1
	.align 2, 0
_08008FA4: .4byte gRfuStatic

	thumb_func_start rfu_REQ_RFUStatus
rfu_REQ_RFUStatus: @ 0x08008FA8
	push {lr}
	ldr r0, _08008FB8 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	bl STWI_send_SystemStatusREQ
	pop {r0}
	bx r0
	.align 2, 0
_08008FB8: .4byte rfu_STC_REQ_callback

	thumb_func_start rfu_getRFUStatus
rfu_getRFUStatus: @ 0x08008FBC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08008FD4 @ =gRfuFixed
	ldr r0, [r5]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0x93
	beq _08008FD8
	movs r0, #0x10
	b _08008FF2
	.align 2, 0
_08008FD4: .4byte gRfuFixed
_08008FD8:
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008FEC
	ldr r0, [r5]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	b _08008FEE
_08008FEC:
	movs r0, #0xff
_08008FEE:
	strb r0, [r4]
	movs r0, #0
_08008FF2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start rfu_MBOOT_CHILD_inheritanceLinkStatus
rfu_MBOOT_CHILD_inheritanceLinkStatus: @ 0x08008FF8
	push {lr}
	ldr r2, _08009000 @ =gUnk_0808E2EC
	ldr r3, _08009004 @ =gUnk_030000F0
	b _08009012
	.align 2, 0
_08009000: .4byte gUnk_0808E2EC
_08009004: .4byte gUnk_030000F0
_08009008:
	ldrb r0, [r3]
	adds r3, #1
	adds r2, #1
	cmp r1, r0
	bne _08009068
_08009012:
	ldrb r1, [r2]
	cmp r1, #0
	bne _08009008
	movs r2, #0xc0
	lsls r2, r2, #0x12
	movs r3, #0
	movs r1, #0
_08009020:
	ldrh r0, [r2]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x59
	bls _08009020
	ldr r0, _0800905C @ =gUnk_030000FA
	ldrh r0, [r0]
	cmp r3, r0
	bne _08009068
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r1, _08009060 @ =gRfuLinkStatus
	ldr r1, [r1]
	movs r2, #0x5a
	bl CpuSet
	ldr r0, _08009064 @ =gRfuStatic
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	b _0800906A
	.align 2, 0
_0800905C: .4byte gUnk_030000FA
_08009060: .4byte gRfuLinkStatus
_08009064: .4byte gRfuStatic
_08009068:
	movs r0, #1
_0800906A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_REQ_stopMode
rfu_REQ_stopMode: @ 0x08009070
	push {lr}
	ldr r0, _08009090 @ =0x04000208
	ldrh r0, [r0]
	cmp r0, #0
	bne _08009098
	movs r0, #0x3d
	movs r1, #6
	bl rfu_STC_REQ_callback
	ldr r0, _08009094 @ =gSTWIStatus
	ldr r1, [r0]
	ldrh r0, [r1, #0x12]
	movs r0, #6
	strh r0, [r1, #0x12]
	b _080090D2
	.align 2, 0
_08009090: .4byte 0x04000208
_08009094: .4byte gSTWIStatus
_08009098:
	bl AgbRFU_SoftReset
	bl rfu_STC_clearAPIVariables
	movs r0, #4
	bl AgbRFU_checkID
	ldr r1, _080090B8 @ =0x00008001
	cmp r0, r1
	bne _080090C0
	ldr r0, _080090BC @ =rfu_CB_stopMode
	bl STWI_set_Callback_M
	bl STWI_send_StopModeREQ
	b _080090D2
	.align 2, 0
_080090B8: .4byte 0x00008001
_080090BC: .4byte rfu_CB_stopMode
_080090C0:
	ldr r1, _080090D8 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x3d
	movs r1, #0
	bl rfu_STC_REQ_callback
_080090D2:
	pop {r0}
	bx r0
	.align 2, 0
_080090D8: .4byte 0x04000128

	thumb_func_start rfu_CB_stopMode
rfu_CB_stopMode: @ 0x080090DC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r1, #0
	cmp r2, #0
	bne _080090F6
	ldr r1, _08009104 @ =0x04000128
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r4, #0
	strh r0, [r1]
_080090F6:
	adds r0, r3, #0
	adds r1, r2, #0
	bl rfu_STC_REQ_callback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009104: .4byte 0x04000128

	thumb_func_start rfu_REQBN_softReset_and_checkID
rfu_REQBN_softReset_and_checkID: @ 0x08009108
	push {lr}
	ldr r0, _08009118 @ =0x04000208
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800911C
	movs r0, #1
	rsbs r0, r0, #0
	b _0800913C
	.align 2, 0
_08009118: .4byte 0x04000208
_0800911C:
	bl AgbRFU_SoftReset
	bl rfu_STC_clearAPIVariables
	movs r0, #0x1e
	bl AgbRFU_checkID
	adds r2, r0, #0
	cmp r2, #0
	bne _0800913A
	ldr r1, _08009140 @ =0x04000128
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
_0800913A:
	adds r0, r2, #0
_0800913C:
	pop {r1}
	bx r1
	.align 2, 0
_08009140: .4byte 0x04000128

	thumb_func_start rfu_REQ_reset
rfu_REQ_reset: @ 0x08009144
	push {lr}
	ldr r0, _08009154 @ =rfu_CB_reset
	bl STWI_set_Callback_M
	bl STWI_send_ResetREQ
	pop {r0}
	bx r0
	.align 2, 0
_08009154: .4byte rfu_CB_reset

	thumb_func_start rfu_CB_reset
rfu_CB_reset: @ 0x08009158
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	cmp r4, #0
	bne _0800916C
	bl rfu_STC_clearAPIVariables
_0800916C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_REQ_configSystem
rfu_REQ_configSystem: @ 0x0800917C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080091B0 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	movs r0, #3
	ands r4, r0
	movs r0, #0x3c
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl STWI_send_SystemConfigREQ
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080091B0: .4byte rfu_STC_REQ_callback

	thumb_func_start rfu_REQ_configGameData
rfu_REQ_configGameData: @ 0x080091B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r2, r1, #0x10
	adds r5, r4, #0
	mov r0, sp
	strb r1, [r0]
	lsrs r2, r2, #0x18
	strb r2, [r0, #1]
	cmp r6, #0
	beq _080091DA
	movs r1, #0x80
	orrs r2, r1
	movs r1, #0
	orrs r2, r1
	strb r2, [r0, #1]
_080091DA:
	movs r2, #2
	ldr r0, _0800923C @ =rfu_CB_configGameData
	mov ip, r0
_080091E0:
	mov r3, sp
	adds r1, r3, r2
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xe
	bls _080091E0
	movs r3, #0
	adds r1, r7, #0
	movs r2, #0
_080091FA:
	ldrb r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	adds r1, #1
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r5, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080091FA
	mov r1, sp
	mvns r0, r3
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _08009226
	movs r0, #0
	strb r0, [r1, #0xe]
_08009226:
	mov r0, ip
	bl STWI_set_Callback_M
	mov r0, sp
	adds r1, r7, #0
	bl STWI_send_GameConfigREQ
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800923C: .4byte rfu_CB_configGameData

	thumb_func_start rfu_CB_configGameData
rfu_CB_configGameData: @ 0x08009240
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0
	bne _080092CA
	ldr r0, _08009284 @ =gSTWIStatus
	ldr r0, [r0]
	ldr r1, [r0, #0x24]
	ldr r0, _08009288 @ =gRfuLinkStatus
	ldr r6, [r0]
	ldrb r2, [r1, #4]
	adds r5, r6, #0
	adds r5, #0x98
	strh r2, [r5]
	ldrb r0, [r1, #5]
	lsls r3, r0, #8
	orrs r3, r2
	strh r3, [r5]
	adds r4, r1, #6
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800928C
	eors r3, r1
	strh r3, [r5]
	adds r1, r6, #0
	adds r1, #0x97
	movs r0, #1
	b _08009292
	.align 2, 0
_08009284: .4byte gSTWIStatus
_08009288: .4byte gRfuLinkStatus
_0800928C:
	adds r1, r6, #0
	adds r1, #0x97
	movs r0, #0
_08009292:
	strb r0, [r1]
	movs r2, #0
	ldr r3, _080092D8 @ =gRfuLinkStatus
_08009298:
	ldr r0, [r3]
	adds r0, #0x9a
	adds r0, r0, r2
	ldrb r1, [r4]
	strb r1, [r0]
	adds r4, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xc
	bls _08009298
	adds r4, #1
	movs r2, #0
	ldr r3, _080092D8 @ =gRfuLinkStatus
_080092B4:
	ldr r0, [r3]
	adds r0, #0xa9
	adds r0, r0, r2
	ldrb r1, [r4]
	strb r1, [r0]
	adds r4, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080092B4
_080092CA:
	mov r0, ip
	adds r1, r7, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080092D8: .4byte gRfuLinkStatus

	thumb_func_start rfu_REQ_startSearchChild
rfu_REQ_startSearchChild: @ 0x080092DC
	push {lr}
	ldr r0, _0800930C @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SystemStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08009314
	ldr r0, _08009310 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0800931A
	movs r0, #1
	bl rfu_STC_clearLinkStatus
	b _0800931A
	.align 2, 0
_0800930C: .4byte rfu_CB_defaultCallback
_08009310: .4byte gRfuFixed
_08009314:
	movs r0, #0x19
	bl rfu_STC_REQ_callback
_0800931A:
	ldr r0, _08009328 @ =rfu_CB_startSearchChild
	bl STWI_set_Callback_M
	bl STWI_send_SC_StartREQ
	pop {r0}
	bx r0
	.align 2, 0
_08009328: .4byte rfu_CB_startSearchChild

	thumb_func_start rfu_CB_startSearchChild
rfu_CB_startSearchChild: @ 0x0800932C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r1, #0
	cmp r2, #0
	bne _08009342
	ldr r1, _08009350 @ =gUnk_03002400
	movs r0, #1
	strb r0, [r1]
_08009342:
	adds r0, r3, #0
	adds r1, r2, #0
	bl rfu_STC_REQ_callback
	pop {r0}
	bx r0
	.align 2, 0
_08009350: .4byte gUnk_03002400

	thumb_func_start rfu_STC_clearLinkStatus
rfu_STC_clearLinkStatus: @ 0x08009354
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl rfu_clearAllSlot
	cmp r4, #0
	beq _0800937C
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _080093B0 @ =gRfuLinkStatus
	ldr r1, [r4]
	adds r1, #0x14
	ldr r2, _080093B4 @ =0x01000040
	bl CpuSet
	ldr r0, [r4]
	strb r5, [r0, #8]
_0800937C:
	movs r1, #0
	ldr r2, _080093B0 @ =gRfuLinkStatus
	adds r4, r2, #0
	movs r3, #0
_08009384:
	ldr r0, [r4]
	adds r0, #0xa
	adds r0, r0, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08009384
	ldr r0, [r2]
	movs r1, #0
	strb r1, [r0, #1]
	ldr r0, [r2]
	strb r1, [r0, #2]
	ldr r0, [r2]
	strb r1, [r0, #3]
	ldr r0, [r2]
	strb r1, [r0, #7]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080093B0: .4byte gRfuLinkStatus
_080093B4: .4byte 0x01000040

	thumb_func_start rfu_REQ_pollSearchChild
rfu_REQ_pollSearchChild: @ 0x080093B8
	push {lr}
	ldr r0, _080093C8 @ =rfu_CB_pollAndEndSearchChild
	bl STWI_set_Callback_M
	bl STWI_send_SC_PollingREQ
	pop {r0}
	bx r0
	.align 2, 0
_080093C8: .4byte rfu_CB_pollAndEndSearchChild

	thumb_func_start rfu_REQ_endSearchChild
rfu_REQ_endSearchChild: @ 0x080093CC
	push {lr}
	ldr r0, _080093DC @ =rfu_CB_pollAndEndSearchChild
	bl STWI_set_Callback_M
	bl STWI_send_SC_EndREQ
	pop {r0}
	bx r0
	.align 2, 0
_080093DC: .4byte rfu_CB_pollAndEndSearchChild

	thumb_func_start rfu_CB_pollAndEndSearchChild
rfu_CB_pollAndEndSearchChild: @ 0x080093E0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r6, #0
	bne _080093F2
	bl rfu_STC_readChildList
_080093F2:
	cmp r4, #0x1a
	bne _08009434
	ldr r5, _08009428 @ =gRfuLinkStatus
	ldr r0, [r5]
	adds r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800944E
	ldr r0, _0800942C @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SystemStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800944E
	ldr r1, [r5]
	ldr r0, _08009430 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	adds r1, #0x94
	strh r0, [r1]
	b _0800944E
	.align 2, 0
_08009428: .4byte gRfuLinkStatus
_0800942C: .4byte rfu_CB_defaultCallback
_08009430: .4byte gRfuFixed
_08009434:
	cmp r4, #0x1b
	bne _0800944E
	ldr r0, _0800945C @ =gRfuLinkStatus
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08009448
	adds r1, #0x94
	movs r0, #0
	strh r0, [r1]
_08009448:
	ldr r1, _08009460 @ =gUnk_03002400
	movs r0, #0
	strb r0, [r1]
_0800944E:
	adds r0, r4, #0
	adds r1, r6, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800945C: .4byte gRfuLinkStatus
_08009460: .4byte gUnk_03002400

	thumb_func_start rfu_STC_readChildList
rfu_STC_readChildList: @ 0x08009464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08009584 @ =gRfuFixed
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r2, [r0, #1]
	mov r8, r2
	adds r4, r1, #0
	cmp r2, #0
	beq _080094C2
	ldr r5, [r0, #4]
	ldr r0, _08009588 @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_LinkStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080094B6
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r0, [r0]
	adds r4, r0, #4
	movs r2, #0
_080094A2:
	mov r3, sp
	adds r1, r3, r2
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080094A2
_080094B6:
	ldr r0, _08009584 @ =gRfuFixed
	ldr r1, [r0]
	adds r1, #0xdc
	ldr r1, [r1]
	str r5, [r1, #4]
	adds r4, r0, #0
_080094C2:
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r0, [r0]
	adds r4, r0, #4
	mov r0, r8
	cmp r0, #0
	beq _08009572
	ldr r1, _0800958C @ =gUnk_030023F0
	mov ip, r1
	ldr r7, _08009590 @ =gRfuLinkStatus
	ldr r2, _08009594 @ =gRfuStatic
	mov sl, r2
	ldr r3, _08009598 @ =gUnk_030023F8
	mov sb, r3
_080094DE:
	ldrb r1, [r4, #2]
	adds r5, r1, #0
	cmp r1, #3
	bhi _08009562
	ldr r2, [r7]
	ldrb r0, [r2, #2]
	asrs r0, r1
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	bne _08009562
	ldrb r2, [r2, #3]
	asrs r2, r1
	ands r2, r6
	cmp r2, #0
	bne _08009562
	mov r3, sp
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009510
	add r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08009510:
	mov r0, ip
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #3
	bls _08009562
	strb r2, [r1]
	ldr r0, [r7]
	adds r0, #0xa
	adds r0, r0, r5
	movs r1, #0xff
	strb r1, [r0]
	ldr r2, [r7]
	adds r0, r6, #0
	lsls r0, r5
	ldrb r1, [r2, #2]
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r1, [r7]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	ldr r1, [r7]
	lsls r3, r5, #5
	adds r1, r1, r3
	ldrh r0, [r4]
	strh r0, [r1, #0x14]
	strb r5, [r1, #0x16]
	ldr r0, [r7]
	strb r6, [r0]
	mov r1, sl
	ldr r2, [r1]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	lsls r1, r5, #1
	add r1, sb
	ldr r0, [r7]
	adds r0, r0, r3
	ldrh r0, [r0, #0x14]
	strh r0, [r1]
_08009562:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r4, #4
	cmp r0, #0
	bne _080094DE
_08009572:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009584: .4byte gRfuFixed
_08009588: .4byte rfu_CB_defaultCallback
_0800958C: .4byte gUnk_030023F0
_08009590: .4byte gRfuLinkStatus
_08009594: .4byte gRfuStatic
_08009598: .4byte gUnk_030023F8

	thumb_func_start rfu_REQ_startSearchParent
rfu_REQ_startSearchParent: @ 0x0800959C
	push {lr}
	ldr r0, _080095AC @ =rfu_CB_startSearchParent
	bl STWI_set_Callback_M
	bl STWI_send_SP_StartREQ
	pop {r0}
	bx r0
	.align 2, 0
_080095AC: .4byte rfu_CB_startSearchParent

	thumb_func_start rfu_CB_startSearchParent
rfu_CB_startSearchParent: @ 0x080095B0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	cmp r4, #0
	bne _080095C6
	movs r0, #0
	bl rfu_STC_clearLinkStatus
_080095C6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start rfu_REQ_pollSearchParent
rfu_REQ_pollSearchParent: @ 0x080095D4
	push {lr}
	ldr r0, _080095E4 @ =rfu_CB_pollSearchParent
	bl STWI_set_Callback_M
	bl STWI_send_SP_PollingREQ
	pop {r0}
	bx r0
	.align 2, 0
_080095E4: .4byte rfu_CB_pollSearchParent

	thumb_func_start rfu_CB_pollSearchParent
rfu_CB_pollSearchParent: @ 0x080095E8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	cmp r4, #0
	bne _080095FC
	bl rfu_STC_readParentCandidateList
_080095FC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_REQ_endSearchParent
rfu_REQ_endSearchParent: @ 0x0800960C
	push {lr}
	ldr r0, _0800961C @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	bl STWI_send_SP_EndREQ
	pop {r0}
	bx r0
	.align 2, 0
_0800961C: .4byte rfu_STC_REQ_callback

	thumb_func_start rfu_STC_readParentCandidateList
rfu_STC_readParentCandidateList: @ 0x08009620
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _080096C8 @ =gRfuLinkStatus
	ldr r1, [r5]
	adds r1, #0x14
	ldr r2, _080096CC @ =0x01000040
	bl CpuSet
	ldr r0, _080096D0 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r2, [r0]
	ldrb r7, [r2, #1]
	adds r2, #4
	ldr r0, [r5]
	strb r4, [r0, #8]
	movs r6, #0
	cmp r7, #0
	beq _08009724
	mov ip, r5
	ldr r0, _080096D4 @ =0x00007FFF
	mov r8, r0
_08009656:
	subs r0, r7, #7
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r1, r2, #6
	adds r2, #0x13
	ldrb r0, [r2]
	mvns r0, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r2, #1
	movs r4, #0
	movs r3, #0
	adds r6, #1
_08009670:
	ldrb r0, [r2]
	adds r0, r4, r0
	lsls r0, r0, #0x18
	adds r2, #1
	lsrs r0, r0, #0x18
	ldrb r4, [r1]
	adds r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r1, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08009670
	cmp r4, r5
	bne _08009718
	subs r2, #0x1c
	mov r0, ip
	ldr r1, [r0]
	ldrb r0, [r1, #8]
	lsls r0, r0, #5
	adds r0, #0x14
	adds r4, r1, r0
	ldrh r0, [r2]
	movs r3, #0
	strh r0, [r4]
	adds r2, #2
	ldrb r0, [r2]
	strb r0, [r4, #2]
	adds r2, #2
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	strh r0, [r4, #4]
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080096D8
	movs r0, #1
	strb r0, [r4, #3]
	b _080096DA
	.align 2, 0
_080096C8: .4byte gRfuLinkStatus
_080096CC: .4byte 0x01000040
_080096D0: .4byte gRfuFixed
_080096D4: .4byte 0x00007FFF
_080096D8:
	strb r3, [r4, #3]
_080096DA:
	adds r2, #2
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0x15
	adds r4, #6
_080096E4:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xc
	bls _080096E4
	adds r2, #1
	movs r3, #0
	adds r4, r5, #0
_080096FC:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _080096FC
	mov r4, ip
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_08009718:
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08009724
	cmp r7, #0
	bne _08009656
_08009724:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start rfu_REQ_startConnectParent
rfu_REQ_startConnectParent: @ 0x08009730
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	movs r2, #0
	ldr r1, _0800977C @ =gRfuLinkStatus
	ldr r0, [r1]
	ldrh r0, [r0, #0x14]
	cmp r0, r4
	beq _0800975C
	adds r5, r1, #0
_08009746:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0800975C
	ldr r0, [r5]
	lsls r1, r2, #5
	adds r0, r0, r1
	ldrh r0, [r0, #0x14]
	cmp r0, r4
	bne _08009746
_0800975C:
	cmp r2, #4
	bne _08009764
	movs r3, #0x80
	lsls r3, r3, #1
_08009764:
	cmp r3, #0
	bne _08009788
	ldr r0, _08009780 @ =gRfuStatic
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	ldr r0, _08009784 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	adds r0, r4, #0
	bl STWI_send_CP_StartREQ
	b _08009790
	.align 2, 0
_0800977C: .4byte gRfuLinkStatus
_08009780: .4byte gRfuStatic
_08009784: .4byte rfu_STC_REQ_callback
_08009788:
	movs r0, #0x1f
	adds r1, r3, #0
	bl rfu_STC_REQ_callback
_08009790:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_REQ_pollConnectParent
rfu_REQ_pollConnectParent: @ 0x08009798
	push {lr}
	ldr r0, _080097A8 @ =rfu_CB_pollConnectParent
	bl STWI_set_Callback_M
	bl STWI_send_CP_PollingREQ
	pop {r0}
	bx r0
	.align 2, 0
_080097A8: .4byte rfu_CB_pollConnectParent

	thumb_func_start rfu_CB_pollConnectParent
rfu_CB_pollConnectParent: @ 0x080097AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x28]
	cmp r1, #0
	bne _080098AE
	ldr r0, _08009868 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrh r5, [r0, #4]
	ldrb r1, [r0, #6]
	mov sl, r1
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080098AE
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r1
	lsrs r2, r0, #0x18
	ldr r4, _0800986C @ =gRfuLinkStatus
	ldr r3, [r4]
	ldrb r1, [r3, #2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080098AE
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r3, #2]
	ldr r1, [r4]
	ldrb r0, [r1, #3]
	bics r0, r2
	strb r0, [r1, #3]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x94
	movs r2, #0
	strh r5, [r0]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	ldr r0, [r4]
	strb r2, [r0]
	ldr r3, _08009870 @ =gRfuStatic
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	adds r7, r4, #0
	add r6, sp, #0x20
	movs r0, #0
	mov r8, r0
_0800982A:
	ldr r2, [r7]
	lsls r4, r5, #5
	adds r0, r2, r4
	ldr r1, [r3]
	ldrh r0, [r0, #0x14]
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	bne _08009882
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _08009878
	mov sb, sp
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r2, r0
	mov r1, sp
	movs r2, #0x10
	bl CpuSet
	mov r1, r8
	strh r1, [r6]
	ldr r1, [r7]
	adds r1, #0x14
	adds r0, r6, #0
	ldr r2, _08009874 @ =0x01000040
	bl CpuSet
	ldr r0, [r7]
	mov r1, r8
	strb r1, [r0, #8]
	b _0800988C
	.align 2, 0
_08009868: .4byte gRfuFixed
_0800986C: .4byte gRfuLinkStatus
_08009870: .4byte gRfuStatic
_08009874: .4byte 0x01000040
_08009878:
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r2, r0
	mov sb, r2
	b _0800988C
_08009882:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0800982A
_0800988C:
	cmp r5, #3
	bhi _080098AE
	ldr r4, _080098C8 @ =gRfuLinkStatus
	mov r0, sl
	lsls r5, r0, #5
	adds r0, r5, #0
	adds r0, #0x14
	ldr r1, [r4]
	adds r1, r1, r0
	mov r0, sb
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, r0, r5
	mov r1, sl
	strb r1, [r0, #0x16]
_080098AE:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl rfu_STC_REQ_callback
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080098C8: .4byte gRfuLinkStatus

	thumb_func_start rfu_getConnectParentStatus
rfu_getConnectParentStatus: @ 0x080098CC
	push {lr}
	adds r3, r0, #0
	movs r0, #0xff
	strb r0, [r3]
	ldr r0, _080098EC @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r2, [r0]
	ldrb r0, [r2]
	adds r0, #0x60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080098F0
	movs r0, #0x10
	b _080098FC
	.align 2, 0
_080098EC: .4byte gRfuFixed
_080098F0:
	adds r2, #6
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r0, [r2, #1]
	strb r0, [r3]
	movs r0, #0
_080098FC:
	pop {r1}
	bx r1

	thumb_func_start rfu_REQ_endConnectParent
rfu_REQ_endConnectParent: @ 0x08009900
	push {lr}
	ldr r0, _08009928 @ =rfu_CB_pollConnectParent
	bl STWI_set_Callback_M
	bl STWI_send_CP_EndREQ
	ldr r0, _0800992C @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #3
	bhi _08009924
	ldr r0, _08009930 @ =gUnk_03002404
	ldrb r1, [r1, #6]
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
_08009924:
	pop {r0}
	bx r0
	.align 2, 0
_08009928: .4byte rfu_CB_pollConnectParent
_0800992C: .4byte gRfuFixed
_08009930: .4byte gUnk_03002404

	thumb_func_start rfu_syncVBlank
rfu_syncVBlank: @ 0x08009934
	push {r4, r5, lr}
	bl rfu_NI_checkCommFailCounter
	ldr r0, _0800997C @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08009A0C
	ldr r4, _08009980 @ =gRfuStatic
	ldr r1, [r4]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08009952
	subs r0, #1
	strb r0, [r1, #6]
_08009952:
	bl rfu_getMasterSlave
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, [r4]
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08009984
	cmp r3, #0
	bne _08009992
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1, #0x12]
	b _0800998E
	.align 2, 0
_0800997C: .4byte gRfuLinkStatus
_08009980: .4byte gRfuStatic
_08009984:
	cmp r3, #0
	beq _080099A4
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_0800998E:
	cmp r3, #0
	beq _080099A4
_08009992:
	ldr r3, _080099A0 @ =gRfuStatic
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	b _080099AE
	.align 2, 0
_080099A0: .4byte gRfuStatic
_080099A4:
	ldr r3, _08009A00 @ =gRfuStatic
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
_080099AE:
	strb r0, [r2]
	ldr r3, [r3]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08009A0C
	ldrh r0, [r3, #0x12]
	cmp r0, #0
	bne _08009A08
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r3]
	ldr r0, _08009A04 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	adds r5, r0, #0
	orrs r5, r1
	movs r4, #0
_080099D6:
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080099E8
	adds r0, r4, #0
	bl rfu_STC_removeLinkData
_080099E8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080099D6
	ldr r0, _08009A04 @ =gRfuLinkStatus
	ldr r1, [r0]
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	b _08009A0E
	.align 2, 0
_08009A00: .4byte gRfuStatic
_08009A04: .4byte gRfuLinkStatus
_08009A08:
	subs r0, #1
	strh r0, [r3, #0x12]
_08009A0C:
	movs r0, #0
_08009A0E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start rfu_REQBN_watchLink
rfu_REQBN_watchLink: @ 0x08009A14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r1
	str r2, [sp]
	str r3, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	mov r2, r8
	strb r1, [r2]
	mov r0, sp
	ldrb r1, [r0, #0xc]
	ldr r0, [sp]
	strb r1, [r0]
	mov r2, sp
	ldrb r0, [r2, #0xc]
	ldr r2, [sp, #4]
	strb r0, [r2]
	ldr r4, _08009AB4 @ =gRfuLinkStatus
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08009A52
	b _08009D96
_08009A52:
	ldr r0, _08009AB8 @ =gSTWIStatus
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _08009A5E
	b _08009D96
_08009A5E:
	ldr r3, _08009ABC @ =gRfuStatic
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08009A72
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r2, #0x12]
_08009A72:
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08009A84
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	strb r0, [r1, #6]
	movs r1, #1
	str r1, [sp, #8]
_08009A84:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x29
	bne _08009AC4
	ldr r0, _08009AC0 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r1, #5]
	ldr r1, [sp]
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08009AAE
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	strb r0, [r2]
_08009AAE:
	movs r2, #2
	str r2, [sp, #8]
	b _08009B1C
	.align 2, 0
_08009AB4: .4byte gRfuLinkStatus
_08009AB8: .4byte gSTWIStatus
_08009ABC: .4byte gRfuStatic
_08009AC0: .4byte gRfuFixed
_08009AC4:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r5, r0
	bne _08009B14
	ldr r0, _08009B70 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r5, [r0, #5]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	eors r5, r0
	ands r5, r0
	mov r0, r8
	strb r5, [r0]
	movs r0, #1
	ldr r1, [sp]
	strb r0, [r1]
	movs r6, #0
_08009AEA:
	mov r2, r8
	ldrb r0, [r2]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08009B0A
	ldr r0, _08009B74 @ =gRfuLinkStatus
	ldr r0, [r0]
	adds r0, #0xa
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	adds r0, r6, #0
	bl rfu_STC_removeLinkData
_08009B0A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08009AEA
_08009B14:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08009B1C
	b _08009D96
_08009B1C:
	ldr r4, _08009B70 @ =gRfuFixed
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r0, [r0]
	ldr r1, [r0]
	str r1, [sp, #0x10]
	ldr r0, [r0, #4]
	str r0, [sp, #0x14]
	ldr r0, _08009B78 @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_LinkStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _08009B7C
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r0, [r0]
	adds r2, r0, #4
	movs r6, #0
	ldr r3, _08009B74 @ =gRfuLinkStatus
_08009B50:
	ldr r0, [r3]
	adds r0, #0xa
	adds r0, r0, r6
	ldrb r1, [r2]
	strb r1, [r0]
	adds r2, #1
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08009B50
	movs r2, #0
	mov sb, r2
	movs r6, #0
	b _08009B88
	.align 2, 0
_08009B70: .4byte gRfuFixed
_08009B74: .4byte gRfuLinkStatus
_08009B78: .4byte rfu_CB_defaultCallback
_08009B7C:
	movs r0, #0x11
	ldr r1, [sp, #0xc]
	bl rfu_STC_REQ_callback
	ldr r0, [sp, #0xc]
	b _08009D98
_08009B88:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r6
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _08009B9C
	b _08009D4A
_08009B9C:
	ldr r2, [sp, #8]
	cmp r2, #1
	bne _08009C6A
	ldr r4, _08009BE4 @ =gRfuLinkStatus
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	ands r0, r5
	cmp r0, #0
	beq _08009C6A
	adds r0, r1, #0
	adds r0, #0xa
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009C60
	ldrb r0, [r1]
	cmp r0, #1
	bne _08009BEC
	ldr r1, _08009BE8 @ =gUnk_03002404
	adds r1, r6, r1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08009C6A
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r5, #0
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r0, [sp]
	strb r2, [r0]
	b _08009C6A
	.align 2, 0
_08009BE4: .4byte gRfuLinkStatus
_08009BE8: .4byte gUnk_03002404
_08009BEC:
	bl STWI_send_SystemStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009C6A
	ldr r0, _08009C1C @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08009C20
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2]
	mov r0, sp
	ldrb r1, [r0, #8]
	ldr r0, [sp]
	b _08009C68
	.align 2, 0
_08009C1C: .4byte gRfuFixed
_08009C20:
	ldr r0, _08009C5C @ =gUnk_03002404
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08009C6A
	mov r2, sp
	ldrb r2, [r2, #0xc]
	strb r2, [r1]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	bl STWI_send_DisconnectREQ
	bl STWI_poll_CommandEnd
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r5, #0
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	mov r2, sp
	ldrb r0, [r2, #8]
	ldr r2, [sp]
	strb r0, [r2]
	b _08009C6A
	.align 2, 0
_08009C5C: .4byte gUnk_03002404
_08009C60:
	ldr r0, _08009CC0 @ =gUnk_03002404
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #0xc]
_08009C68:
	strb r1, [r0]
_08009C6A:
	ldr r2, _08009CC4 @ =gRfuLinkStatus
	mov ip, r2
	ldr r1, [r2]
	ldrb r7, [r1]
	adds r0, r6, #1
	mov sl, r0
	cmp r7, #1
	bne _08009D4A
	adds r0, r1, #0
	adds r0, #0xa
	adds r4, r0, r6
	ldrb r3, [r4]
	cmp r3, #0
	beq _08009D4A
	ldrb r2, [r1, #3]
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08009CCE
	cmp r3, #0xa
	bls _08009CC8
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2, #2]
	mov r2, ip
	ldr r1, [r2]
	ldrb r0, [r1, #3]
	bics r0, r5
	strb r0, [r1, #3]
	ldr r1, [r2]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	b _08009D4A
	.align 2, 0
_08009CC0: .4byte gUnk_03002404
_08009CC4: .4byte gRfuLinkStatus
_08009CC8:
	movs r0, #0
	strb r0, [r4]
	b _08009D4A
_08009CCE:
	ldrb r0, [r1, #2]
	orrs r0, r2
	ands r0, r5
	cmp r0, #0
	bne _08009D4A
	bl STWI_send_SlotStatusREQ
	bl STWI_poll_CommandEnd
	ldr r0, _08009D14 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, #8
	cmp r3, #0
	beq _08009D4A
	ldrh r4, [r2]
	ldrb r0, [r2, #2]
	cmp r0, r6
	bne _08009D1C
	ldr r1, _08009D18 @ =gUnk_030023F8
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _08009D1C
	lsls r7, r6
	mov r0, sb
	orrs r0, r7
	lsls r0, r0, #0x18
	b _08009D46
	.align 2, 0
_08009D14: .4byte gRfuFixed
_08009D18: .4byte gUnk_030023F8
_08009D1C:
	adds r2, #4
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08009D4A
	ldrh r4, [r2]
	ldrb r0, [r2, #2]
	cmp r0, r6
	bne _08009D1C
	ldr r1, _08009DA8 @ =gUnk_030023F8
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _08009D1C
	movs r0, #1
	lsls r0, r6
	mov r1, sb
	orrs r1, r0
	lsls r0, r1, #0x18
_08009D46:
	lsrs r0, r0, #0x18
	mov sb, r0
_08009D4A:
	ldr r0, _08009DAC @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	mov r2, r8
	ldrb r0, [r2]
	ands r0, r1
	ands r5, r0
	cmp r5, #0
	beq _08009D64
	adds r0, r6, #0
	movs r1, #0
	bl rfu_STC_removeLinkData
_08009D64:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08009D70
	b _08009B88
_08009D70:
	mov r2, sb
	cmp r2, #0
	beq _08009D80
	mov r0, sb
	bl STWI_send_DisconnectREQ
	bl STWI_poll_CommandEnd
_08009D80:
	ldr r1, _08009DB0 @ =gRfuFixed
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	ldr r2, [sp, #0x10]
	str r2, [r0]
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	str r1, [r0, #4]
_08009D96:
	movs r0, #0
_08009D98:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009DA8: .4byte gUnk_030023F8
_08009DAC: .4byte gRfuLinkStatus
_08009DB0: .4byte gRfuFixed

	thumb_func_start rfu_STC_removeLinkData
rfu_STC_removeLinkData: @ 0x08009DB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r7
	lsrs r5, r0, #0x18
	ldr r1, _08009E58 @ =gRfuLinkStatus
	ldr r4, [r1]
	ldrb r0, [r4, #2]
	ands r0, r5
	mov r8, r1
	cmp r0, #0
	beq _08009DE6
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08009DE6
	subs r0, #1
	strb r0, [r4, #1]
_08009DE6:
	mov r3, r8
	ldr r2, [r3]
	mvns r6, r5
	ldrb r1, [r2, #2]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r2, [r3]
	ldrb r1, [r2, #3]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r3, [r3]
	ldr r0, [r3]
	ldr r1, _08009E5C @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08009E0E
	movs r0, #0xff
	strb r0, [r3]
_08009E0E:
	mov r0, ip
	cmp r0, #0
	beq _08009E4C
	mov r1, sp
	movs r4, #0
	movs r0, #0
	strh r0, [r1]
	lsls r0, r7, #5
	adds r0, #0x14
	mov r2, r8
	ldr r1, [r2]
	adds r1, r1, r0
	ldr r2, _08009E60 @ =0x01000010
	mov r0, sp
	bl CpuSet
	mov r0, r8
	ldr r2, [r0]
	ldrb r1, [r2, #3]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2, #3]
	mov r2, r8
	ldr r1, [r2]
	ldrb r0, [r1, #7]
	ands r6, r0
	strb r6, [r1, #7]
	ldr r0, [r2]
	adds r0, #0xa
	adds r0, r0, r7
	strb r4, [r0]
_08009E4C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009E58: .4byte gRfuLinkStatus
_08009E5C: .4byte 0x00FF00FF
_08009E60: .4byte 0x01000010

	thumb_func_start rfu_REQ_disconnect
rfu_REQ_disconnect: @ 0x08009E64
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _08009EA8 @ =gRfuLinkStatus
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	orrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08009EEC
	ldr r1, _08009EAC @ =gRfuStatic
	ldr r0, [r1]
	strb r4, [r0, #5]
	ldr r2, [r2]
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08009EB0
	ldr r0, [r1]
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08009EB0
	ldrb r0, [r2, #3]
	ands r0, r4
	cmp r0, #0
	beq _08009EEC
	movs r0, #0x30
	movs r1, #0
	bl rfu_CB_disconnect
	b _08009EEC
	.align 2, 0
_08009EA8: .4byte gRfuLinkStatus
_08009EAC: .4byte gRfuStatic
_08009EB0:
	ldr r0, _08009ED8 @ =gUnk_03002400
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009EE0
	ldr r0, _08009EDC @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SC_EndREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08009EE0
	movs r0, #0x1b
	bl rfu_STC_REQ_callback
	b _08009EEC
	.align 2, 0
_08009ED8: .4byte gUnk_03002400
_08009EDC: .4byte rfu_CB_defaultCallback
_08009EE0:
	ldr r0, _08009EF4 @ =rfu_CB_disconnect
	bl STWI_set_Callback_M
	adds r0, r4, #0
	bl STWI_send_DisconnectREQ
_08009EEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009EF4: .4byte rfu_CB_disconnect

	thumb_func_start rfu_CB_disconnect
rfu_CB_disconnect: @ 0x08009EF8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r5, #3
	bne _08009F34
	ldr r0, _08009FC8 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009F34
	ldr r0, _08009FCC @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SystemStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009F34
	ldr r0, _08009FD0 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08009F34
	movs r5, #0
_08009F34:
	ldr r3, _08009FD4 @ =gRfuStatic
	ldr r2, [r3]
	ldr r0, _08009FC8 @ =gRfuLinkStatus
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	orrs r0, r1
	ldrb r1, [r2, #5]
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, _08009FD0 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	strb r0, [r1, #8]
	cmp r5, #0
	bne _08009F82
	movs r4, #0
_08009F5C:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r4
	lsrs r0, r0, #0x18
	ldr r1, _08009FD4 @ =gRfuStatic
	ldr r1, [r1]
	ldrb r1, [r1, #5]
	ands r0, r1
	cmp r0, #0
	beq _08009F78
	adds r0, r4, #0
	movs r1, #1
	bl rfu_STC_removeLinkData
_08009F78:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08009F5C
_08009F82:
	ldr r0, _08009FC8 @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	orrs r0, r1
	cmp r0, #0
	bne _08009F94
	movs r0, #0xff
	strb r0, [r2]
_08009F94:
	adds r0, r6, #0
	adds r1, r5, #0
	bl rfu_STC_REQ_callback
	ldr r0, _08009FD8 @ =gUnk_03002400
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009FC0
	ldr r0, _08009FCC @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SC_StartREQ
	bl STWI_poll_CommandEnd
	adds r5, r0, #0
	cmp r5, #0
	beq _08009FC0
	movs r0, #0x19
	adds r1, r5, #0
	bl rfu_STC_REQ_callback
_08009FC0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009FC8: .4byte gRfuLinkStatus
_08009FCC: .4byte rfu_CB_defaultCallback
_08009FD0: .4byte gRfuFixed
_08009FD4: .4byte gRfuStatic
_08009FD8: .4byte gUnk_03002400

	thumb_func_start rfu_REQ_CHILD_startConnectRecovery
rfu_REQ_CHILD_startConnectRecovery: @ 0x08009FDC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0800A02C @ =gRfuStatic
	ldr r0, [r0]
	strb r5, [r0, #5]
	movs r4, #0
	movs r0, #1
	ands r0, r5
	ldr r2, _0800A030 @ =rfu_STC_REQ_callback
	cmp r0, #0
	bne _0800A00A
	movs r1, #1
_08009FF6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _0800A00A
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r1
	cmp r0, #0
	beq _08009FF6
_0800A00A:
	adds r0, r2, #0
	bl STWI_set_Callback_M
	ldr r0, _0800A034 @ =gRfuLinkStatus
	ldr r1, [r0]
	lsls r0, r4, #5
	adds r0, r1, r0
	ldrh r0, [r0, #0x14]
	adds r1, #0x94
	ldrh r1, [r1]
	adds r2, r5, #0
	bl STWI_send_CPR_StartREQ
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A02C: .4byte gRfuStatic
_0800A030: .4byte rfu_STC_REQ_callback
_0800A034: .4byte gRfuLinkStatus

	thumb_func_start rfu_REQ_CHILD_pollConnectRecovery
rfu_REQ_CHILD_pollConnectRecovery: @ 0x0800A038
	push {lr}
	ldr r0, _0800A048 @ =rfu_CB_CHILD_pollConnectRecovery
	bl STWI_set_Callback_M
	bl STWI_send_CPR_PollingREQ
	pop {r0}
	bx r0
	.align 2, 0
_0800A048: .4byte rfu_CB_CHILD_pollConnectRecovery

	thumb_func_start rfu_CB_CHILD_pollConnectRecovery
rfu_CB_CHILD_pollConnectRecovery: @ 0x0800A04C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r6, #0
	bne _0800A0C0
	ldr r0, _0800A0D0 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0800A0C0
	ldr r0, _0800A0D4 @ =gRfuStatic
	ldr r1, [r0]
	ldrb r1, [r1, #5]
	adds r7, r0, #0
	cmp r1, #0
	beq _0800A0C0
	ldr r1, _0800A0D8 @ =gRfuLinkStatus
	ldr r0, [r1]
	strb r6, [r0]
	movs r4, #0
	adds r5, r1, #0
_0800A080:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r4
	lsrs r3, r0, #0x18
	ldr r2, [r5]
	ldr r0, [r7]
	ldrb r0, [r0, #5]
	ands r0, r3
	ldrb r1, [r2, #3]
	ands r0, r1
	cmp r0, #0
	beq _0800A0B0
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r1, [r5]
	ldrb r0, [r1, #3]
	bics r0, r3
	strb r0, [r1, #3]
	ldr r1, [r5]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
_0800A0B0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0800A080
	ldr r1, [r7]
	movs r0, #0
	strb r0, [r1, #5]
_0800A0C0:
	mov r0, ip
	adds r1, r6, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A0D0: .4byte gRfuFixed
_0800A0D4: .4byte gRfuStatic
_0800A0D8: .4byte gRfuLinkStatus

	thumb_func_start rfu_CHILD_getConnectRecoveryStatus
rfu_CHILD_getConnectRecoveryStatus: @ 0x0800A0DC
	push {lr}
	adds r2, r0, #0
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _0800A0FC @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, #0x4d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800A100
	movs r0, #0x10
	b _0800A106
	.align 2, 0
_0800A0FC: .4byte gRfuFixed
_0800A100:
	ldrb r0, [r1, #4]
	strb r0, [r2]
	movs r0, #0
_0800A106:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_REQ_CHILD_endConnectRecovery
rfu_REQ_CHILD_endConnectRecovery: @ 0x0800A10C
	push {lr}
	ldr r0, _0800A11C @ =rfu_CB_CHILD_pollConnectRecovery
	bl STWI_set_Callback_M
	bl STWI_send_CPR_EndREQ
	pop {r0}
	bx r0
	.align 2, 0
_0800A11C: .4byte rfu_CB_CHILD_pollConnectRecovery

	thumb_func_start rfu_STC_fastCopy
rfu_STC_fastCopy: @ 0x0800A122
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r3, [r5]
	ldr r1, [r6]
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800A144
	adds r4, r0, #0
_0800A136:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r1, #1
	subs r2, #1
	cmp r2, r4
	bne _0800A136
_0800A144:
	str r3, [r5]
	str r1, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_REQ_changeMasterSlave
rfu_REQ_changeMasterSlave: @ 0x0800A150
	push {lr}
	movs r0, #1
	bl STWI_read_status
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0800A170
	ldr r0, _0800A16C @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	bl STWI_send_MS_ChangeREQ
	b _0800A178
	.align 2, 0
_0800A16C: .4byte rfu_STC_REQ_callback
_0800A170:
	movs r0, #0x27
	movs r1, #0
	bl rfu_STC_REQ_callback
_0800A178:
	pop {r0}
	bx r0

	thumb_func_start rfu_getMasterSlave
rfu_getMasterSlave: @ 0x0800A17C
	push {lr}
	movs r0, #1
	bl STWI_read_status
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bne _0800A1AA
	ldr r0, _0800A1B0 @ =gSTWIStatus
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A1AA
	ldrb r0, [r1, #6]
	cmp r0, #0x27
	beq _0800A1A8
	cmp r0, #0x25
	beq _0800A1A8
	cmp r0, #0x37
	bne _0800A1AA
_0800A1A8:
	movs r2, #0
_0800A1AA:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800A1B0: .4byte gSTWIStatus

	thumb_func_start rfu_clearAllSlot
rfu_clearAllSlot: @ 0x0800A1B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r1, _0800A238 @ =0x04000208
	ldrh r0, [r1]
	mov r8, r0
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	mov r0, sp
	adds r0, #2
	movs r7, #0
	adds r6, r0, #0
_0800A1D0:
	mov r0, sp
	strh r7, [r0]
	ldr r0, _0800A23C @ =gRfuSlotStatusNI
	lsls r4, r5, #2
	adds r0, r4, r0
	ldr r1, [r0]
	mov r0, sp
	ldr r2, _0800A240 @ =0x01000034
	bl CpuSet
	strh r7, [r6]
	ldr r0, _0800A244 @ =gRfuSlotStatusUNI
	adds r4, r4, r0
	ldr r1, [r4]
	adds r0, r6, #0
	ldr r2, _0800A248 @ =0x0100000A
	bl CpuSet
	ldr r3, _0800A24C @ =gRfuLinkStatus
	ldr r0, [r3]
	adds r0, #0x10
	adds r0, r0, r5
	movs r1, #0x10
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0800A1D0
	ldr r2, [r3]
	movs r1, #0
	movs r0, #0x57
	strb r0, [r2, #0xf]
	ldr r0, [r3]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #5]
	ldr r0, [r3]
	strb r1, [r0, #6]
	ldr r0, _0800A250 @ =gRfuStatic
	ldr r0, [r0]
	strb r1, [r0, #2]
	ldr r0, _0800A238 @ =0x04000208
	mov r1, r8
	strh r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A238: .4byte 0x04000208
_0800A23C: .4byte gRfuSlotStatusNI
_0800A240: .4byte 0x01000034
_0800A244: .4byte gRfuSlotStatusUNI
_0800A248: .4byte 0x0100000A
_0800A24C: .4byte gRfuLinkStatus
_0800A250: .4byte gRfuStatic

	thumb_func_start rfu_STC_releaseFrame
rfu_STC_releaseFrame: @ 0x0800A254
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r5, r2, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r0, _0800A28C @ =gRfuStatic
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800A294
	ldr r6, _0800A290 @ =gRfuLinkStatus
	cmp r3, #0
	bne _0800A280
	ldr r1, [r6]
	ldrb r0, [r1, #0xf]
	ldrh r4, [r4, #0x2e]
	adds r0, r0, r4
	strb r0, [r1, #0xf]
_0800A280:
	ldr r1, [r6]
	ldrb r0, [r1, #0xf]
	adds r0, #3
	strb r0, [r1, #0xf]
	b _0800A2B4
	.align 2, 0
_0800A28C: .4byte gRfuStatic
_0800A290: .4byte gRfuLinkStatus
_0800A294:
	ldr r6, _0800A2BC @ =gRfuLinkStatus
	cmp r3, #0
	bne _0800A2A8
	ldr r1, [r6]
	adds r1, #0x10
	adds r1, r1, r2
	ldrb r0, [r1]
	ldrh r4, [r4, #0x2e]
	adds r0, r0, r4
	strb r0, [r1]
_0800A2A8:
	ldr r1, [r6]
	adds r1, #0x10
	adds r1, r1, r5
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
_0800A2B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A2BC: .4byte gRfuLinkStatus

	thumb_func_start rfu_clearSlot
rfu_clearSlot: @ 0x0800A2C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	cmp r7, #3
	bls _0800A2E0
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A458
_0800A2E0:
	movs r0, #0xf
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0800A2F0
	movs r0, #0xc0
	lsls r0, r0, #3
	b _0800A458
_0800A2F0:
	ldr r1, _0800A334 @ =0x04000208
	ldrh r0, [r1]
	mov sl, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xc
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _0800A3B8
	movs r3, #0
	ldr r1, _0800A338 @ =gRfuSlotStatusNI
	lsls r0, r7, #2
	adds r0, r0, r1
	mov sb, r0
_0800A30E:
	movs r4, #0
	cmp r3, #0
	bne _0800A340
	movs r0, #4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0800A360
	mov r2, sb
	ldr r4, [r2]
	ldr r0, _0800A33C @ =gRfuLinkStatus
	ldr r2, [r0]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	ldrb r0, [r2, #4]
	bics r0, r1
	strb r0, [r2, #4]
	b _0800A360
	.align 2, 0
_0800A334: .4byte 0x04000208
_0800A338: .4byte gRfuSlotStatusNI
_0800A33C: .4byte gRfuLinkStatus
_0800A340:
	movs r0, #8
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0800A360
	mov r2, sb
	ldr r0, [r2]
	adds r4, r0, #0
	adds r4, #0x34
	ldr r0, _0800A3F4 @ =gRfuLinkStatus
	ldr r2, [r0]
	movs r1, #1
	lsls r1, r7
	ldrb r0, [r2, #5]
	bics r0, r1
	strb r0, [r2, #5]
_0800A360:
	adds r6, r3, #1
	cmp r4, #0
	beq _0800A3B0
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800A3A0
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	adds r2, r4, #0
	bl rfu_STC_releaseFrame
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0x2c
	movs r5, #1
	movs r3, #0
_0800A38A:
	ldrb r0, [r2]
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0800A396
	strh r3, [r4, #2]
_0800A396:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0800A38A
_0800A3A0:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0800A3F8 @ =0x0100001A
	bl CpuSet
_0800A3B0:
	lsls r0, r6, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #1
	bls _0800A30E
_0800A3B8:
	movs r0, #1
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _0800A42E
	ldr r1, _0800A3FC @ =gRfuSlotStatusUNI
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A420
	ldr r0, _0800A400 @ =gRfuStatic
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800A404
	ldr r2, _0800A3F4 @ =gRfuLinkStatus
	ldr r1, [r2]
	ldrb r0, [r1, #0xf]
	adds r0, #3
	ldrb r4, [r3, #4]
	adds r0, r0, r4
	strb r0, [r1, #0xf]
	b _0800A416
	.align 2, 0
_0800A3F4: .4byte gRfuLinkStatus
_0800A3F8: .4byte 0x0100001A
_0800A3FC: .4byte gRfuSlotStatusUNI
_0800A400: .4byte gRfuStatic
_0800A404:
	ldr r2, _0800A468 @ =gRfuLinkStatus
	ldr r1, [r2]
	adds r1, #0x10
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #2
	ldrb r4, [r3, #4]
	adds r0, r0, r4
	strb r0, [r1]
_0800A416:
	ldr r2, [r2]
	ldrb r1, [r3, #3]
	ldrb r0, [r2, #6]
	bics r0, r1
	strb r0, [r2, #6]
_0800A420:
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0800A46C @ =0x01000006
	adds r1, r3, #0
	bl CpuSet
_0800A42E:
	movs r0, #2
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0800A450
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800A470 @ =gRfuSlotStatusUNI
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0xc
	ldr r2, _0800A474 @ =0x01000004
	mov r0, sp
	bl CpuSet
_0800A450:
	ldr r0, _0800A478 @ =0x04000208
	mov r2, sl
	strh r2, [r0]
	movs r0, #0
_0800A458:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A468: .4byte gRfuLinkStatus
_0800A46C: .4byte 0x01000006
_0800A470: .4byte gRfuSlotStatusUNI
_0800A474: .4byte 0x01000004
_0800A478: .4byte 0x04000208

	thumb_func_start rfu_setRecvBuffer
rfu_setRecvBuffer: @ 0x0800A47C
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, r3, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r4, r1, #0
	cmp r1, #3
	bls _0800A498
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A4D0
_0800A498:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0800A4B4
	ldr r0, _0800A4B0 @ =gRfuSlotStatusNI
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r5, [r0, #0x68]
	str r6, [r0, #0x6c]
	b _0800A4CE
	.align 2, 0
_0800A4B0: .4byte gRfuSlotStatusNI
_0800A4B4:
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _0800A4C2
	movs r0, #0xc0
	lsls r0, r0, #3
	b _0800A4D0
_0800A4C2:
	ldr r0, _0800A4D8 @ =gRfuSlotStatusUNI
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r5, [r0, #0x14]
	str r6, [r0, #0x18]
_0800A4CE:
	movs r0, #0
_0800A4D0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800A4D8: .4byte gRfuSlotStatusUNI

	thumb_func_start rfu_NI_setSendData
rfu_NI_setSendData: @ 0x0800A4DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r3, [sp]
	movs r0, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl rfu_STC_setSendData_org
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start rfu_UNI_setSendData
rfu_UNI_setSendData: @ 0x0800A508
	push {lr}
	sub sp, #4
	adds r3, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _0800A524 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800A528
	adds r0, r2, #3
	b _0800A52A
	.align 2, 0
_0800A524: .4byte gRfuLinkStatus
_0800A528:
	adds r0, r2, #2
_0800A52A:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0
	str r0, [sp]
	movs r0, #0x10
	bl rfu_STC_setSendData_org
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_NI_CHILD_setSendGameName
rfu_NI_CHILD_setSendGameName: @ 0x0800A544
	push {lr}
	sub sp, #4
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	lsls r1, r0
	lsrs r1, r1, #0x18
	ldr r0, _0800A574 @ =gRfuLinkStatus
	ldr r3, [r0]
	adds r3, #0x98
	movs r0, #0x1a
	str r0, [sp]
	movs r0, #0x40
	bl rfu_STC_setSendData_org
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800A574: .4byte gRfuLinkStatus

	thumb_func_start rfu_STC_setSendData_org
rfu_STC_setSendData_org: @ 0x0800A578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r3, [sp]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _0800A5A4 @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r1, [r2]
	mov sl, r0
	cmp r1, #0xff
	bne _0800A5AC
	ldr r0, _0800A5A8 @ =0x00000301
	b _0800A762
	.align 2, 0
_0800A5A4: .4byte gRfuLinkStatus
_0800A5A8: .4byte 0x00000301
_0800A5AC:
	movs r0, #0xf
	ands r0, r3
	cmp r0, #0
	bne _0800A5BA
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A762
_0800A5BA:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	orrs r0, r1
	ands r0, r3
	cmp r0, r3
	beq _0800A5D0
	ldr r0, _0800A5CC @ =0x00000401
	b _0800A762
	.align 2, 0
_0800A5CC: .4byte 0x00000401
_0800A5D0:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _0800A5DC
	ldrb r0, [r2, #6]
	b _0800A5DE
_0800A5DC:
	ldrb r0, [r2, #4]
_0800A5DE:
	ands r0, r3
	cmp r0, #0
	beq _0800A5EC
	ldr r0, _0800A5E8 @ =0x00000402
	b _0800A762
	.align 2, 0
_0800A5E8: .4byte 0x00000402
_0800A5EC:
	movs r2, #0
	movs r0, #1
	ands r0, r3
	ldr r4, _0800A61C @ =gUnk_0808E2C0
	cmp r0, #0
	bne _0800A60E
	movs r1, #1
_0800A5FA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0800A60E
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	beq _0800A5FA
_0800A60E:
	mov r0, sl
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #1
	bne _0800A620
	adds r1, #0xf
	b _0800A62A
	.align 2, 0
_0800A61C: .4byte gUnk_0808E2C0
_0800A620:
	cmp r0, #0
	bne _0800A62C
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r1, r0
_0800A62A:
	mov sb, r1
_0800A62C:
	mov r1, sl
	ldr r0, [r1]
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrb r4, [r0]
	mov r0, sb
	ldrb r0, [r0]
	cmp r8, r0
	bhi _0800A644
	cmp r8, r4
	bhi _0800A64A
_0800A644:
	movs r0, #0xa0
	lsls r0, r0, #3
	b _0800A762
_0800A64A:
	ldr r1, _0800A698 @ =0x04000208
	ldrh r0, [r1]
	str r0, [sp, #4]
	movs r7, #0
	strh r7, [r1]
	movs r0, #0x20
	ands r0, r6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0800A664
	cmp r6, #0x40
	bne _0800A720
_0800A664:
	ldr r1, _0800A69C @ =gRfuSlotStatusNI
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r0
	movs r1, #0
	strh r1, [r0, #0x18]
	mov r1, ip
	adds r1, #0x2d
	mov r2, ip
	str r1, [r2, #4]
	movs r0, #7
	str r0, [r2, #0x14]
	mov r0, ip
	adds r0, #0x2c
	strb r3, [r0]
	strb r3, [r2, #0x1a]
	mov r2, r8
	subs r0, r2, r4
	mov r2, ip
	strh r0, [r2, #0x2e]
	cmp r5, #0
	beq _0800A6A0
	strb r7, [r1]
	b _0800A6A4
	.align 2, 0
_0800A698: .4byte 0x04000208
_0800A69C: .4byte gRfuSlotStatusNI
_0800A6A0:
	movs r0, #1
	strb r0, [r1]
_0800A6A4:
	ldr r0, [sp, #0x28]
	mov r1, ip
	str r0, [r1, #0x30]
	ldr r2, [sp]
	str r2, [r1, #0x28]
	movs r1, #0
	mov r0, ip
	strb r1, [r0, #0x1f]
	adds r0, #0x20
	strb r1, [r0]
	mov r4, ip
	adds r4, #0x1b
	movs r6, #0
	mov r2, ip
	adds r2, #0x21
	movs r5, #1
_0800A6C4:
	adds r0, r4, r1
	strb r6, [r0]
	adds r0, r2, r1
	strb r5, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0800A6C4
	movs r2, #0
	movs r5, #1
	ldr r4, _0800A718 @ =gRfuSlotStatusNI
	movs r1, #0
_0800A6DE:
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r5
	cmp r0, #0
	beq _0800A6F0
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	strh r1, [r0, #2]
_0800A6F0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0800A6DE
	mov r1, sl
	ldr r2, [r1]
	ldrb r1, [r2, #4]
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2, #4]
	mov r2, sb
	ldrb r0, [r2]
	mov r1, r8
	subs r0, r0, r1
	strb r0, [r2]
	ldr r0, _0800A71C @ =0x00008021
	mov r2, ip
	strh r0, [r2]
	b _0800A758
	.align 2, 0
_0800A718: .4byte gRfuSlotStatusNI
_0800A71C: .4byte 0x00008021
_0800A720:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _0800A758
	ldr r1, _0800A774 @ =gRfuSlotStatusUNI
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	strb r3, [r1, #3]
	ldr r0, [sp]
	str r0, [r1, #8]
	mov r2, r8
	subs r0, r2, r4
	strh r0, [r1, #4]
	mov r2, sb
	ldrb r0, [r2]
	mov r2, r8
	subs r0, r0, r2
	mov r2, sb
	strb r0, [r2]
	ldr r0, _0800A778 @ =0x00008024
	strh r0, [r1]
	mov r0, sl
	ldr r2, [r0]
	ldrb r1, [r2, #6]
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2, #6]
_0800A758:
	ldr r0, _0800A77C @ =0x04000208
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0]
	movs r0, #0
_0800A762:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A774: .4byte gRfuSlotStatusUNI
_0800A778: .4byte 0x00008024
_0800A77C: .4byte 0x04000208

	thumb_func_start rfu_changeSendTarget
rfu_changeSendTarget: @ 0x0800A780
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	cmp r7, #3
	bls _0800A7A4
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A8D8
_0800A7A4:
	cmp r0, #0x20
	bne _0800A844
	ldr r0, _0800A834 @ =gRfuSlotStatusNI
	mov ip, r0
	lsls r0, r7, #2
	add r0, ip
	ldr r5, [r0]
	ldrh r2, [r5]
	ldr r1, _0800A838 @ =0x00008020
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800A85A
	ldrb r0, [r5, #0x1a]
	adds r3, r6, #0
	eors r3, r0
	adds r2, r3, #0
	ands r2, r6
	cmp r2, #0
	bne _0800A892
	cmp r3, #0
	bne _0800A7D2
	b _0800A8D6
_0800A7D2:
	ldr r1, _0800A83C @ =0x04000208
	ldrh r0, [r1]
	mov r8, r0
	strh r2, [r1]
	movs r2, #0
	mvns r1, r3
	str r1, [sp]
	lsls r4, r6, #0x18
	mov sl, r4
	movs r0, #1
	mov sb, r0
	movs r1, #0
_0800A7EA:
	adds r0, r3, #0
	asrs r0, r2
	mov r4, sb
	ands r0, r4
	cmp r0, #0
	beq _0800A7FE
	lsls r0, r2, #2
	add r0, ip
	ldr r0, [r0]
	strh r1, [r0, #2]
_0800A7FE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0800A7EA
	ldr r0, _0800A840 @ =gRfuLinkStatus
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	ldr r2, [sp]
	ands r2, r0
	strb r2, [r1, #4]
	strb r6, [r5, #0x1a]
	mov r0, sl
	cmp r0, #0
	bne _0800A82A
	adds r0, r7, #0
	movs r1, #0
	adds r2, r5, #0
	bl rfu_STC_releaseFrame
	movs r0, #0x27
	strh r0, [r5]
_0800A82A:
	ldr r0, _0800A83C @ =0x04000208
	mov r1, r8
	strh r1, [r0]
	b _0800A8D6
	.align 2, 0
_0800A834: .4byte gRfuSlotStatusNI
_0800A838: .4byte 0x00008020
_0800A83C: .4byte 0x04000208
_0800A840: .4byte gRfuLinkStatus
_0800A844:
	cmp r3, #0x10
	bne _0800A8D0
	ldr r3, _0800A860 @ =gRfuSlotStatusUNI
	lsls r1, r7, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldrh r2, [r0]
	ldr r0, _0800A864 @ =0x00008024
	adds r5, r3, #0
	cmp r2, r0
	beq _0800A86C
_0800A85A:
	ldr r0, _0800A868 @ =0x00000403
	b _0800A8D8
	.align 2, 0
_0800A860: .4byte gRfuSlotStatusUNI
_0800A864: .4byte 0x00008024
_0800A868: .4byte 0x00000403
_0800A86C:
	movs r3, #0
	movs r2, #0
	adds r4, r5, #0
_0800A872:
	cmp r2, r7
	beq _0800A880
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	orrs r3, r0
_0800A880:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0800A872
	adds r2, r6, #0
	ands r2, r3
	cmp r2, #0
	beq _0800A89C
_0800A892:
	ldr r0, _0800A898 @ =0x00000404
	b _0800A8D8
	.align 2, 0
_0800A898: .4byte 0x00000404
_0800A89C:
	ldr r3, _0800A8C8 @ =0x04000208
	ldrh r0, [r3]
	mov r8, r0
	strh r2, [r3]
	ldr r4, _0800A8CC @ =gRfuLinkStatus
	ldr r2, [r4]
	adds r5, r1, r5
	ldr r0, [r5]
	ldrb r1, [r0, #3]
	ldrb r0, [r2, #6]
	bics r0, r1
	strb r0, [r2, #6]
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	adds r0, r6, #0
	orrs r0, r1
	strb r0, [r2, #6]
	ldr r0, [r5]
	strb r6, [r0, #3]
	mov r2, r8
	strh r2, [r3]
	b _0800A8D6
	.align 2, 0
_0800A8C8: .4byte 0x04000208
_0800A8CC: .4byte gRfuLinkStatus
_0800A8D0:
	movs r0, #0xc0
	lsls r0, r0, #3
	b _0800A8D8
_0800A8D6:
	movs r0, #0
_0800A8D8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start rfu_NI_stopReceivingData
rfu_NI_stopReceivingData: @ 0x0800A8E8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800A8F8
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A952
_0800A8F8:
	ldr r1, _0800A924 @ =gRfuSlotStatusNI
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r5, r2, #0
	adds r5, #0x34
	ldr r1, _0800A928 @ =0x04000208
	ldrh r0, [r1]
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldrh r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A94C
	ldr r0, _0800A92C @ =0x00008043
	cmp r1, r0
	bne _0800A930
	movs r0, #0x48
	b _0800A932
	.align 2, 0
_0800A924: .4byte gRfuSlotStatusNI
_0800A928: .4byte 0x04000208
_0800A92C: .4byte 0x00008043
_0800A930:
	movs r0, #0x47
_0800A932:
	strh r0, [r2, #0x34]
	ldr r0, _0800A958 @ =gRfuLinkStatus
	ldr r2, [r0]
	movs r1, #1
	lsls r1, r3
	ldrb r0, [r2, #5]
	bics r0, r1
	strb r0, [r2, #5]
	adds r0, r3, #0
	movs r1, #1
	adds r2, r5, #0
	bl rfu_STC_releaseFrame
_0800A94C:
	ldr r0, _0800A95C @ =0x04000208
	strh r4, [r0]
	movs r0, #0
_0800A952:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A958: .4byte gRfuLinkStatus
_0800A95C: .4byte 0x04000208

	thumb_func_start rfu_UNI_changeAndReadySendData
rfu_UNI_changeAndReadySendData: @ 0x0800A960
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r0, #3
	bls _0800A978
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A9EC
_0800A978:
	ldr r1, _0800A98C @ =gRfuSlotStatusUNI
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrh r1, [r4]
	ldr r0, _0800A990 @ =0x00008024
	cmp r1, r0
	beq _0800A998
	ldr r0, _0800A994 @ =0x00000403
	b _0800A9EC
	.align 2, 0
_0800A98C: .4byte gRfuSlotStatusUNI
_0800A990: .4byte 0x00008024
_0800A994: .4byte 0x00000403
_0800A998:
	ldr r0, _0800A9AC @ =gRfuLinkStatus
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #1
	bne _0800A9B0
	adds r6, r1, #0
	adds r6, #0xf
	ldrb r0, [r4, #4]
	ldrb r1, [r1, #0xf]
	b _0800A9BE
	.align 2, 0
_0800A9AC: .4byte gRfuLinkStatus
_0800A9B0:
	adds r0, r3, #0
	adds r0, #0x10
	adds r6, r1, r0
	adds r1, #0x10
	adds r1, r1, r3
	ldrb r0, [r4, #4]
	ldrb r1, [r1]
_0800A9BE:
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r5
	blo _0800A9E8
	ldr r2, _0800A9E4 @ =0x04000208
	ldrh r1, [r2]
	movs r0, #0
	strh r0, [r2]
	str r7, [r4, #8]
	subs r0, r3, r5
	strb r0, [r6]
	strh r5, [r4, #4]
	movs r0, #1
	strb r0, [r4, #2]
	strh r1, [r2]
	movs r0, #0
	b _0800A9EC
	.align 2, 0
_0800A9E4: .4byte 0x04000208
_0800A9E8:
	movs r0, #0xa0
	lsls r0, r0, #3
_0800A9EC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_UNI_readySendData
rfu_UNI_readySendData: @ 0x0800A9F4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0800AA12
	ldr r1, _0800AA18 @ =gRfuSlotStatusUNI
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	ldr r0, _0800AA1C @ =0x00008024
	cmp r1, r0
	bne _0800AA12
	movs r0, #1
	strb r0, [r2, #2]
_0800AA12:
	pop {r0}
	bx r0
	.align 2, 0
_0800AA18: .4byte gRfuSlotStatusUNI
_0800AA1C: .4byte 0x00008024

	thumb_func_start rfu_UNI_clearRecvNewDataFlag
rfu_UNI_clearRecvNewDataFlag: @ 0x0800AA20
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0800AA36
	ldr r1, _0800AA3C @ =gRfuSlotStatusUNI
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0x12]
_0800AA36:
	pop {r0}
	bx r0
	.align 2, 0
_0800AA3C: .4byte gRfuSlotStatusUNI

	thumb_func_start rfu_REQ_sendData
rfu_REQ_sendData: @ 0x0800AA40
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0800AA8C @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r1, [r2]
	adds r4, r0, #0
	cmp r1, #0xff
	bne _0800AA54
	b _0800AB7A
_0800AA54:
	cmp r1, #1
	bne _0800AAE4
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	adds r3, r0, #0
	orrs r3, r1
	ldrb r0, [r2, #6]
	orrs r3, r0
	cmp r3, #0
	bne _0800AAE4
	ldr r0, _0800AA90 @ =gRfuStatic
	ldr r2, [r0]
	ldrb r1, [r2, #3]
	adds r4, r0, #0
	cmp r1, #0
	beq _0800AA7C
	movs r0, #0x10
	strb r0, [r2, #8]
	ldr r0, [r4]
	strb r3, [r0, #7]
_0800AA7C:
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0800AA94
	subs r0, #1
	strb r0, [r1, #8]
	b _0800AA9A
	.align 2, 0
_0800AA8C: .4byte gRfuLinkStatus
_0800AA90: .4byte gRfuStatic
_0800AA94:
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
_0800AA9A:
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0800AAAC
	ldrb r1, [r1, #7]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800AB3E
_0800AAAC:
	ldr r4, _0800AAD0 @ =gRfuFixed
	ldr r1, [r4]
	movs r0, #1
	str r0, [r1, #0x68]
	movs r0, #0xff
	str r0, [r1, #0x78]
	ldr r0, _0800AAD4 @ =rfu_CB_sendData3
	bl STWI_set_Callback_M
	cmp r5, #0
	bne _0800AAD8
	ldr r0, [r4]
	adds r0, #0x68
	movs r1, #1
	bl STWI_send_DataTxREQ
	b _0800AB7A
	.align 2, 0
_0800AAD0: .4byte gRfuFixed
_0800AAD4: .4byte rfu_CB_sendData3
_0800AAD8:
	ldr r0, [r4]
	adds r0, #0x68
	movs r1, #1
	bl STWI_send_DataTxAndChangeREQ
	b _0800AB7A
_0800AAE4:
	ldr r0, [r4]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0800AAF0
	bl rfu_constructSendLLFrame
_0800AAF0:
	ldr r0, [r4]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0800AB3E
	ldr r0, _0800AB1C @ =rfu_CB_sendData
	bl STWI_set_Callback_M
	cmp r5, #0
	beq _0800AB28
	ldr r0, _0800AB20 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0x68
	ldr r1, _0800AB24 @ =gRfuStatic
	ldr r1, [r1]
	ldr r1, [r1, #0x14]
	adds r1, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl STWI_send_DataTxAndChangeREQ
	b _0800AB7A
	.align 2, 0
_0800AB1C: .4byte rfu_CB_sendData
_0800AB20: .4byte gRfuFixed
_0800AB24: .4byte gRfuStatic
_0800AB28:
	ldr r0, _0800AB60 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0x68
	ldr r1, _0800AB64 @ =gRfuStatic
	ldr r1, [r1]
	ldr r1, [r1, #0x14]
	adds r1, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl STWI_send_DataTxREQ
_0800AB3E:
	cmp r5, #0
	beq _0800AB7A
	ldr r0, _0800AB68 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AB70
	ldr r0, _0800AB6C @ =gSTWIStatus
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0800AB7A
	movs r0, #0x27
	bl _call_via_r1
	b _0800AB7A
	.align 2, 0
_0800AB60: .4byte gRfuFixed
_0800AB64: .4byte gRfuStatic
_0800AB68: .4byte gRfuLinkStatus
_0800AB6C: .4byte gSTWIStatus
_0800AB70:
	ldr r0, _0800AB80 @ =rfu_CB_sendData2
	bl STWI_set_Callback_M
	bl STWI_send_MS_ChangeREQ
_0800AB7A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB80: .4byte rfu_CB_sendData2

	thumb_func_start rfu_CB_sendData
rfu_CB_sendData: @ 0x0800AB84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0
	bne _0800ABEE
	movs r6, #0
	ldr r0, _0800AC0C @ =0x00008020
	mov r8, r0
_0800AB98:
	ldr r0, _0800AC10 @ =gRfuSlotStatusUNI
	lsls r2, r6, #2
	adds r0, r2, r0
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0800ABAA
	movs r0, #0
	strb r0, [r1, #2]
_0800ABAA:
	ldr r0, _0800AC14 @ =gRfuSlotStatusNI
	adds r0, r2, r0
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, r8
	bne _0800ABE4
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl rfu_STC_releaseFrame
	ldr r5, _0800AC18 @ =gRfuLinkStatus
	ldr r2, [r5]
	ldrb r1, [r4, #0x1a]
	ldrb r0, [r2, #4]
	bics r0, r1
	strb r0, [r2, #4]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r3, [r0]
	cmp r3, #1
	bne _0800ABE0
	ldr r1, [r5]
	lsls r3, r6
	ldrb r0, [r1, #7]
	orrs r3, r0
	strb r3, [r1, #7]
_0800ABE0:
	movs r0, #0x26
	strh r0, [r4]
_0800ABE4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800AB98
_0800ABEE:
	ldr r0, _0800AC18 @ =gRfuLinkStatus
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	movs r0, #0
	strb r0, [r1, #0xe]
	movs r0, #0x24
	adds r1, r7, #0
	bl rfu_STC_REQ_callback
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC0C: .4byte 0x00008020
_0800AC10: .4byte gRfuSlotStatusUNI
_0800AC14: .4byte gRfuSlotStatusNI
_0800AC18: .4byte gRfuLinkStatus

	thumb_func_start rfu_CB_sendData2
rfu_CB_sendData2: @ 0x0800AC1C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x24
	bl rfu_STC_REQ_callback
	pop {r0}
	bx r0

	thumb_func_start rfu_CB_sendData3
rfu_CB_sendData3: @ 0x0800AC2C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	beq _0800AC42
	movs r0, #0x24
	bl rfu_STC_REQ_callback
	b _0800AC4E
_0800AC42:
	cmp r0, #0xff
	bne _0800AC4E
	movs r0, #0xff
	movs r1, #0
	bl rfu_STC_REQ_callback
_0800AC4E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_constructSendLLFrame
rfu_constructSendLLFrame: @ 0x0800AC54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0800AD00 @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _0800AC6C
	b _0800AD70
_0800AC6C:
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	orrs r0, r1
	ldrb r1, [r2, #6]
	orrs r0, r1
	cmp r0, #0
	beq _0800AD70
	ldrb r0, [r2, #0xe]
	movs r0, #0
	strb r0, [r2, #0xe]
	mov r8, r0
	ldr r0, _0800AD04 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0x6c
	str r0, [sp]
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #8
	mov sb, r0
	ldr r1, _0800AD08 @ =0x00008024
	mov sl, r1
_0800AC96:
	movs r5, #0
	ldr r0, _0800AD0C @ =gRfuSlotStatusNI
	lsls r7, r6, #2
	adds r4, r7, r0
	ldr r2, [r4]
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800ACB6
	adds r0, r6, #0
	mov r1, sp
	bl rfu_STC_NI_constructLLSF
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800ACB6:
	ldr r2, [r4]
	ldrh r1, [r2, #0x34]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800ACD2
	adds r2, #0x34
	adds r0, r6, #0
	mov r1, sp
	bl rfu_STC_NI_constructLLSF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r5, r0
_0800ACD2:
	ldr r0, _0800AD10 @ =gRfuSlotStatusUNI
	adds r0, r7, r0
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, sl
	bne _0800ACEC
	adds r0, r6, #0
	mov r1, sp
	bl rfu_STC_UNI_constructLLSF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r5, r0
_0800ACEC:
	cmp r5, #0
	beq _0800AD20
	ldr r0, _0800AD00 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AD14
	add r8, r5
	b _0800AD20
	.align 2, 0
_0800AD00: .4byte gRfuLinkStatus
_0800AD04: .4byte gRfuFixed
_0800AD08: .4byte 0x00008024
_0800AD0C: .4byte gRfuSlotStatusNI
_0800AD10: .4byte gRfuSlotStatusUNI
_0800AD14:
	adds r0, r7, r6
	adds r0, #8
	lsls r5, r0
	mov r2, r8
	orrs r2, r5
	mov r8, r2
_0800AD20:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800AC96
	ldr r5, _0800AD80 @ =gRfuStatic
	mov r0, r8
	cmp r0, #0
	beq _0800AD6A
	ldr r2, [sp]
	movs r0, #3
	ands r0, r2
	ldr r6, _0800AD84 @ =gRfuLinkStatus
	ldr r1, _0800AD88 @ =gRfuFixed
	cmp r0, #0
	beq _0800AD52
	movs r4, #0
	movs r3, #3
_0800AD44:
	strb r4, [r2]
	adds r0, r2, #1
	str r0, [sp]
	adds r2, r0, #0
	ands r0, r3
	cmp r0, #0
	bne _0800AD44
_0800AD52:
	ldr r0, [r1]
	mov r2, r8
	str r2, [r0, #0x68]
	ldr r0, [r6]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AD6A
	ldr r0, [sp]
	subs r0, #0x6c
	ldr r1, [r1]
	subs r0, r0, r1
	mov r8, r0
_0800AD6A:
	ldr r0, [r5]
	mov r1, r8
	str r1, [r0, #0x14]
_0800AD70:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD80: .4byte gRfuStatic
_0800AD84: .4byte gRfuLinkStatus
_0800AD88: .4byte gRfuFixed

	thumb_func_start rfu_STC_NI_constructLLSF
rfu_STC_NI_constructLLSF: @ 0x0800AD8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r1
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r2, _0800AE08 @ =gRfuLinkStatus
	ldr r0, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, _0800AE0C @ =gUnk_0808E2C0
	adds r0, r0, r1
	mov r8, r0
	ldrh r1, [r4]
	ldr r0, _0800AE10 @ =0x00008022
	cmp r1, r0
	bne _0800ADF6
	adds r3, r4, #0
	adds r3, #0x20
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r5, r4, #4
	adds r1, r5, r1
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #0x30]
	adds r2, r2, r0
	ldr r0, [r1]
	adds r6, r3, #0
	cmp r0, r2
	blo _0800ADF6
	movs r7, #0
_0800ADD4:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0800ADE4
	strb r7, [r6]
_0800ADE4:
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r5, r1
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #0x30]
	adds r2, r2, r0
	ldr r0, [r1]
	cmp r0, r2
	bhs _0800ADD4
_0800ADF6:
	ldrh r1, [r4]
	movs r0, #0x40
	ands r0, r1
	mov sb, r1
	cmp r0, #0
	beq _0800AE14
	movs r5, #0
	b _0800AE58
	.align 2, 0
_0800AE08: .4byte gRfuLinkStatus
_0800AE0C: .4byte gUnk_0808E2C0
_0800AE10: .4byte 0x00008022
_0800AE14:
	ldr r0, _0800AE40 @ =0x00008022
	cmp sb, r0
	bne _0800AE48
	adds r3, r4, #0
	adds r3, #0x20
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r4, #4
	adds r1, r1, r0
	ldrh r7, [r4, #0x2e]
	ldr r5, [r1]
	adds r2, r5, r7
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	adds r0, r1, r0
	adds r6, r3, #0
	cmp r2, r0
	bls _0800AE44
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _0800AE5C
	.align 2, 0
_0800AE40: .4byte 0x00008022
_0800AE44:
	adds r5, r7, #0
	b _0800AE5C
_0800AE48:
	ldrh r2, [r4, #0x2e]
	ldr r0, [r4, #0x14]
	cmp r0, r2
	blo _0800AE54
	adds r5, r2, #0
	b _0800AE58
_0800AE54:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800AE58:
	adds r6, r4, #0
	adds r6, #0x20
_0800AE5C:
	movs r3, #0xf
	mov r0, sb
	ands r3, r0
	mov r1, r8
	ldrb r1, [r1, #3]
	lsls r3, r1
	ldrb r0, [r4, #0x1f]
	mov r2, r8
	ldrb r2, [r2, #4]
	lsls r0, r2
	orrs r3, r0
	ldrb r1, [r6]
	adds r0, r1, #0
	mov r7, r8
	ldrb r7, [r7, #5]
	lsls r0, r7
	orrs r3, r0
	adds r0, r4, #0
	adds r0, #0x21
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r1, r8
	ldrb r1, [r1, #6]
	lsls r0, r1
	orrs r3, r0
	orrs r3, r5
	str r3, [sp]
	ldr r2, _0800AF18 @ =gRfuLinkStatus
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AEA4
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #0x12
	orrs r3, r0
	str r3, [sp]
_0800AEA4:
	mov r2, sp
	movs r3, #0
	mov r7, r8
	ldrb r7, [r7]
	cmp r3, r7
	bhs _0800AECE
_0800AEB0:
	mov r0, ip
	ldr r1, [r0]
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	mov r7, ip
	str r1, [r7]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	blo _0800AEB0
_0800AECE:
	cmp r5, #0
	beq _0800AEEE
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r0, r4, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, _0800AF1C @ =gRfuFixed
	ldr r1, [r0]
	add r0, sp, #4
	ldr r3, [r1, #4]
	mov r1, ip
	adds r2, r5, #0
	bl _call_via_r3
_0800AEEE:
	ldrh r1, [r4]
	ldr r0, _0800AF20 @ =0x00008022
	cmp r1, r0
	bne _0800AF08
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0800AF08
	movs r0, #0
	strb r0, [r6]
_0800AF08:
	ldr r0, _0800AF18 @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r1, [r2]
	cmp r1, #1
	bne _0800AF24
	ldrb r0, [r2, #0xe]
	strb r1, [r2, #0xe]
	b _0800AF32
	.align 2, 0
_0800AF18: .4byte gRfuLinkStatus
_0800AF1C: .4byte gRfuFixed
_0800AF20: .4byte 0x00008022
_0800AF24:
	movs r0, #1
	mov r1, sl
	lsls r0, r1
	ldrb r1, [r2, #0xe]
	orrs r0, r1
	ldrb r1, [r2, #0xe]
	strb r0, [r2, #0xe]
_0800AF32:
	mov r2, r8
	ldrb r0, [r2]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start rfu_STC_UNI_constructLLSF
rfu_STC_UNI_constructLLSF: @ 0x0800AF4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _0800AF74 @ =gRfuSlotStatusUNI
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0800AF70
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0800AF78
_0800AF70:
	movs r0, #0
	b _0800B014
	.align 2, 0
_0800AF74: .4byte gRfuSlotStatusUNI
_0800AF78:
	ldr r0, _0800AFF0 @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r1, _0800AFF4 @ =gUnk_0808E2C0
	adds r5, r0, r1
	ldrh r0, [r4]
	movs r1, #0xf
	ands r1, r0
	ldrb r0, [r5, #3]
	lsls r1, r0
	ldrh r0, [r4, #4]
	orrs r1, r0
	str r1, [sp]
	ldrb r0, [r2]
	cmp r0, #1
	bne _0800AFA2
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x12
	orrs r1, r0
	str r1, [sp]
_0800AFA2:
	mov r2, sp
	movs r3, #0
	ldr r1, _0800AFF8 @ =gRfuFixed
	mov ip, r1
	add r7, sp, #4
	ldrb r0, [r5]
	cmp r3, r0
	bhs _0800AFCA
_0800AFB2:
	ldr r1, [r6]
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	str r1, [r6]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r1, [r5]
	cmp r3, r1
	blo _0800AFB2
_0800AFCA:
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	mov r2, ip
	ldr r0, [r2]
	ldrh r2, [r4, #4]
	ldr r3, [r0, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl _call_via_r3
	ldr r0, _0800AFF0 @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #1
	bne _0800AFFC
	ldrb r0, [r2, #0xe]
	movs r0, #0x10
	b _0800B008
	.align 2, 0
_0800AFF0: .4byte gRfuLinkStatus
_0800AFF4: .4byte gUnk_0808E2C0
_0800AFF8: .4byte gRfuFixed
_0800AFFC:
	movs r0, #0x10
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r2, #0xe]
	orrs r0, r1
	ldrb r1, [r2, #0xe]
_0800B008:
	strb r0, [r2, #0xe]
	ldrh r0, [r4, #4]
	ldrb r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0800B014:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start rfu_REQ_recvData
rfu_REQ_recvData: @ 0x0800B020
	push {r4, lr}
	ldr r0, _0800B054 @ =gRfuLinkStatus
	ldr r4, [r0]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0800B04C
	ldr r2, _0800B058 @ =gRfuStatic
	ldr r3, [r2]
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	orrs r0, r1
	ldrb r1, [r4, #6]
	orrs r0, r1
	movs r1, #0
	strb r0, [r3, #3]
	ldr r0, [r2]
	strb r1, [r0, #4]
	ldr r0, _0800B05C @ =rfu_CB_recvData
	bl STWI_set_Callback_M
	bl STWI_send_DataRxREQ
_0800B04C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B054: .4byte gRfuLinkStatus
_0800B058: .4byte gRfuStatic
_0800B05C: .4byte rfu_CB_recvData

	thumb_func_start rfu_CB_recvData
rfu_CB_recvData: @ 0x0800B060
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0
	bne _0800B124
	ldr r0, _0800B09C @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0800B124
	ldr r0, _0800B0A0 @ =gRfuStatic
	ldr r0, [r0]
	strb r7, [r0, #1]
	ldr r0, _0800B0A4 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800B0A8
	bl rfu_STC_PARENT_analyzeRecvPacket
	b _0800B0AC
	.align 2, 0
_0800B09C: .4byte gRfuFixed
_0800B0A0: .4byte gRfuStatic
_0800B0A4: .4byte gRfuLinkStatus
_0800B0A8:
	bl rfu_STC_CHILD_analyzeRecvPacket
_0800B0AC:
	movs r6, #0
	ldr r0, _0800B13C @ =0x00008043
	mov r8, r0
	ldr r3, _0800B140 @ =gRfuLinkStatus
_0800B0B4:
	ldr r0, _0800B144 @ =gRfuSlotStatusNI
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r4, [r1]
	ldrh r0, [r4, #0x34]
	cmp r0, r8
	bne _0800B106
	ldr r0, _0800B148 @ =gRfuStatic
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B106
	adds r5, r4, #0
	adds r5, #0x34
	adds r0, r4, #0
	adds r0, #0x61
	ldrb r2, [r0]
	cmp r2, #1
	bne _0800B0EA
	ldr r1, [r3]
	lsls r2, r6
	ldrb r0, [r1, #7]
	orrs r2, r0
	strb r2, [r1, #7]
_0800B0EA:
	adds r0, r6, #0
	movs r1, #1
	adds r2, r5, #0
	str r3, [sp]
	bl rfu_STC_releaseFrame
	ldr r3, [sp]
	ldr r2, [r3]
	ldrb r1, [r5, #0x1a]
	ldrb r0, [r2, #5]
	bics r0, r1
	strb r0, [r2, #5]
	movs r0, #0x46
	strh r0, [r4, #0x34]
_0800B106:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800B0B4
	ldr r0, _0800B148 @ =gRfuStatic
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0800B124
	adds r7, r0, #0
	movs r1, #0xe0
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r7, r0
_0800B124:
	mov r0, sb
	adds r1, r7, #0
	bl rfu_STC_REQ_callback
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B13C: .4byte 0x00008043
_0800B140: .4byte gRfuLinkStatus
_0800B144: .4byte gRfuSlotStatusNI
_0800B148: .4byte gRfuStatic

	thumb_func_start rfu_STC_PARENT_analyzeRecvPacket
rfu_STC_PARENT_analyzeRecvPacket: @ 0x0800B14C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r1, _0800B1DC @ =gRfuFixed
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	ldr r0, [r0, #4]
	lsrs r3, r0, #8
	movs r5, #0
	mov ip, r1
	movs r7, #0x1f
	ldr r4, _0800B1E0 @ =gRfuStatic
	movs r6, #1
_0800B166:
	mov r0, sp
	adds r1, r0, r5
	adds r0, r3, #0
	ands r0, r7
	strb r0, [r1]
	lsrs r3, r3, #5
	cmp r0, #0
	bne _0800B182
	ldr r0, [r4]
	adds r1, r6, #0
	lsls r1, r5
	ldrb r2, [r0, #1]
	orrs r1, r2
	strb r1, [r0, #1]
_0800B182:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0800B166
	mov r1, ip
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #8
	movs r5, #0
_0800B19A:
	mov r0, sp
	adds r1, r0, r5
	ldrb r0, [r1]
	adds r7, r5, #1
	cmp r0, #0
	beq _0800B1CC
	adds r4, r1, #0
_0800B1A8:
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl rfu_STC_analyzeLLSF
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r6, r0
	ldrb r1, [r4]
	subs r1, r1, r0
	strb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800B1CC
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0800B1A8
_0800B1CC:
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0800B19A
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B1DC: .4byte gRfuFixed
_0800B1E0: .4byte gRfuStatic

	thumb_func_start rfu_STC_CHILD_analyzeRecvPacket
rfu_STC_CHILD_analyzeRecvPacket: @ 0x0800B1E4
	push {r4, r5, r6, lr}
	ldr r0, _0800B234 @ =gRfuFixed
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	movs r4, #0x7f
	ands r4, r0
	adds r5, r1, #0
	adds r5, #8
	cmp r4, #0
	bne _0800B204
	ldr r0, _0800B238 @ =gRfuStatic
	ldr r1, [r0]
	movs r0, #0xf
	strb r0, [r1, #1]
_0800B204:
	movs r0, #0x80
	lsls r0, r0, #8
	adds r6, r0, #0
_0800B20A:
	cmp r4, #0
	beq _0800B22C
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl rfu_STC_analyzeLLSF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r5, r0
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _0800B20A
_0800B22C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B234: .4byte gRfuFixed
_0800B238: .4byte gRfuStatic

	thumb_func_start rfu_STC_analyzeLLSF
rfu_STC_analyzeLLSF: @ 0x0800B23C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r2, _0800B270 @ =gRfuLinkStatus
	ldr r0, [r2]
	ldrb r0, [r0]
	mvns r0, r0
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0800B274 @ =gUnk_0808E2C0
	adds r6, r0, r1
	ldrb r0, [r6]
	cmp r3, r0
	bhs _0800B278
	adds r0, r3, #0
	b _0800B46A
	.align 2, 0
_0800B270: .4byte gRfuLinkStatus
_0800B274: .4byte gUnk_0808E2C0
_0800B278:
	movs r5, #0
	movs r4, #0
	ldrb r3, [r6, #1]
	ldrb r1, [r6, #7]
	mov r8, r1
	ldr r2, [sp]
	mov sb, r2
	cmp r4, r0
	bhs _0800B2A0
	adds r2, r0, #0
_0800B28C:
	ldrb r0, [r7]
	lsls r1, r4, #3
	lsls r0, r1
	orrs r5, r0
	adds r7, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r2
	blo _0800B28C
_0800B2A0:
	adds r0, r5, #0
	lsrs r0, r3
	mov r3, r8
	ands r0, r3
	ldr r1, _0800B378 @ =0xFFFFFF00
	mov sl, r1
	mov r3, sl
	mov r2, sb
	ands r3, r2
	orrs r3, r0
	str r3, [sp]
	adds r0, r5, #0
	ldrb r1, [r6, #2]
	lsrs r0, r1
	ldrb r1, [r6, #8]
	ands r0, r1
	lsls r0, r0, #8
	ldr r4, _0800B37C @ =0xFFFF00FF
	adds r2, r4, #0
	ands r2, r3
	orrs r2, r0
	str r2, [sp]
	adds r0, r5, #0
	ldrb r3, [r6, #3]
	lsrs r0, r3
	ldrb r1, [r6, #9]
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r3, _0800B380 @ =0xFF00FFFF
	ands r3, r2
	orrs r3, r0
	str r3, [sp]
	adds r0, r5, #0
	ldrb r1, [r6, #4]
	lsrs r0, r1
	ldrb r1, [r6, #0xa]
	ands r0, r1
	lsls r0, r0, #0x18
	ldr r2, _0800B384 @ =0x00FFFFFF
	mov r8, r2
	mov r1, r8
	ands r1, r3
	orrs r1, r0
	mov r8, r1
	str r1, [sp]
	adds r1, r5, #0
	ldrb r2, [r6, #5]
	lsrs r1, r2
	ldrb r0, [r6, #0xb]
	ands r1, r0
	mov sb, sp
	ldr r2, [sp, #4]
	mov r3, sl
	ands r2, r3
	orrs r2, r1
	str r2, [sp, #4]
	adds r0, r5, #0
	ldrb r1, [r6, #6]
	lsrs r0, r1
	ldrb r1, [r6, #0xc]
	ands r0, r1
	lsls r0, r0, #8
	ands r4, r2
	orrs r4, r0
	str r4, [sp, #4]
	ldrh r0, [r6, #0xe]
	ands r5, r0
	lsls r1, r5, #0x10
	ldr r0, _0800B388 @ =0x0000FFFF
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #4]
	lsrs r0, r0, #0x10
	ldrb r6, [r6]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B346
	b _0800B468
_0800B346:
	ldr r2, _0800B38C @ =gRfuLinkStatus
	ldr r3, [r2]
	ldrb r2, [r3]
	cmp r2, #1
	bne _0800B404
	ldrb r0, [r3, #2]
	mov r5, ip
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	bne _0800B35E
	b _0800B468
_0800B35E:
	mov r1, r8
	lsrs r0, r1, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0800B390
	mov r0, ip
	mov r1, sp
	adds r2, r7, #0
	bl rfu_STC_UNI_receive
	b _0800B468
	.align 2, 0
_0800B378: .4byte 0xFFFFFF00
_0800B37C: .4byte 0xFFFF00FF
_0800B380: .4byte 0xFF00FFFF
_0800B384: .4byte 0x00FFFFFF
_0800B388: .4byte 0x0000FFFF
_0800B38C: .4byte gRfuLinkStatus
_0800B390:
	mov r5, sb
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _0800B3A4
	mov r0, ip
	mov r1, sp
	adds r2, r7, #0
	bl rfu_STC_NI_receive_Receiver
	b _0800B468
_0800B3A4:
	movs r4, #0
	ldr r1, _0800B3BC @ =gRfuSlotStatusNI
	ldr r0, [r1]
	ldrb r0, [r0, #0x1a]
	mov r5, ip
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	beq _0800B3C0
	ldrb r0, [r3, #4]
	b _0800B3E6
	.align 2, 0
_0800B3BC: .4byte gRfuSlotStatusNI
_0800B3C0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _0800B468
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	mov r2, ip
	asrs r0, r2
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0800B3C0
	ldr r3, _0800B400 @ =gRfuLinkStatus
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	mov r5, ip
_0800B3E6:
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	beq _0800B3C0
	cmp r4, #3
	bhi _0800B468
	adds r0, r4, #0
	mov r1, ip
	mov r2, sp
	adds r3, r7, #0
	bl rfu_STC_NI_receive_Sender
	b _0800B468
	.align 2, 0
_0800B400: .4byte gRfuLinkStatus
_0800B404:
	ldrb r1, [r3, #2]
	mov r2, sb
	ldrb r0, [r2, #1]
	adds r5, r1, #0
	ands r5, r0
	cmp r5, #0
	beq _0800B468
	movs r4, #0
	movs r6, #1
_0800B416:
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _0800B45E
	mov r1, sp
	ldrb r0, [r1, #2]
	cmp r0, #4
	bne _0800B432
	adds r0, r4, #0
	adds r2, r7, #0
	bl rfu_STC_UNI_receive
	b _0800B45E
_0800B432:
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _0800B444
	adds r0, r4, #0
	mov r1, sp
	adds r2, r7, #0
	bl rfu_STC_NI_receive_Receiver
	b _0800B45E
_0800B444:
	ldr r0, _0800B47C @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _0800B45E
	adds r0, r4, #0
	adds r1, r4, #0
	mov r2, sp
	adds r3, r7, #0
	bl rfu_STC_NI_receive_Sender
_0800B45E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0800B416
_0800B468:
	mov r0, sl
_0800B46A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B47C: .4byte gRfuLinkStatus

	thumb_func_start rfu_STC_UNI_receive
rfu_STC_UNI_receive: @ 0x0800B480
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	str r2, [sp]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, _0800B4B4 @ =gRfuSlotStatusUNI
	lsls r1, r7, #2
	adds r1, r1, r2
	ldr r3, [r1]
	adds r5, r3, #0
	adds r5, #0xc
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #2]
	ldr r0, [r1]
	ldr r0, [r0, #0x18]
	adds r1, r2, #0
	ldrh r2, [r6, #6]
	cmp r0, r2
	bhs _0800B4BC
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldr r0, _0800B4B8 @ =0x00000701
	strh r0, [r5, #2]
	b _0800B50A
	.align 2, 0
_0800B4B4: .4byte gRfuSlotStatusUNI
_0800B4B8: .4byte 0x00000701
_0800B4BC:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0800B4D4
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0800B4E0
	ldr r0, _0800B4D0 @ =0x00000709
	strh r0, [r5, #2]
	b _0800B50A
	.align 2, 0
_0800B4D0: .4byte 0x00000709
_0800B4D4:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0800B4E0
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r5, #2]
_0800B4E0:
	movs r4, #0
	ldr r0, _0800B528 @ =0x00008042
	strh r0, [r5]
	ldrh r0, [r6, #6]
	strh r0, [r5, #4]
	ldrh r2, [r6, #6]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	str r0, [sp, #4]
	ldr r0, _0800B52C @ =gRfuFixed
	ldr r0, [r0]
	add r1, sp, #4
	ldr r3, [r0, #4]
	mov r0, sp
	bl _call_via_r3
	movs r0, #1
	strb r0, [r5, #6]
	strh r4, [r5]
_0800B50A:
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0800B51E
	ldr r0, _0800B530 @ =gRfuStatic
	ldr r2, [r0]
	movs r0, #0x10
	lsls r0, r7
	ldrb r1, [r2, #4]
	orrs r0, r1
	strb r0, [r2, #4]
_0800B51E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B528: .4byte 0x00008042
_0800B52C: .4byte gRfuFixed
_0800B530: .4byte gRfuStatic

	thumb_func_start rfu_STC_NI_receive_Sender
rfu_STC_NI_receive_Sender: @ 0x0800B534
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r1, _0800B600 @ =gRfuSlotStatusNI
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r0
	ldrh r0, [r0]
	mov sb, r0
	mov r0, ip
	adds r0, #0x21
	ldrb r2, [r6, #4]
	adds r0, r0, r2
	ldrb r0, [r0]
	str r0, [sp]
	ldrb r2, [r6, #2]
	cmp r2, #2
	bne _0800B570
	ldr r0, _0800B604 @ =0x00008022
	cmp sb, r0
	beq _0800B58A
_0800B570:
	cmp r2, #1
	bne _0800B57A
	ldr r0, _0800B608 @ =0x00008021
	cmp sb, r0
	beq _0800B58A
_0800B57A:
	movs r3, #0x1b
	add r3, ip
	mov r8, r3
	cmp r2, #3
	bne _0800B5AE
	ldr r0, _0800B60C @ =0x00008023
	cmp sb, r0
	bne _0800B5AE
_0800B58A:
	ldrb r1, [r6, #4]
	mov r0, ip
	adds r0, #0x21
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r7, #0x1b
	add r7, ip
	mov r8, r7
	ldrb r2, [r6, #5]
	cmp r0, r2
	bne _0800B5AE
	adds r0, r7, r1
	movs r1, #1
	mov r3, sl
	lsls r1, r3
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_0800B5AE:
	ldrb r2, [r6, #4]
	mov r7, r8
	adds r0, r7, r2
	ldrb r0, [r0]
	mov r3, ip
	ldrb r1, [r3, #0x1a]
	ands r0, r1
	cmp r0, r1
	bne _0800B6AA
	adds r3, #0x21
	adds r2, r3, r2
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	ldrb r0, [r6, #4]
	add r0, r8
	strb r1, [r0]
	mov r7, ip
	ldrh r1, [r7]
	ldr r2, _0800B610 @ =0x00007FDF
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r3, #0
	cmp r0, #1
	bhi _0800B69C
	ldr r0, _0800B608 @ =0x00008021
	cmp r1, r0
	bne _0800B614
	ldrb r1, [r6, #4]
	lsls r1, r1, #2
	subs r3, #0x1d
	adds r1, r3, r1
	ldrh r2, [r7, #0x2e]
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	b _0800B62A
	.align 2, 0
_0800B600: .4byte gRfuSlotStatusNI
_0800B604: .4byte 0x00008022
_0800B608: .4byte 0x00008021
_0800B60C: .4byte 0x00008023
_0800B610: .4byte 0x00007FDF
_0800B614:
	ldrb r2, [r6, #4]
	lsls r2, r2, #2
	mov r3, ip
	adds r3, #4
	adds r2, r3, r2
	mov r7, ip
	ldrh r1, [r7, #0x2e]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0800B62A:
	mov r0, ip
	ldrh r1, [r0, #0x2e]
	ldr r0, [r0, #0x14]
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x14]
	cmp r0, #0
	beq _0800B63E
	cmp r0, #0
	bge _0800B6AA
_0800B63E:
	mov r0, ip
	adds r0, #0x20
	movs r2, #0
	strb r2, [r0]
	mov r7, ip
	ldrh r1, [r7]
	ldr r0, _0800B680 @ =0x00008021
	cmp r1, r0
	bne _0800B688
	movs r4, #0
_0800B652:
	adds r0, r5, r4
	movs r1, #1
	strb r1, [r0]
	lsls r1, r4, #2
	adds r1, r3, r1
	mov r2, ip
	ldrh r0, [r2, #0x2e]
	adds r2, r0, #0
	muls r2, r4, r2
	mov r7, ip
	ldr r0, [r7, #0x28]
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0800B652
	ldr r0, [r7, #0x30]
	str r0, [r7, #0x14]
	ldr r0, _0800B684 @ =0x00008022
	strh r0, [r7]
	b _0800B6AA
	.align 2, 0
_0800B680: .4byte 0x00008021
_0800B684: .4byte 0x00008022
_0800B688:
	strb r2, [r5]
	mov r0, ip
	str r2, [r0, #0x14]
	ldr r0, _0800B698 @ =0x00008023
	mov r1, ip
	strh r0, [r1]
	b _0800B6AA
	.align 2, 0
_0800B698: .4byte 0x00008023
_0800B69C:
	lsls r1, r1, #0x10
	ldr r0, _0800B70C @ =0x80230000
	cmp r1, r0
	bne _0800B6AA
	ldr r0, _0800B710 @ =0x00008020
	mov r2, ip
	strh r0, [r2]
_0800B6AA:
	mov r3, ip
	ldrh r0, [r3]
	cmp r0, sb
	bne _0800B6D4
	ldrb r2, [r6, #4]
	mov r0, ip
	adds r0, #0x21
	adds r0, r0, r2
	ldrb r0, [r0]
	ldr r7, [sp]
	cmp r0, r7
	bne _0800B6D4
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	mov r2, sl
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B6FA
_0800B6D4:
	ldr r4, _0800B714 @ =0x04000208
	ldrh r2, [r4]
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0800B718 @ =gRfuStatic
	ldr r3, [r0]
	movs r0, #0x10
	mov r7, sl
	lsls r0, r7
	ldrb r1, [r3, #2]
	orrs r0, r1
	movs r1, #0
	strb r0, [r3, #2]
	lsls r0, r7, #2
	ldr r3, _0800B71C @ =gRfuSlotStatusNI
	adds r0, r0, r3
	ldr r0, [r0]
	strh r1, [r0, #2]
	strh r2, [r4]
_0800B6FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B70C: .4byte 0x80230000
_0800B710: .4byte 0x00008020
_0800B714: .4byte 0x04000208
_0800B718: .4byte gRfuStatic
_0800B71C: .4byte gRfuSlotStatusNI

	thumb_func_start rfu_STC_NI_receive_Receiver
rfu_STC_NI_receive_Receiver: @ 0x0800B720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r1, #0
	str r2, [sp]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r7, #0
	ldr r1, _0800B780 @ =gRfuSlotStatusNI
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r5, r4, #0
	adds r5, #0x34
	ldrh r0, [r4, #0x34]
	mov sb, r0
	ldrb r0, [r6, #4]
	adds r3, r4, #0
	adds r3, #0x55
	adds r0, r3, r0
	ldrb r0, [r0]
	mov sl, r0
	ldrb r0, [r6, #2]
	cmp r0, #3
	bne _0800B790
	ldr r0, _0800B784 @ =gRfuStatic
	ldr r2, [r0]
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r2, #1]
	orrs r0, r1
	strb r0, [r2, #1]
	ldrh r1, [r4, #0x34]
	ldr r0, _0800B788 @ =0x00008042
	cmp r1, r0
	bne _0800B7D6
	adds r0, r4, #0
	adds r0, #0x54
	strb r7, [r0]
	strb r7, [r3]
	ldr r0, _0800B78C @ =0x00008043
	strh r0, [r4, #0x34]
	b _0800B7D6
	.align 2, 0
_0800B780: .4byte gRfuSlotStatusNI
_0800B784: .4byte gRfuStatic
_0800B788: .4byte 0x00008042
_0800B78C: .4byte 0x00008043
_0800B790:
	cmp r0, #2
	bne _0800B7BC
	ldr r0, _0800B7B4 @ =0x00008041
	cmp sb, r0
	bne _0800B7A8
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0800B7A8
	mov r0, r8
	adds r1, r5, #0
	bl rfu_STC_NI_initSlot_asRecvDataEntity
_0800B7A8:
	ldrh r1, [r5]
	ldr r0, _0800B7B8 @ =0x00008042
	cmp r1, r0
	bne _0800B7D6
	b _0800B7DA
	.align 2, 0
_0800B7B4: .4byte 0x00008041
_0800B7B8: .4byte 0x00008042
_0800B7BC:
	cmp r0, #1
	bne _0800B7D6
	ldr r7, _0800B888 @ =0x00008041
	cmp sb, r7
	beq _0800B7DA
	mov r0, r8
	adds r1, r5, #0
	bl rfu_STC_NI_initSlot_asRecvControllData
	ldrh r0, [r4, #0x34]
	cmp r0, r7
	bne _0800B876
	movs r7, #1
_0800B7D6:
	cmp r7, #0
	beq _0800B830
_0800B7DA:
	ldrb r2, [r6, #5]
	ldrb r3, [r6, #4]
	adds r4, r5, #0
	adds r4, #0x21
	adds r0, r4, r3
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	cmp r2, r0
	bne _0800B830
	ldr r0, _0800B88C @ =gRfuFixed
	ldr r0, [r0]
	lsls r1, r3, #2
	adds r1, #4
	adds r1, r5, r1
	ldrh r2, [r6, #6]
	ldr r3, [r0, #4]
	mov r0, sp
	bl _call_via_r3
	ldrh r1, [r5]
	ldr r0, _0800B890 @ =0x00008042
	cmp r1, r0
	bne _0800B820
	ldrb r0, [r6, #4]
	lsls r0, r0, #2
	adds r2, r5, #4
	adds r2, r2, r0
	ldrh r0, [r5, #0x2e]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0800B820:
	ldrh r1, [r6, #6]
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	ldrb r0, [r6, #4]
	adds r0, r4, r0
	ldrb r1, [r6, #5]
	strb r1, [r0]
_0800B830:
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _0800B876
	ldrb r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x20
	strb r0, [r1]
	ldrh r0, [r5]
	cmp r0, sb
	bne _0800B858
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r2, [r6, #4]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, sl
	bne _0800B858
	ldrb r6, [r6, #5]
	cmp r0, r6
	bne _0800B876
_0800B858:
	ldr r3, _0800B894 @ =0x04000208
	ldrh r2, [r3]
	movs r0, #0
	strh r0, [r3]
	ldr r0, _0800B898 @ =gRfuStatic
	ldr r4, [r0]
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r4, #2]
	orrs r0, r1
	movs r1, #0
	strb r0, [r4, #2]
	strh r1, [r5, #2]
	strh r2, [r3]
_0800B876:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B888: .4byte 0x00008041
_0800B88C: .4byte gRfuFixed
_0800B890: .4byte 0x00008042
_0800B894: .4byte 0x04000208
_0800B898: .4byte gRfuStatic

	thumb_func_start rfu_STC_NI_initSlot_asRecvControllData
rfu_STC_NI_initSlot_asRecvControllData: @ 0x0800B89C
	push {r4, r5, r6, r7, lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0800B8B8 @ =gRfuLinkStatus
	ldr r3, [r0]
	ldrb r1, [r3]
	mov ip, r0
	cmp r1, #1
	bne _0800B8BC
	movs r5, #3
	adds r1, r3, #0
	adds r1, #0xf
	b _0800B8C4
	.align 2, 0
_0800B8B8: .4byte gRfuLinkStatus
_0800B8BC:
	movs r5, #2
	adds r0, r4, #0
	adds r0, #0x10
	adds r1, r3, r0
_0800B8C4:
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, r6, #0
	ldrh r3, [r2]
	cmp r3, #0
	bne _0800B922
	ldrb r0, [r1]
	cmp r0, r5
	bhs _0800B8FC
	movs r0, #0x49
	strh r0, [r2]
	ldr r0, _0800B8F4 @ =0x00000702
	strh r0, [r2, #0x18]
	ldr r0, _0800B8F8 @ =gRfuStatic
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	adds r0, r6, #0
	orrs r0, r1
	strb r0, [r2, #4]
	b _0800B922
	.align 2, 0
_0800B8F4: .4byte 0x00000702
_0800B8F8: .4byte gRfuStatic
_0800B8FC:
	strh r3, [r2, #0x18]
	ldrb r0, [r1]
	subs r0, r0, r5
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x2d
	str r0, [r2, #4]
	movs r0, #7
	str r0, [r2, #0x14]
	strb r7, [r2, #0x1f]
	strh r3, [r2, #0x2e]
	strb r4, [r2, #0x1a]
	ldr r0, _0800B928 @ =0x00008041
	strh r0, [r2]
	mov r0, ip
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	orrs r4, r0
	strb r4, [r1, #5]
_0800B922:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B928: .4byte 0x00008041

	thumb_func_start rfu_STC_NI_initSlot_asRecvDataEntity
rfu_STC_NI_initSlot_asRecvDataEntity: @ 0x0800B92C
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800B950
	ldr r0, _0800B94C @ =gRfuLinkStatus
	lsls r1, r5, #5
	adds r1, #0x14
	ldr r0, [r0]
	adds r0, r0, r1
	adds r0, #4
	b _0800B9A6
	.align 2, 0
_0800B94C: .4byte gRfuLinkStatus
_0800B950:
	ldr r1, _0800B994 @ =gRfuSlotStatusNI
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r4, #0x30]
	ldr r0, [r2, #0x6c]
	cmp r1, r0
	bls _0800B9A4
	movs r1, #0x80
	lsls r1, r1, #0x11
	lsls r1, r5
	lsrs r1, r1, #0x18
	ldr r0, _0800B998 @ =gRfuStatic
	ldr r3, [r0]
	ldrb r2, [r3, #4]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #4]
	ldr r0, _0800B99C @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	bics r0, r1
	strb r0, [r2, #5]
	ldr r0, _0800B9A0 @ =0x00000701
	strh r0, [r4, #0x18]
	movs r0, #0x47
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl rfu_STC_releaseFrame
	b _0800B9D8
	.align 2, 0
_0800B994: .4byte gRfuSlotStatusNI
_0800B998: .4byte gRfuStatic
_0800B99C: .4byte gRfuLinkStatus
_0800B9A0: .4byte 0x00000701
_0800B9A4:
	ldr r0, [r2, #0x68]
_0800B9A6:
	str r0, [r4, #4]
	movs r3, #0
	adds r6, r4, #0
	adds r6, #0x21
	movs r7, #0
	adds r5, r4, #4
_0800B9B2:
	adds r0, r6, r3
	strb r7, [r0]
	lsls r1, r3, #2
	adds r1, r5, r1
	ldrh r0, [r4, #0x2e]
	adds r2, r0, #0
	muls r2, r3, r2
	ldr r0, [r4, #4]
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800B9B2
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x14]
	ldr r0, _0800B9E0 @ =0x00008042
	strh r0, [r4]
_0800B9D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B9E0: .4byte 0x00008042

	thumb_func_start rfu_NI_checkCommFailCounter
rfu_NI_checkCommFailCounter: @ 0x0800B9E4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800BA70 @ =gRfuLinkStatus
	ldr r0, [r2]
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	orrs r0, r1
	cmp r0, #0
	beq _0800BA6A
	ldr r1, _0800BA74 @ =0x04000208
	ldrh r0, [r1]
	mov ip, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800BA78 @ =gRfuStatic
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	lsrs r7, r0, #4
	movs r3, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r4, _0800BA7C @ =gRfuSlotStatusNI
_0800BA0E:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r3
	lsrs r2, r0, #0x18
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	ands r0, r2
	cmp r0, #0
	beq _0800BA36
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	ands r0, r2
	cmp r0, #0
	bne _0800BA36
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_0800BA36:
	ldr r0, [r5]
	ldrb r0, [r0, #5]
	ands r0, r2
	cmp r0, #0
	beq _0800BA54
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _0800BA54
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #0x36]
	adds r0, #1
	strh r0, [r1, #0x36]
_0800BA54:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800BA0E
	ldr r0, [r6]
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, _0800BA74 @ =0x04000208
	mov r1, ip
	strh r1, [r0]
_0800BA6A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA70: .4byte gRfuLinkStatus
_0800BA74: .4byte 0x04000208
_0800BA78: .4byte gRfuStatic
_0800BA7C: .4byte gRfuSlotStatusNI

	thumb_func_start rfu_REQ_noise
rfu_REQ_noise: @ 0x0800BA80
	push {lr}
	ldr r0, _0800BA94 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	movs r0, #1
	movs r1, #0
	bl STWI_send_TestModeREQ
	pop {r0}
	bx r0
	.align 2, 0
_0800BA94: .4byte rfu_STC_REQ_callback

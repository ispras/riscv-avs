	#==================================================================================================
	#
	# This test program was automatically generated by the MicroTESK tool
	# Generation started: Fri Oct 18 10:41:56 AST 2019
	#
	# Ivannikov Institute for System Programming of the Russian Academy of Sciences (ISP RAS)
	# 25 Alexander Solzhenitsyn st., Moscow, 109004, Russia
	#
	# http://www.microtesk.org
	# http://forge.ispras.ru/projects/microtesk
	#
	#==================================================================================================

	#==================================================================================================
	# Prologue (riscv_test.rb:231)

	#====================================== .section .text.init =======================================
	.section .text.init
	.align 6
	.weak stvec_handler
	.weak mtvec_handler
	.globl _start
_start:
	j reset_vector
	.align 2
trap_vector:
	csrr t5, mcause
	li t6, 0x8
	beq t5, t6, write_tohost
	li t6, 0x9
	beq t5, t6, write_tohost
	li t6, 0xb
	beq t5, t6, write_tohost
	la t5, mtvec_handler
	beqz t5, 1f
	jr t5
1:
	csrr t5, mcause
	bgez t5, handle_exception
	j other_exception
handle_exception:
other_exception:
1:
	ori gp, gp, 1337
write_tohost:
	nop
	sw gp, tohost, t5
	nop
	j write_tohost
reset_vector:
	csrr a0, mhartid
1:
	bnez a0, 1b
	la t0, 1f
	csrw mtvec, t0
	csrwi satp, 0x0
	.align 2
1:
	la t0, 1f
	csrw mtvec, t0
	li t0, 0xffffffffffffffff
	csrw pmpaddr0, t0
	li t0, 0x1f
	csrw pmpcfg0, t0
	.align 2
1:
	la t0, 1f
	csrw mtvec, t0
	csrwi medeleg, 0x0
	csrwi mideleg, 0x0
	csrwi mie, 0x0
	.align 2
1:
	li gp, 0x0
	la t0, trap_vector
	csrw mtvec, t0
	li a0, 0x1
	slli a0, a0, 0x1f
	bgez a0, 1f
	fence
	li gp, 0x1
	ecall
1:
	la t0, stvec_handler
	beqz t0, 1f
	csrw stvec, t0
	li t0, 0xb109
	csrw medeleg, t0
	csrr t1, medeleg
	bne t0, t1, other_exception
1:
	csrwi mstatus, 0x0

	# RVTEST_FP_ENABLE
	li a0, 0x2000
	csrs mstatus, a0
	csrwi fcsr, 0x0

	la t0, 1f
	csrw mepc, t0
	csrr a0, mhartid
	mret
1:

	#==================================================================================================
	# External Code (riscv_test_macros.rb:503)

test_2:
	li gp, 0x2
	la a0, test_2_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.w.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_3:
	li gp, 0x3
	la a0, test_3_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.w.s a0, ft0
	fsflags a1, zero
	li a2, 0x0
	bne a0, a3, fail
	bne a1, a2, fail
test_4:
	li gp, 0x4
	la a0, test_4_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.w.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_5:
	li gp, 0x5
	la a0, test_5_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.w.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_6:
	li gp, 0x6
	la a0, test_6_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.w.s a0, ft0
	fsflags a1, zero
	li a2, 0x0
	bne a0, a3, fail
	bne a1, a2, fail
test_7:
	li gp, 0x7
	la a0, test_7_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.w.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_8:
	li gp, 0x8
	la a0, test_8_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.w.s a0, ft0
	fsflags a1, zero
	li a2, 0x10
	bne a0, a3, fail
	bne a1, a2, fail
test_9:
	li gp, 0x9
	la a0, test_9_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.w.s a0, ft0
	fsflags a1, zero
	li a2, 0x10
	bne a0, a3, fail
	bne a1, a2, fail
test_12:
	li gp, 0xc
	la a0, test_12_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.wu.s a0, ft0
	fsflags a1, zero
	li a2, 0x10
	bne a0, a3, fail
	bne a1, a2, fail
test_13:
	li gp, 0xd
	la a0, test_13_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.wu.s a0, ft0
	fsflags a1, zero
	li a2, 0x10
	bne a0, a3, fail
	bne a1, a2, fail
test_14:
	li gp, 0xe
	la a0, test_14_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.wu.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_15:
	li gp, 0xf
	la a0, test_15_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.wu.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_16:
	li gp, 0x10
	la a0, test_16_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.wu.s a0, ft0
	fsflags a1, zero
	li a2, 0x0
	bne a0, a3, fail
	bne a1, a2, fail
test_17:
	li gp, 0x11
	la a0, test_17_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.wu.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_18:
	li gp, 0x12
	la a0, test_18_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.wu.s a0, ft0
	fsflags a1, zero
	li a2, 0x10
	bne a0, a3, fail
	bne a1, a2, fail
test_19:
	li gp, 0x13
	la a0, test_19_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.wu.s a0, ft0
	fsflags a1, zero
	li a2, 0x0
	bne a0, a3, fail
	bne a1, a2, fail
test_22:
	li gp, 0x16
	la a0, test_22_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.l.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_23:
	li gp, 0x17
	la a0, test_23_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.l.s a0, ft0
	fsflags a1, zero
	li a2, 0x0
	bne a0, a3, fail
	bne a1, a2, fail
test_24:
	li gp, 0x18
	la a0, test_24_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.l.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_25:
	li gp, 0x19
	la a0, test_25_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.l.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_26:
	li gp, 0x1a
	la a0, test_26_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.l.s a0, ft0
	fsflags a1, zero
	li a2, 0x0
	bne a0, a3, fail
	bne a1, a2, fail
test_27:
	li gp, 0x1b
	la a0, test_27_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.l.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_32:
	li gp, 0x20
	la a0, test_32_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.lu.s a0, ft0
	fsflags a1, zero
	li a2, 0x10
	bne a0, a3, fail
	bne a1, a2, fail
test_33:
	li gp, 0x21
	la a0, test_33_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.lu.s a0, ft0
	fsflags a1, zero
	li a2, 0x10
	bne a0, a3, fail
	bne a1, a2, fail
test_34:
	li gp, 0x22
	la a0, test_34_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.lu.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_35:
	li gp, 0x23
	la a0, test_35_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.lu.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_36:
	li gp, 0x24
	la a0, test_36_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.lu.s a0, ft0
	fsflags a1, zero
	li a2, 0x0
	bne a0, a3, fail
	bne a1, a2, fail
test_37:
	li gp, 0x25
	la a0, test_37_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.lu.s a0, ft0
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_38:
	li gp, 0x26
	la a0, test_38_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fcvt.lu.s a0, ft0
	fsflags a1, zero
	li a2, 0x10
	bne a0, a3, fail
	bne a1, a2, fail
test_42:
	la ra, tdat
	flw ft1, 0(ra)
	fcvt.w.s ra, ft1
	li t4, 0x7fffffff
	li gp, 0x2a
	bne ra, t4, fail
test_44:
	la ra, tdat
	flw ft1, 8(ra)
	fcvt.w.s ra, ft1
	li t4, 0xffffffff80000000
	li gp, 0x2c
	bne ra, t4, fail
test_43:
	la ra, tdat
	flw ft1, 0(ra)
	fcvt.l.s ra, ft1
	li t4, 0x7fffffffffffffff
	li gp, 0x2b
	bne ra, t4, fail
test_45:
	la ra, tdat
	flw ft1, 8(ra)
	fcvt.l.s ra, ft1
	li t4, 0x8000000000000000
	li gp, 0x2d
	bne ra, t4, fail
test_52:
	la ra, tdat
	flw ft1, 4(ra)
	fcvt.w.s ra, ft1
	li t4, 0x7fffffff
	li gp, 0x34
	bne ra, t4, fail
test_54:
	la ra, tdat
	flw ft1, 12(ra)
	fcvt.w.s ra, ft1
	li t4, 0x7fffffff
	li gp, 0x36
	bne ra, t4, fail
test_53:
	la ra, tdat
	flw ft1, 4(ra)
	fcvt.l.s ra, ft1
	li t4, 0x7fffffffffffffff
	li gp, 0x35
	bne ra, t4, fail
test_55:
	la ra, tdat
	flw ft1, 12(ra)
	fcvt.l.s ra, ft1
	li t4, 0x7fffffffffffffff
	li gp, 0x37
	bne ra, t4, fail
test_62:
	la ra, tdat
	flw ft1, 0(ra)
	fcvt.wu.s ra, ft1
	li t4, 0xffffffffffffffff
	li gp, 0x3e
	bne ra, t4, fail
test_63:
	la ra, tdat
	flw ft1, 4(ra)
	fcvt.wu.s ra, ft1
	li t4, 0xffffffffffffffff
	li gp, 0x3f
	bne ra, t4, fail
test_64:
	la ra, tdat
	flw ft1, 8(ra)
	fcvt.wu.s ra, ft1
	li t4, 0x0
	li gp, 0x40
	bne ra, t4, fail
test_65:
	la ra, tdat
	flw ft1, 12(ra)
	fcvt.wu.s ra, ft1
	li t4, 0xffffffffffffffff
	li gp, 0x41
	bne ra, t4, fail
test_66:
	la ra, tdat
	flw ft1, 0(ra)
	fcvt.lu.s ra, ft1
	li t4, 0xffffffffffffffff
	li gp, 0x42
	bne ra, t4, fail
test_67:
	la ra, tdat
	flw ft1, 4(ra)
	fcvt.lu.s ra, ft1
	li t4, 0xffffffffffffffff
	li gp, 0x43
	bne ra, t4, fail
test_68:
	la ra, tdat
	flw ft1, 8(ra)
	fcvt.lu.s ra, ft1
	li t4, 0x0
	li gp, 0x44
	bne ra, t4, fail
test_69:
	la ra, tdat
	flw ft1, 12(ra)
	fcvt.lu.s ra, ft1
	li t4, 0xffffffffffffffff
	li gp, 0x45
	bne ra, t4, fail

	#==================================================================================================
	# Epilogue (riscv_test_macros.rb:883)

	bne zero, gp, pass
fail:
	fence
1:
	beqz gp, 1b
	sll gp, gp, ra
	or gp, gp, ra
	ecall
pass:
	fence
	li gp, 0x1
	ecall
	unimp

	#==================================================================================================
	# Data

	#============================================= .data ==============================================
	.data

	#========================================== Global Data ===========================================
	.align 4
	.pushsection .tohost,"aw",@progbits
	.align 8; .global tohost; tohost: .dword 0;
	.align 8; .global fromhost; fromhost: .dword 0;
	.popsection;
	.align 4
	.globl begin_signature
begin_signature:

tdat:
	.word 0xFFFFFFFF
	.word 0x7FFFFFFF
	.word 0xFF800000
	.word 0x7F800000
tdat_d:
	.dword 0xFFFFFFFFFFFFFFFF
	.dword 0x7FFFFFFFFFFFFFFF
	.dword 0xFFF0000000000000
	.dword 0x7FF0000000000000

	.align 4
	.globl end_signature
end_signature:
	.align 8; .global begin_regstate; begin_regstate:
	.word 128;
	.align 8; .global end_regstate; end_regstate:
	.word 4;

	.align 2
test_2_data:
	.float -1.1
	.float 0.0
	.float 0.0
	.word 0xFFFFFFFF

	.align 2
test_3_data:
	.float -1.0
	.float 0.0
	.float 0.0
	.word 0xFFFFFFFF

	.align 2
test_4_data:
	.float -0.9
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_5_data:
	.float 0.9
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_6_data:
	.float 1.0
	.float 0.0
	.float 0.0
	.word 0x1

	.align 2
test_7_data:
	.float 1.1
	.float 0.0
	.float 0.0
	.word 0x1

	.align 2
test_8_data:
	.float -3.0E9
	.float 0.0
	.float 0.0
	.word 0x80000000

	.align 2
test_9_data:
	.float 3.0E9
	.float 0.0
	.float 0.0
	.word 0x7FFFFFFF

	.align 2
test_12_data:
	.float -3.0
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_13_data:
	.float -1.0
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_14_data:
	.float -0.9
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_15_data:
	.float 0.9
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_16_data:
	.float 1.0
	.float 0.0
	.float 0.0
	.word 0x1

	.align 2
test_17_data:
	.float 1.1
	.float 0.0
	.float 0.0
	.word 0x1

	.align 2
test_18_data:
	.float -3.0E9
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_19_data:
	.float 3.0E9
	.float 0.0
	.float 0.0
	.word 0xB2D05E00

	.align 2
test_22_data:
	.float -1.1
	.float 0.0
	.float 0.0
	.word 0xFFFFFFFF

	.align 2
test_23_data:
	.float -1.0
	.float 0.0
	.float 0.0
	.word 0xFFFFFFFF

	.align 2
test_24_data:
	.float -0.9
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_25_data:
	.float 0.9
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_26_data:
	.float 1.0
	.float 0.0
	.float 0.0
	.word 0x1

	.align 2
test_27_data:
	.float 1.1
	.float 0.0
	.float 0.0
	.word 0x1

	.align 2
test_32_data:
	.float -3.0
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_33_data:
	.float -1.0
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_34_data:
	.float -0.9
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_35_data:
	.float 0.9
	.float 0.0
	.float 0.0
	.word 0x0

	.align 2
test_36_data:
	.float 1.0
	.float 0.0
	.float 0.0
	.word 0x1

	.align 2
test_37_data:
	.float 1.1
	.float 0.0
	.float 0.0
	.word 0x1

	.align 2
test_38_data:
	.float -3.0E9
	.float 0.0
	.float 0.0
	.word 0x0

.LC1:
        .string "Multiplication of given two matrices is:"
.LC2:
        .string "%d\t"
.LC3:
        .string "Total time taken in seconds %d:\n"
mulMat(int (*) [2], int (*) [2]):
        addi    sp,sp,-48
        sw      ra,44(sp)
        sw      s0,40(sp)
        sw      s1,36(sp)
        sw      s2,32(sp)
        sw      s3,28(sp)
        sw      s4,24(sp)
        sw      s5,20(sp)
        mv      s3,a0
        mv      s1,a1
        lui     a0,%hi(.LC1)
        addi    a0,a0,%lo(.LC1)
        call    puts
        call    clock
        mv      s5,a0
        mv      s2,sp
        mv      s0,s3
        addi    s3,s3,16
        lui     s4,%hi(.LC2)
.L2:
        lw      a1,0(s0)
        lw      a5,0(s1)
        mul     a1,a1,a5
        lw      a5,4(s0)
        lw      a4,8(s1)
        mul     a5,a5,a4
        add     a1,a1,a5
        sw      a1,0(s2)
        addi    a0,s4,%lo(.LC2)
        call    printf
        lw      a1,4(s0)
        lw      a5,12(s1)
        mul     a1,a1,a5
        lw      a5,0(s0)
        lw      a4,4(s1)
        mul     a5,a5,a4
        add     a1,a1,a5
        sw      a1,4(s2)
        addi    a0,s4,%lo(.LC2)
        call    printf
        li      a0,10
        call    putchar
        addi    s2,s2,8
        addi    s0,s0,8
        bne     s3,s0,.L2
        call    clock
        sub     a1,a0,s5
        lui     a0,%hi(.LC3)
        addi    a0,a0,%lo(.LC3)
        call    printf
        lw      ra,44(sp)
        lw      s0,40(sp)
        lw      s1,36(sp)
        lw      s2,32(sp)
        lw      s3,28(sp)
        lw      s4,24(sp)
        lw      s5,20(sp)
        addi    sp,sp,48
        jr      ra
main:
        addi    sp,sp,-48
        sw      ra,44(sp)
        lui     a5,%hi(.LANCHOR0)
        addi    a5,a5,%lo(.LANCHOR0)
        lw      a2,0(a5)
        lw      a3,4(a5)
        lw      a4,8(a5)
        lw      a5,12(a5)
        sw      a2,16(sp)
        sw      a3,20(sp)
        sw      a4,24(sp)
        sw      a5,28(sp)
        sw      a2,0(sp)
        sw      a3,4(sp)
        sw      a4,8(sp)
        sw      a5,12(sp)
        mv      a1,sp
        addi    a0,sp,16
        call    mulMat(int (*) [2], int (*) [2])
        li      a0,0
        lw      ra,44(sp)
        addi    sp,sp,48
        jr      ra
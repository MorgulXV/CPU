.section .text
.globl _start

_start:
    addi x1, x0, 16   
    addi x2, x0, -1       
    sw   x2, 0(x1)       
    addi x3, x0, 0     
    lw   x3, 0(x1)      
    addi x4, x0, 0xAB    
    sb   x4, 4(x1)        
    lbu  x5, 4(x1)       
    lb   x6, 4(x1) 
    addi x7, x0, 5
    addi x8, x0, 5
    beq  x7, x8, pass_beq
    addi x0, x0, 0
    
pass_beq:
    addi x8, x0, 6
    bne  x7, x8, pass_bne 
    ebreak

pass_bne:
    addi x9, x0, -10    
    addi x10, x0, 2      
    blt  x9, x10, pass_blt
    ebreak

pass_blt:
    li x11, x0, 0x1234
    sh   x11, 8(x1)      
    lh   x12, 8(x1)      

success:
    addi x31, x0, 1
    jal  x0, success
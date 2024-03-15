.globl oddOneOut
.type oddOneOut, @function

oddOneOut:
    movq $0, %rax
    movq $0, %rcx

    .loop:
        xorq (%rdi, %rcx, 8), %rax
        addq $1, %rcx
        cmpq %rsi, %rcx
        jne .loop
    
ret
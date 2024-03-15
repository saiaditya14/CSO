.globl leftShiftArray
.type leftShiftArray, @function

leftShiftArray:
    movq        %rdi, %rax                      # rax= rdi= pointer to array
    movq        %rsi, %rcx                      # rcx= rsi= number of elements in the array
    movq        (%rax), %r8                     # r8= first element of the array
    dec         %rcx                            # rcx-=1
    jz          .end                            # if rcx= 0, go to the end

    .loop:
        movq    8(%rax), %rdx                   # rdx= next element in the array
        movq    %rdx, (%rax)                    # replace the current element with the next element
        addq    $8, %rax                        # move to the next element
        loop    .loop                           # run the loop till the end of the array

    .end:
        movq    %r8, (%rax)                     # move the first element to the end of the array

    ret
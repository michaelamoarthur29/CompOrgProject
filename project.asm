.data
    prompt: .asciiz "Enter a number (N >= 25): "
    error: .asciiz "Illegal Number!\n"
    newline: .asciiz "\n"
    
.text
 main:
    li $v0, 4               
    la $a0, prompt          
    syscall

    li $v0, 5              
    syscall
    move $t0, $v0          

check_input:
    blt $t0, 25, invalid    
    j step2                 

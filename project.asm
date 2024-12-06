.data
    prompt: .asciiz "Enter a number (N >= 25): "
    error: .asciiz "Illegal Number!\n"
    newline: .asciiz "\n"
    
.text
 main:
    li $v0, 4               
    la $a0, prompt          
    syscall

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

invalid:
    li $v0, 4               
    la $a0, error
    syscall
    j main                  

step2:
    li $t1, 0               
    li $t2, 1               
    li $t3, 0               

fibonacci_loop:
    beq $t3, $t0, exit     
    move $a0, $t1
    li $v0, 1              
    syscall

    li $v0, 4               
    la $a0, newline
    syscall
    add $t4, $t1, $t2       
    move $t1, $t2
    move $t2, $t4          

    addi $t3, $t3, 1        
    j fibonacci_loop       

exit:
    li $v0, 10              
    syscall

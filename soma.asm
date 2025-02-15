.data
    numero: .asciiz "Digite o primeiro número: "
    numero2: .asciiz "Digite o segundo número: "
    resultado: .asciiz "O resultado da soma é: "

.text
.globl main

main:
    # Solicita o primeiro número
    li $v0, 4
    la $a0, numero
    syscall

    # Lê o primeiro número
    li $v0, 5
    syscall
    move $t0, $v0

    # Solicita o segundo número
    li $v0, 4
    la $a0, numero2
    syscall

    # Lê o segundo número
    li $v0, 5
    syscall
    move $t1, $v0

    # Soma os números
    add $s0, $t0, $t1

    # Exibe o resultado
    li $v0, 4
    la $a0, resultado
    syscall

    li $v0, 1
    move $a0, $s0
    syscall

    # Finaliza o programa
    li $v0, 10
    syscall

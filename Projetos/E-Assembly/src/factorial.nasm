; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.

leaw $1, %A
movw $0, (%A)

leaw $0, %A 
movw (%A), %D
leaw $CASOZERO, %A
je %D
nop 

leaw $0, %A
movw (%A), %D
leaw $COUNTER, %A 
movw %D, (%A)
leaw $2, %A 
movw %D, (%A)
leaw $COUNTER, %A  
movw (%A), %D
subw %D, $1, (%A)

WHILE:

leaw $2, %A
movw (%A), %D
subw %D, $1, (%A)
leaw $2, %A
movw (%A), %D
leaw $END, %A 
jle %D
nop 

leaw $0, %A
movw (%A), %D 
leaw $1, %A 
addw (%A), %D, %D
movw %D, (%A)

leaw $WHILE, %A
jmp 
nop

WHILEE:

leaw $1, %A
movw (%A), %D
leaw $0, %A
movw %D, (%A) 

leaw $WHILE, %A
jmp 
nop

CASOZERO:
leaw $1, %A
movw %A, (%A)

END:

leaw $COUNTER, %A
movw (%A), %D
decw %D
movw %D, (%A)
leaw $2, %A
movw %D, (%A)

leaw $ENDD, %A
jle %D
nop

leaw $WHILEE, %A
jmp 
nop

END2:
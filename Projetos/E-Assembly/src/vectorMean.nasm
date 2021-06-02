; ------------------------------------
; Calcule a média dos valores de um vetor
; que possui inicio em RAM[5] e tamanho
; defindo em RAM[4],
;
; 1. Salve a soma em RAM[1]
; 2. Salve a média em RAM[0]
; 
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  2  : média 
; RAM[1]:     | RAM[1]:  8  : soma
; RAM[2]:     | RAM[2]:  
; RAM[3]:     | RAM[3]:  
; RAM[4]:  4  | RAM[4]:  4 
; RAM[5]:  1  | RAM[5]:  1 - 
; RAM[6]:  2  | RAM[6]:  2 | vetor
; RAM[7]:  1  | RAM[7]:  1 |
; RAM[8]:  4  | RAM[8]:  4 -
; ------------------------------------

leaw $5, %A
movw (%A),%D 
leaw $R1, %A 
movw %D, (%A)
 
leaw $6, %A
movw (%A),%D 
leaw $R1, %A 
addw (%A), %D, %D
movw %D, (%A)
 
leaw $7, %A
movw (%A),%D 
leaw $R1, %A 
addw (%A), %D, %D
movw %D, (%A)
 
leaw $8, %A
movw (%A),%D 
leaw $R1, %A 
addw (%A), %D, %D
movw %D, (%A)
 
leaw $R1,%A 
movw (%A),%D 
leaw $3, %A 
movw %D, (%A)
 
LOOP:
 leaw $4, %A
 movw (%A), %D
 leaw $3, %A
 subw (%A), %D, %D
 movw %D, (%A)
 leaw $R0,%A
 movw (%A), %D
 addw $1, %D, %D
 movw %D, (%A)
 leaw $3, %A
 movw (%A), %D
 leaw $LOOP, %A
 jg %D
 nop

; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardawre
;  - Bata uma foto!

leaw $16384, %A
movw $-1,  (%A)

leaw $32769, (%A)
movw %A, %D

leaw $16404, (%A)
movw $1, (%A)
leaw $16424, %A
movw $1, (%A)
leaw $16444, %A
movw $1, (%A)
leaw $16464, %A
movw $1, (%A)
leaw $16484, %A
movw $1, (%A)
leaw $16504, %A
movw $1, (%A)
leaw $16524, %A
movw $1, (%A)
leaw $16544, %A
movw $1, (%A)
leaw $16564, %A
movw $1, (%A)
leaw $16584, %A
movw $1, (%A)
leaw $16604, %A
movw $1, (%A)
leaw $16624, %A
movw $1, (%A)
leaw $16644, %A
movw $1, (%A)
leaw $16664, %A
movw $1, (%A)


leaw $16684, %A
movw $-1, (%A)

leaw $16704, %A
movw $1, (%A)
leaw $16724, %A
movw $1, (%A)
leaw $16744, %A
movw $1, (%A)
leaw $16764, %A
movw $1, (%A)
leaw $16784, %A
movw $1, (%A)
leaw $16804, %A
movw $1, (%A)
leaw $16824, %A
movw $1, (%A)
leaw $16844, %A
movw $1, (%A)
leaw $16864, %A
movw $1, (%A)
leaw $16884, %A
movw $1, (%A)
leaw $16904, %A
movw $1, (%A)
leaw $16924, %A
movw $1, (%A)
leaw $16944, %A
movw $1, (%A)
leaw $16964, %A
movw $1, (%A)
leaw $16984, %A
movw $1, (%A)

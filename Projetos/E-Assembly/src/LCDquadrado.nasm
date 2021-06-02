; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe um quadro no LCD

leaw $19337, %A
movw $-1, (%A)
leaw $32769, %A
movw %A, %D
leaw $19357, %A
movw %D, (%A)
leaw $19377, %A
movw %D, (%A)
leaw $19397, %A
movw %D, (%A)
leaw $19417, %A
movw %D, (%A)
leaw $19437, %A
movw %D, (%A)
leaw $19457, %A
movw %D, (%A)
leaw $19477, %A
movw %D, (%A)
leaw $19497, %A
movw %D, (%A)
leaw $19517, %A
movw %D, (%A)
leaw $19537, %A
movw %D, (%A)
leaw $19557, %A
movw %D, (%A)
leaw $19577, %A
movw %D, (%A)
leaw $19597, %A
movw %D, (%A)
leaw $19617, %A
movw %D, (%A)
leaw $19637, %A
movw $-1, (%A)
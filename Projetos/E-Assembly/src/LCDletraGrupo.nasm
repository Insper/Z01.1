; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardawre
;  - Bata uma foto!

;traço vertical
leaw $17530, %A
movw $-1, (%A)
leaw $17550, %A
movw $-1, (%A)
leaw $17570, %A
movw $-1, (%A)
leaw $17590, %A
movw $-1, (%A)
leaw $17610, %A
movw $-1, (%A)
leaw $17630, %A
movw $-1, (%A)
leaw $17650, %A
movw $-1, (%A)
leaw $17670, %A
movw $-1, (%A)
leaw $17690, %A
movw $-1, (%A)
leaw $17710, %A
movw $-1, (%A)
leaw $17730, %A
movw $-1, (%A)
leaw $17750, %A
movw $-1, (%A)
leaw $17770, %A
movw $-1, (%A)
leaw $17790, %A
movw $-1, (%A)
leaw $17810, %A
movw $-1, (%A)
leaw $17830, %A
movw $-1, (%A)
leaw $17850, %A
movw $-1, (%A)
leaw $17870, %A
movw $-1, (%A)
leaw $17890, %A
movw $-1, (%A)
leaw $17910, %A
movw $-1, (%A)
leaw $17930, %A
movw $-1, (%A)
leaw $17950, %A
movw $-1, (%A)
leaw $17970, %A
movw $-1, (%A)
leaw $17990, %A
movw $-1, (%A)
leaw $18010, %A
movw $-1, (%A)
leaw $18030, %A
movw $-1, (%A)
leaw $18050, %A
movw $-1, (%A)
leaw $18070, %A
movw $-1, (%A)
leaw $18090, %A
movw $-1, (%A)
leaw $18110, %A
movw $-1, (%A)
leaw $18130, %A
movw $-1, (%A)
leaw $18150, %A
movw $-1, (%A)
leaw $18170, %A
movw $-1, (%A)
leaw $18190, %A
movw $-1, (%A)
leaw $18210, %A
movw $-1, (%A)
leaw $18230, %A
movw $-1, (%A)
leaw $18250, %A
movw $-1, (%A)
leaw $18270, %A
movw $-1, (%A)
leaw $18290, %A
movw $-1, (%A)
leaw $18310, %A
movw $-1, (%A)
leaw $18330, %A
movw $-1, (%A)

;traço horizontal de cima
leaw $17531, %A
movw $-1, (%A)
leaw $17551, %A
movw $-1, (%A)
leaw $17532, %A
movw $-1, (%A)
leaw $17552, %A
movw $-1, (%A)
leaw $17571, %A
movw $-1, (%A)
leaw $17572, %A
movw $-1, (%A)
leaw $17591, %A
movw $-1, (%A)
leaw $17592, %A
movw $-1, (%A)

;traço horizontal de baixo
leaw $18331, %A
movw $-1, (%A)
leaw $18332, %A
movw $-1, (%A)
leaw $18311, %A
movw $-1, (%A)
leaw $18312, %A
movw $-1, (%A)
leaw $18291, %A
movw $-1, (%A)
leaw $18292, %A
movw $-1, (%A)
leaw $18271, %A
movw $-1, (%A)
leaw $18272, %A
movw $-1, (%A)

;quadrado de cima
leaw $65280, %A
movw %A, %D
leaw $17613, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $17633, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $17653, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $17673, %A
movw %D, (%A)

;quadrado de baixo
leaw $65280, %A
movw %A, %D
leaw $18253, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $18233, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $18213, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $18193, %A
movw %D, (%A)

;quadrado de baixo
leaw $255, %A
movw %A, %D
leaw $17693, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17713, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17733, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17753, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17773, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17793, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17813, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17833, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17853, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17873, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17893, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17913, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17933, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17953, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17973, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17993, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18013, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18033, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18053, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18073, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18093, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18113, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18133, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18153, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18173, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18193, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
















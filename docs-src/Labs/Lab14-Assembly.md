# Lab 11: praticando nasm

Ao final desse lab você deve ser capaz de:

1. Fazer programas complexos em assembly 

Os seguintes programas são contemplados nesse lab:

- mov
- max
- abs
- mult ==(muito importante estudar!)==



Os problemas desse lab possuem teste unitário, para isso você deve editar o arquivo de configurações de teste: `config_testes_nasm.txt` e executar os testes.

!!! example "mov.nasm" 
    - `f_Assembly/src/mov.nasm`
    
    Movimentação de dados da memoria RAM
    
    - RAM[0] = RAM[1]
    - RAM[1] = RAM[0]
    - RAM[3] = 1

!!! example "max.nasm" 
    - `f_Assembly/src/max.nasm`
    
    RAM2 = max(RAM[0], RAM[1])
    
    ou seja, o maior valor que estiver, ou em R0 ou R1 sera copiado para R2 
    Estamos considerando número inteiros.                                 
 
!!! example "abs.nasm" 
    - `f_Assembly/src/abs.nasm`
   
    Copia o valor de RAM[1] para RAM[0] deixando o valor sempre positivo.

!!! example "mult.nasm" 
    - `f_Assembly/src/mult.nasm`
 
    Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

# H - VM Translator

| Entrega      |
|--------------|
| {{apsI_date}} |

Nesse projeto iremos criar o programa *VM translator* que é responsável por traduzir os códigos escrito em linguagem VM de pilha para a linguagem assembly.

## Instruções 

As instruções técnicas referente ao projeto está no [Lab 18](/Z01.1/Labs/Lab18.1-VMtranslator/).

## Módulos a serem implementados

> **Apenas o `Code.java`.**

O projeto no total possui 5 módulos, sendo que o módulo `VMTranslator.java`, `VMtranslate.java`, `Parser.java`  e `Error.java` já estão foram entregues implementados.

> Os módulos estão listados de maneira Top - Down

---------------------------
 
- VMTranslator
    - **Arquivo**   : `VMTranslator.java`
    - **Descrição** : Main do projeto. Recebe como parâmetro o nome do arquivo `.vm` (ou diretório) e o nome do arquivo binário assembly (`.nasm`) a ser escrito, passa essas informações para a classe VMtranslate. 
    - **Dependências** : `VMtranslate.java`
    
- VMtranslate
    - **Arquivo**   : `VMtranslate.java`
    - **Descrição** : Classe responsável por criar o código assembly, ela que **efetivamente** faz a varredura do arquivo .vm de entrada e escreve o arquivo .nasm de saída, gerando a tradução vm -> nasm. 
    - **Dependências** : `Code.java`, `Parser.java`
    
- Code
    - **Arquivo**   : `Code.java`
    - **Descrição** :  Traduz comandos da linguagem vm para os comandos em nasm que a executam.
    - **Dependências** : None
  
- Parser
    - **Arquivo**   : `Parser.java`
    - **Descrição** : Encapsula o código de leitura. Carrega as instruções na linguagem vm, analisa, e oferece acesso as partes da instrução  (campos e símbolos). Além disso, remove todos os espaços em branco e comentários.
    - **Dependências** : none

## Sugestão de implementação (partes)

Sugerimos que o `VMTranslator` seja implementado em duas partes, a primeira implementa no *Code.java* somente as operações aritméticas e `push/pop`. A segunda parte faz a implementação de funções, goto e chamada de funções.

## Parte 1 - Conceito C+
   
- Code.writeArithmetic()
- Code.writePushPop()

## Parte 2 - Conceito B+

- Code.writeGoto()
- Code.writeIf()

## Parte 3 - Conceito A+

- Code.writeCall()
- Code.writeReturn()
- Code.writeFunction()

## Projeto

| Conceito |                                           |
|----------|-------------------------------------------|
| I        | - Menos da metade dos módulos funcionando |
|          |                                           |
| D        | - writeArithmetic OU writePushPop         |
|          |                                           |
| C+       | - writeArithmetic E writePushPop          |
|          |                                           |
| B+       | - writeLabel, writeGoto, writeIf          |
|          |                                           |
| A+       | - writeCall, writeReturn, writeFunction   |

## Para testar 

A seguir os testes que devem passar para cada nota :

### C+

- SimpleAdd
- SimpleNeg
- SimpleSub
- SimpleEq 
- SimpleGt 
- SimpleLt 
- SimpleAnd
- SimpleOr 
- SimplePushConst
- SimplePushTemp 
- SimplePushLocal
- SimplePushArg 
- SimplePushThis
- SimplePushThat
- SimplePopTemp 
- SimplePopLocal
- SimplePopThat 
- SimplePopThis 
- SimplePushAdd 
- SimplePopPointer
- ~StackTest~ (opcional) 

### B+

- BasicLoop 

#### A+

- SimpleFunction
- StaticsTest
- Mult 
- 1a-Add
- 1b-Add
- 2a-Calculadora 
- 2b-Calculadora 
- 2c-Calculadora 
- 2d-Calculadora 
- SimpleGoto 
- SimpleIfGoto

## Importante

Para os testes do Conceito A+, teremos que criar programas em VM para o nosso Z01.1.

### Instruções 

As instruções técnicas referente ao projeto estão no laboratório [Lab17-VM](/Z01.1/Labs/Lab17-VM/).

## Módulos a serem implementados

Os módulos estão na pasta `h_VM/src/vm/` e estão organizados por ordem de dificuldade:

1. 1a-Add
1. 1b-Add
1. 1c-Dic
1. 2a-Calculadora
1. 2b-Calculadora
1. 2c-Calculadora
1. 2d-Calculadora

Para testar, basta editar o arquivo `config_testes_vm.txt` com os módulos que deseja executar e então executar os scripts: `./genJAR.py`, `./compileALL.py` localizado na pasta do projeto e finalmente `SIM=ghdl pytest --tb=no -s`.


### Formulários

- [Scrum Master]({{form_scrum_link}})
- [Desenvolvedores]({{form_dev_link}})

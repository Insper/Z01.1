# G - VM/Translator

| Entrega      |
|--------------|
| {{apsG_date}} |

Nesse projeto iremos criar programas em VM além de uma parte do programa *VM translator* que é responsável por traduzir os códigos escrito em linguagem VM de pilha para a linguagem assembly.

## Instruções 

As instruções técnicas referente ao projeto está no [Lab 14](/Z01.1/Labs/Lab14.1-VMtranslator/).

## Programas a serem implementados

Os módulos estão na pasta `g_VM/src/vm/`:

1. 1a-Add
1. 1b-Calc
1. 1c-Div
1. 1d-loop
1. 2a-Calculadora
1. 2b-Calculadora
1. 2c-Calculadora
1. add32
1. diff
1. fibonacci
1. invert
1. overflow
1. remove
1. roll
1. somatoria
1. trapz
1. xor

As descrições do objetivo de cada implementação são apresentadas nos arquivos Main.

## Módulos a serem implementados no tradutor

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

## Implementação

Deve-se implementar no *Code.java* somente as operações aritméticas e `push/pop`.

## Parte 1 - Conceito C+

1. 1a-Add
1. 1b-Calc
1. 1c-Div
1. 1d-loop
1. 2a-Calculadora
1. 2b-Calculadora
1. 2c-Calculadora
1. somatoria
1. trapz
1. xor

## Parte 2 - Conceito B+

1. add32
1. diff
1. fibonacci
1. invert
1. overflow
1. remove
1. roll

## Parte 3 - Conceito A+

- Code.writeArithmetic()
- Code.writePushPop()


## Para testar 

A seguir os testes que devem passar para cada nota :

### C+

1. 1a_Add
1. 1b_Calc
1. 1c_Div
1. 1d_loop
1. 2a_Calculadora
1. 2b_Calculadora
1. 2c_Calculadora
1. somatoria
1. trapz
1. xor

### B+

1. add32
1. diff
1. fibonacci
1. invert
1. overflow
1. remove
1. roll

#### A+

- SimpleNeg
- SimpleEq 
- SimpleGt 
- SimpleLt 
- SimpleAnd
- SimpleOr 
- SimplePopTemp 
- SimplePushAdd 


### Instruções 

As instruções técnicas referente aos programas em VM estão no laboratório [Lab15-VM](/Z01.1/Labs/Lab15-VM/).


Para testar, basta executar o `pytest -k <módulo>`.


### Formulários

- [Scrum Master]({{form_scrum_link}})
- [Desenvolvedores]({{form_dev_link}})

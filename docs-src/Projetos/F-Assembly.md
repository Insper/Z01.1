# F - Assembly

| Entrega      |
|--------------|
| {{apsF_date}} |

![Assembly](../figs/F-Assembly/sistema-assembly.svg)

Nesse projeto cada grupo terá que implementar diversos códigos em assembly a fim de entendermos a linguagem e as limitações do hardware propostos.

!!! tip
    Você é `Scrum Master` e não sabe por onde começar? 
    De uma olhada nessas dicas:
    [Vixi! Sou Scrum Master](https://insper.github.io/Z01.1/Util/Util-Comecando-novo-projeto/)

## Instruções 

Seguir as instruções a seguir para desenvolvimento do projeto.

## Entendendo a Organização do Projeto

A pasta do projeto F, no repositório Z01, possui a seguinte estrutura:

```
f_Assembly/
  Assembly_test.py
  programCPU_FPGA.py
  /FPGA
  /jar
  /src
      *.nasm
  /tests
      /abs
      /add
      ....
```

1. `FPGA`: Projeto Quartus já compilado para gravar o computador na FPGA
1. `*.py`: Scripts em python que automatizam a execução dos testes e grava software na FPGA;
1. `src/*.nasm`: Arquivos ASSEMBLY que serão implementados pelo grupo;
1. `tests/*`: Arquivos que realizam o teste nos arquivos códigos do rtl.

### Executando o Script de Teste 

Abra o terminal na pasta `f_Assembly/` e execute:

```bash
$ pytest -s
```

O mesmo irá compilar os arquivos `src/*.nasm` e executar os testes unitários em cada um deles. Nesse momento do teste, como os módulos não estão implementados, o resultado deverá ser falho.

Esse comando executa um teste unitário em cada um dos módulos, verificando se sua implementação está correta.

Para selecionar apenas um teste (como o add), abra o terminal na pasta `f_Assembly/` e execute:

```bash
$ pytest -k add
```

## Projeto

Deve-se implementar diversos programas na linguagem de máquina do Z01 que irão manipular a memória RAM a fim de implementar o que é pedido. **A descrição a seguir está classificada em ordem de dificuldade, começando pelos mais simples.**


### Módulos 

- Esses arquivos estão localizados em `f_Assembly/src/`

**A descrição de cada módulo está localizada no cabeçalho do arquivo.**

#### Conceito C+ 
- add
    - **Arquivo**   : `add.nasm` 
- sub
    - **Arquivo**   : `sub.nasm` 
- mov
    - **Arquivo**   : `mov.nasm` (==lab 11==)           
- abs
    - **Arquivo**   : `abs.nasm` (==lab 11==)
- max
    - **Arquivo**   : `max.nasm` (==lab 11==)
- mult
    - **Arquivo**   : `mult.nasm` (==lab 11==)
- mod
    - **Arquivo**   : `mod.nasm`
- div
    - **Arquivo**   : `div.nasm` 
- pow
    - **Arquivo**   : `pow.nasm`
- É par 
    - **Arquivo** : `isEven.nasm`
- String length 
    - **Arquivo** : `stringLength.nasm`


#### Conceito B+
- Palindromo 
    - **Arquivo** : `palindromo.nasm`
- Mean
    - **Arquivo** : `vectorMean.nasm`
- Chaves e Leds 
    - **Arquivo** : `SWeLED.nasm`

#### Conceito A+
- fatorial
    - **Arquivo**   : `factorial.nasm`    
- Chaves e Leds 
    - **Arquivo** : `SWeLED2.nasm`
- Multiplicação com chaves
    - **Arquivo**   : `mult_SW.nasm`
- Controle do carrinho:
     - Considere que os pinos GPIO_IN[0], GPIO_IN[1], GPIO_IN[2], GPIO_IN[3] representam os quatros sensores do carrinho usado na APS-A. 
     - Considere que os pinos GPIO_OUT[0], GPIO_OUT[1], GPIO_OUT[2], GPIO_OUT[3] representam os quatros bits dos dois motores do carrinho. 
     - Agora, queremos usar nosso CPU como controlador do carrinho. Assim, faça o código em Assembly que realize as mesmas condições lógicas indicadas na APS-A, mas desssa vez por software.
     - _Esse item não tem arquivo e nem testes._
     - **O funcionamento deve ser demonstrado na FPGA**
     - **Se for feito, substitui um dos itens do Conceito A+**

**O funcionamento dos arquivos que envolvem SWs, LEDs e GPIOs deve ser demonstrado na FPGA.**
    


<!--
- SWeLED2 
    - **Arquivo** : `SWeLED2.nasm`    
- Nome grupo
    - **Arquivo** : `LCDnomeGrupo.nasm`
- excelToLCD.py
    - **Arquivo** : `excelToLCD.py`
    - Criar um programa em python que converte um tabela do excel (onde cada célula equivale a um px pintado) em um código nasm que executa no Z01 e gera a imagem da tabela

> Os arquivos extras podem substituir algum do conceito **A+** se este não foi implementado.
-->

### Formulários

- [Scrum Master]({{form_scrum_link}})
- [Desenvolvedores]({{form_dev_link}})
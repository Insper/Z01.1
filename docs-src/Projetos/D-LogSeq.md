# D - Lógica Sequencial

| Entrega      |
|--------------|
| {{apsD_date}} |

![](../figs/E-LogSeq/sistema-seq.png)

Neste projeto você terá que desenvolver os componentes de memória que serão utilizados no computador Z01.

## Instruções 

A pasta do projeto `d_logSeq` no repositório Z01.1-proj, possui a seguinte estrutura:

```bash
/d_logSeq
    test_ula.py
    ula_cocotb.py
    /Quartus
    /src
        *.vhd
```

1. Quartus: Projeto Quartus que faz uso dos arquivos VHDL localizados em src/*.vhd;
1. *.py: Scripts em python que automatizam a execução dos testes;
1. src/*.vhd: Arquivos VHDL que serão implementados pelo grupo;


### Executando o Script de Teste 

Abra o terminal na pasta `d_logSeq/`  e execute:

```bash
$ pytest -s
```

para testar todos os módulos ou

```bash
$ pytest -k ram8
```

para testar apenas um módulo (neste caso a Ram8).


## Projeto

- Deve-se gerar uma imagem com a forma de onda desses módulos.
- Deve-se gerar um RTL para cada módulo do projeto (Lab 4)
- Note que é possível reaproveitar, via `port map`, os módulos dos projetos anteriores. Para isso basta usar port map.

### Módulos 

Os modulos a serem desenvolvidos na entrega estão detalhados no livro base do curso: [**Capítulo 3 - The Elements of Computing Systems**](https://docs.wixstatic.com/ugd/44046b_862828b3a3464a809cda6f44d9ad2ec9.pdf)

---------------------------

- Flip Flop
   - **Arquivo**: `flipflopd.vhd`
   - **Dependência**:
 
É um bloco elementar e sua implementação é criada no [laboratório do projeto](/Z01.1/Labs/Lab8-Seq/).

![FlipFlop D](../figs/E-LogSeq/ffd.png)

---------------------------

- Binary Digit
    - **Arquivo**: `binarydigit.vhd`
    - **Dependência**: `flipflopd` e `mux2way`
    - **Descrição** : É um registrador feito para armazenar um único bit de informação (0 ou 1). A interface do módulo consiste em uma entrada (d) para o bit a ser armazenado, um sinal de **load** para indicar quando o bit de entrada deve ser armazenado um sinal de *clock* e a saída *output** que é o bit armazenado:
    
![Binary Digit](../figs/E-LogSeq/binarydigit_v2.svg){width=500}
    
---------------------------

- Register 8
    - **Arquivo**   : `register8.vhd`
    - **Dependência** : `binarydigit`
    - **Descrição** : É um registrador de 8 bits criado a partir do binaryDigit porém agora para armazenar um vetor de entrada de 8 bits de tamanho.
    
![Register 8](../figs/E-LogSeq/register8.png)
    
---------------------------

- Register 16
    - **Arquivo**   : `register16.vhd`
    - **Dependência** : `register8`
    - **Descrição** : É um registrador de 16 bits criado a partir do Register8 porém agora para armazenar um vetor de entrada de 16 bits de tamanho.
    
---------------------------

- Register 32
    - **Arquivo**   : `register32.vhd`
    - **Dependência** : `register16`
    - **Descrição** : É um registrador de 32 bits criado a partir do Register16 porém agora para armazenar um vetor de entrada de 32 bits de tamanho.
 
---------------------------
 
- Register 64
    - **Arquivo**   : `register64.vhd`
    - **Dependência** : `register32`
    - **Descrição** : É um registrador de 64 bits criado a partir do Register32 porém agora para armazenar um vetor de entrada de 64 bits de tamanho.
    
---------------------------

- Program Counter
    - **Arquivo**   : `pc.vhd`
    - **Dependência** : `inc16`, `mux16`, `register16`
    - **Descrição** : O program counter será o nosso endereçador de memória da CPU, ele será responsável por apontar para a próxima instrução a ser executada. Como normalmente um código segue um fluxo sequencial (uma linha na sequência da outra) o PC possui a habilidade de se auto incrementar a cada clock (apontando assim para  a próxima instrução), mas ele tem que suportar **condições** (if, while, ...) rompendo com esse fluxo contínuo.
 
Sua lógica é descrita no pseudo código a seguir:
 
```
If reset(t-1) then 
   out(t)=0
else if load(t-1) then 
   out(t)=in(t-1)
else if inc(t-1) then 
   out(t)=out(t-1)+1
else
   out(t)=out(t-1)
```
    
---------------------------

- Ram8
    - **Arquivo**   : `ram8.vhd`
    - **Dependência** : `register16`, `mux8way16`, `dmux8way`
    - **Descrição** : É uma memória de 8 endereços com 16 bits de largura. O componente possui como entrada o vetor input de 16 bits, o endereço a ser armazenado (address) o sinal **load** que indica quando é para ser armazenado e o clock. Como saída temos o valor lido no endereço especificado quando load for igual a 0.
     Note que sinal LOAD tem como função similar o do READ/WRITE, quando zero, indica que queremos ler o valor armazenado, quando 1 indica que queremos escrever (write) nessa posição.
    
![RAM 8](../figs/E-LogSeq/ram8.png)

---------------------------
    
- Ram64
    - **Arquivo**   : `ram64.vhd`
    - **Dependência** : `ram8`, `mux8way16`, `dmux8way`
    - **Descrição** : Similar a RAM8 porém com 64 endereços.

---------------------------

- Ram512
    - **Arquivo**   : `ram512.vhd`
    - **Dependência** : `ram64`, `mux8way16`, `dmux8way`
    - **Descrição** : Similar a RAM8 porém com 512 endereços.

<!--   
---------------------------

- Ram4k
    - **Arquivo**   : `ram4k.vhd`
    - **Dependência** : `ram512`, `mux8way16`, `dmux8way`
    - **Descrição** : Similar a RAM8 porém com 4096 endereços.
--> 
![RAM](../figs/E-LogSeq/ram.png)
 
 
!!! tip
    Todos esses módulos estão bem documentados no livro The Elements of Computer System. Cap 3.
 
### Forma de onda

Para cada teste realizado, deve-se carregar a interface gráfica do simulador e tirar um **print** da forma de onda do módulo com os testes aplicados a ele. Essa imagem deve ser salva na mesma pasta dos arquivos vhdl (`src/doc/*_wave.png`) e com o mesmo nome dos módulos (similar ao projeto passado). 

!!! warning
    Não basta só gerar a imagem, você precisa analisar e entender. Isso será cobrado nas avaliações.

### RTL

Para cada módulo deve-se gerar o `RTL` e salvar uma imagem da implementação na pasta `src/doc/_rtl.png`. 

!! warning
    Não basta só gerar a imagem, você precisa analisar e entender. Isso será cobrado nas avaliações.

### Testando em Hardware

No hardware você deverá desenvolver um cenário de teste para o `Program Counter` e para para a `ram8`.

## Rubricas para avaliação de projetos

Cada integrante do grupo irá receber duas notas: uma referente ao desenvolvimento total do projeto (Projeto) e outra referente a sua participação individual no grupo (que depende do seu papel).

### Projeto

| Conceito |                                                                           |
|----------|---------------------------------------------------------------------------|
| I        | Menos da metade dos módulos funcionando                                   |
|          |                                                                           |
| D        | Ao menos um módulo não foi implementando ou não passa no testes.          |
|          |                                                                           |
| C+       | Todos os módulos básicos passam nos testes                                |
|          | **E** obter o rtl de todos os módulos (.png)                              |
|          |                                                                           |
| B+       | Todos os módulos básicos (conceito **C+**) passam nos testes              |
|          | **E** usar sempre que possível outros módulos para criar um novo (hierarquia)   |
|          | **E** PC e da RAM8 demonstrados na FPGA                                         |
|          |                                                                                 |
| A+       | Todos os módulos dos conceitos **C+** e **B+** implementados e funcionando      |
|          | **E** Módulos extras funcionando com a obtenção dos rtl                         |
|          | _Gravar vídeo explicando os rtl e o funcionamento dos módulos extras_           |



### A - Módulos extras

Para a rubrica A o grupo deve implementar os seguintes módulos extras 
<!--   e os seus testes (estão vazios)

!!! warning
    Vocês devem implementar o módulos e seus testes!
-->

- Flip Flop JK
   - **Arquivo**: `conceito_a/flipflopjk.vhd`
   - **Dependência**:
<!--   - **Arquivo Teste**: `tests/tb_FlipFlopJK.vhd`-->

É é flipflop do tipo [JK](https://en.wikipedia.org/wiki/Flip-flop_(electronics))

- Flip Flop T
   - **Arquivo**: `conceito_a/flipflopt.vhd`
   - **Dependência**:
<!--      - **Arquivo Teste**: `tests/tb_FlipFlopT.vhd`-->

É é flipflop do tipo [T](https://en.wikipedia.org/wiki/Flip-flop_(electronics))

- Counter Down
   - **Arquivo**: `conceito_a/counterdown.vhd`
   - **Dependência**: `flipflopjk`
<!--      - **Arquivo Teste**: `tests/CoubterDown.vhd`-->

 O CouterDown é componente capaz de contar para 'baixo' em binário (000 -> 111 -> 110 -> 101 -> 100), esse componente é formado por FlipFlops do tipo T, como demonstrado no diagrama a seguir:
 
![](../figs/E-LogSeq/CounterDown.png)

> Fonte: (2008) Fundamentals of Digital Logic with VHDL Design - pg. 406

### Desenvolvedor e Scrum Master

As rubricas a serem seguidas serão comuns a todos os projeto e está descrito no link:

 - [Rubricas Scrum e Desenvolvedor](/Z01.1/Home/Sobre-Rubricas/)

### Formulários

- [Scrum Master]({{form_scrum_link}})
- [Desenvolvedores]({{form_dev_link}})
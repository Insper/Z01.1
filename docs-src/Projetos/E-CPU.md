# E - CPU

| Entrega      |
|--------------|
| {{apsE_date}} |

![](../figs/G-CPU/sistema-cpu.svg)

Nesse projeto cada grupo terá que implementar sua própria CPU do Z01. 

## Começando

A seguir explicações de como começar o projeto.

### Entendendo a Organização do Projeto

A pasta do projeto E no repositório Z01, possui a seguinte estrutura:

```
e_CPU/
    test_CPU.py
    CPU_cocotb.py
    /Quartus
    /src
        *.vhd
```

1. Quartus: Projeto Quartus que faz uso dos arquivos VHDL localizados em src/*.vhd;
1. *.py: Scripts em python que automatizam a execução dos testes;
1. src/*.vhd: Arquivos VHDL que serão implementados pelo grupo;


### Testando HW 

Abra o terminal na pasta `e_CPU` e execute:

```bash
$ pytest -s
```

> O teste do CPU apenas funcionará se o ControlUnit tiver sido implementado.

Todos os módulos vhdl (desde o projeto B) serão compilados e o `cpu.vhd` será executado. 

<!--
### Actions

Adicione ao Actions o teste:

- `testeHW.py`

!!! tip
    No Actions você tem que colocar o caminho completo: `E-Computador/...`
-->

## Projeto

Deve-se implementar o `Control Unit` e integrar os módulos: `MemoryIO` e `CPU`. 


## Módulos 

!!! note
    Esses arquivos estão localizados em `e_CPU/src/`

<!--
Os módulos estão listados de maneira Top - Down

---------------------------
 
- Computador (==já está pronto! Não precisa mexer==, mas é legal ver!)
    - **Arquivo**: `computador.vhd`
    - **Descrição**: TopLevel do projeto, entidade que integra a memória ROM o MemoryIO, CPU e PLL
    - **Dependências**:
         - `Dispositivos/ROM/ROM32K.vhd`: ROM a ser utilizada no projeto (já foi dado pronto)
         - `Dispositivos/PLL/PLL.vhd`: PLL a ser utilizada no projeto (já foi dado pronto)
    
---------------------------
-->

- MemoryIO
    - **Arquivo**   : `memoryio.vhd`
    - **Descrição** : Faz o mapa de memória para a CPU.
    - **Dependências** :
         - `.Dispositivos/ram16k.vhd` : RAM a ser utilizada no projeto (já foi dado pronto)
         - `.Dispositivos/screen.vhd` : Controlador do LCD a ser utilizada no projeto (já foi dado pronto)
    
---------------------------

- CPU
    - **Arquivo**   : `cpu.vhd`
    - **Descrição** : CPU do Z01 integra registradores, controlUnit, ULA e PC.
    - **Dependências** :
         - `controlunit.vhd` : Unidade de controle a ser implementada
         - `alu.vhd` : Unidade lógica desenvolvida no projeto D
         - `pc.vhd` : Program counter do projeto E
         - `register16.vhd`, `mux16.vhd` : Componentes do projeto C e D 

---------------------------

- ControlUnit
    - **Arquivo**   : `controlunit.vhd`
    - **Descrição** : Unidade de controle da CPU do Z01.
    - **Dependências** :
         - não há 
         
### Diagramas 

---------------------------

![memoryio.vhd](../figs/G-CPU/memoryIO.png)

---------------------------

![controlunit.vhd](../figs/G-CPU/controlUnit.svg){width=400}

---------------------------

## Rubrica do projeto

!!! warning
    Os conceitos B e A devem ser feitos em um outro branch!
    
    - `git checkout -B CPU-Extras`

| Conceito |                                                                                     |
|----------|-------------------------------------------------------------------------------------|
| I        |  Menos da metade dos módulos funcionando                                           |
|          |                                                                                    |
| D        |  Ao menos um módulo não está feito e não passa no testes.                          |
|          |                                                                                    |
| C+       |  Construiu com os módulos do grupo o seu próprio computador                        |
|          |  Todos os módulos sendo testados no Actions.                                       |
|          |  Todos os módulos passando nos testes.                                             |
|          |                                                                                    |
| B+       |  Adiciona um novo registrador a CPU  (`%S`)                                        |
|          |  Modifica os testes para testar esse novo recurso!                                 |
|          |                                                                                    |
| A+       |  Possibilita realizar carregamento efetivo em %D (`leaw $5, %D`)                   |
|          |  Modifica os testes para testar esse novo recurso!                                 |


> O grupo deve avaliar o melhor local para colocar o registrador %S e como fazer o carregamento em %D (Há mais de uma forma).

### Testagem mais completa na próxima APS

Para testar o computador de uma forma mais completa, iremos executar os programas realizados na APS `f_Assembly` no Harware que vocês montaram. 

### Formulários

- [Scrum Master](https://forms.gle/w6XJEZHh2PbY7oyo7)
- [Desenvolvedores](https://forms.gle/ALf7JW938tfYd6gx5)


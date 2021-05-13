# Lab 16: Assembler

Esse laboratório introduz uma série de conceitos e ferramentas e deve ser realizado individualmente ou em dupla (como indicado no começo de cada parte). 

Ao final do laboratório você deverá:

1. Entender o que é um arquivo `.hack` e `.mif`
1. Ter um projeto importado no Intellij
1. Ter o método `code.jump` implementando
1. Saber como executar os testes unitários
1. Ter o método `parser.commandType` implementando
1. Saber como extrair informações dos testes unitários
1. Ter o `fillSymbolTable.initialize` implementando

## Antes de começar

Toda vez que um novo projeto começar será necessário realizar algumas configurações no repositório do grupo, vocês devem seguir para o documento: [`Util/Começando novo Projeto`](https://insper.github.io/Z01.1/Util-Comecando-novo-projeto/) e depois voltar para esse lab.

!!! progress
    Próxima etapa ....

Agora iremos desenvolver um programa em java que será capaz de ler nossos programas  `.nasm` e converter eles para `.hack` (binário). Nosso arquivo `.hack` é um arquivo de **texto** que possui apenas `1`s e `0`s. Cada linha desse arquivo `.hack` é uma instrução a ser armazenada na memória ROM e executado pela CPU.

Exemplo de um arquivo `.hack`:

```
000000000000000101
100101100000010000
000000000000000001
100000000000100000
000000000000001011
```

!!! tip ""
    Você pode abrir seus arquivos .hack, para isso basta ir na pasta `E-Assembly/bin/hack/` que vai encontrar seus binários (executáveis) do projeto E.

O arquivo `.hack` é um formato que não conseguimos fazer o download para a FPGA, então é necessário convertemos esse formato em um que o Quartus entenda. Esse formato do Quartus é chamado de `.mif` e é gerado automaticamente pelos scripts de teste, esse arquivo `.mif` é similar ao `.hack` salvo um cabeçalho e a indicação do endereço na qual a linha deve ser salva:

```
WIDTH=18;
DEPTH=5;

ADDRESS_RADIX=UNS;
DATA_RADIX=BIN;

CONTENT BEGIN
  0 : 000000000000000101;
  1 : 100101100000010000;
  2 : 000000000000000001;
  3 : 100000000000100000;
  4 : 000000000000001011;
END;
```

!!! info
    O Assembler de vocês deve gerar um arquivo `.hack`. A conversão para o `.mif` é feita pelos scripts em python já fornecidos (`./testeAssembly.py`)


```
       assembler        script python
.nasm ---------> .hack --------> .mif 
                                   v
                                   |---------> FPGA
                                   |---------> SIMULADOR
```

## Assembler

O assembler será um programa escrito em java e que foi estruturado em **quatro classes**:
    
- Assemble
    - **Arquivo**: `Assemble.java`
    - **Descrição**: Classe responsável por criar o a de programar o Computador na FPGA e executarmos  código de máquina, ela que **efetivamente** faz a varredura do arquivo `.nasm` de entrada e escreve o arquivo `.hack` de saída, gerando o código de máquina. 
    - **Dependências**: `Code.java`, `Parser.java`, `SymbolTable.java`
- Code
    - **Arquivo**   : `Code.java`
    - **Descrição** :  Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
    - **Dependências** : none
- Parser
    - **Arquivo**   : `Parser.java`
    - **Descrição** : Encapsula o código de leitura. Carrega as instruções na linguagem assembly, analisa, e oferece acesso as partes da instrução  (campos e símbolos). Além disso, remove todos os espaços em branco e comentários.
    - **Dependências** : none
- SymbolTable
    - **Arquivo**   : `SymbolTable.java`
    - **Descrição** :  Mantém uma tabela com a correspondência entre os rótulos simbólicos e endereços numéricos de memória.
    - **Dependências** : none

Note que o 'orquestrador' da montagem (esse é o termo em português utilizado) é a classe 'Assemble', nela que estará toda a lógica de montagem acessoada pelas demais classes. 

!!! progress
    Próxima etapa ....

## Intelij

Agora vamos configurar a ide para podermos trabalhar no código java, siga para a próxima parte.

!!! warning
    Todos devem realizar de forma individual!

Iremos realizar o desenvolvimento do Assembler na IDE do Intellij, para isso precisamos importar um projeto do tipo maven.

### Import Project:

![](figs/H-Assembler/intellij/1.png){width=500}

Importe o arquivo `.mvn` que está dentro da pasta `G-Assebler/Assembler`:

![](figs/H-Assembler/intellij/2.png){width=500}

![](figs/H-Assembler/intellij/3.png){width=300}

### final

Você deve obter um projeto importado no intellij:

![](figs/H-Assembler/intellij/4.png){width=500}

### Verificando sdk

Verifique se o intellij associou um SDK ao projeto:

![](figs/H-Assembler/intellij/5.gif){width=500}

### Próximos passos

Agora vamos começar a trabalhar no código java. Siga para a próxima parte.

!!! progress
    Próxima etapa ....

Iremos agora implementar um dos métodos da classe **Code**, a parte responsável por gerar os três bits referentes ao `jump`:

![](figs/H-Assembler/code-jump.png)

No Intellij abra o código `code.java` e procure pelo método `jump`:

``` java
/**
 * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
 * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
 * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
 */
public static String jump(String[] mnemnonic) {


 return  "";
}
```

Note que o input dessa função é um array de strings, chamado `mnemnonic` e seu retorno é uma string. No mnemnonic será passado a instrução a ser executada da seguinte forma:

- `{"jmp"}`
- `{"jge", "S"}`
- `{"jg", "%D"}`
- ...

E deve retornar o binário correspondente aos bits j2, j1 e j0 do comando de jump :

- `111`, `011`, `010`, ....


> Note que aesa classe não precisa se preocupar com a origem do jump (%S, %D, ...) apenas com o seu tipo `jmp`, `jge`, ...

### Implementando

Vamos implementar algo bem simples que está incompleto, mas vai servir para entendermos o fluxo. Modifique o código com o exemplo a seguir :

```java
    public static String jump(String[] mnemnonic) {
        switch (mnemnonic[0]){
            case "jmp"  : return "111";

            default    : return "000";
        }
    }
```

Com a classe implementada, podemos executar o teste unitário dela. 

No Intellij:

![](figs/H-Assembler/code-test.png){width=500}

Com o botão direito no `test/java/assembler/CodeTest`

![](figs/H-Assembler/code-test-run.png){width=500}

Note que o teste falhou, já que a nossa implementação está incompleta.

![](figs/H-Assembler/code-test-erro.png){width=500}

### terminando

1. Retorne a classe `jump` e termine sua implementação.
1. Execute novamente até o teste passar.

!!! warning "Antes de continuar"
    Termine de implementar essa classe

![](figs/H-Assembler/code-test-result.png){width=500}

!!! progress
    Próxima etapa ....

[Desenvolvimento baseado em testes](https://en.wikipedia.org/wiki/Test-driven_development) é uma técnica que temos utilizado até agora para os nosso projetos, nesse método fragmentando o desenvolvimento em pequenos módulos que são testados de forma individual, por testes unitários. O desenvolvimento é focado em fazer com que os módulos passem nos testes.

Como os testes não são perfeitos e não conseguem cobrir toda a funcionalidade do módulo, é necessário realizarmos o teste de integração, onde juntamos todas as peças e testamos o sistema como um todo.

Utilizaremos o mesmo recurso agora em java, onde cada módulo (método) possui um teste e quando todos os módulos estivem implementados e funcionando realizamos um teste de integração que valida tudo.

Os testes unitários foram feitos com o [JUnit](https://junit.org/junit5/) e estão na pasta do projeto: `G-Assembler/Assembler/test/java/assembler`. Os testes cobrem todas os métodos do projeto.

## Exemplo parser

Os testes são uma guia do que cada método deve fazer, e eles servirão como complemento da documentação do módulo. Iremos seguir o fluxo:

1. Ler descrição do método
1. Abrir teste unitário e entender o que é passado e o que é esperado
1. Desenvolver método
1. Testar
   - Falhou? Volte para 1.

Vamos pegar como exemplo o método `commandType` do `parser`:

```java
/**
 * Retorna o tipo da instrução passada no argumento:
 *  A_COMMAND para leaw, por exemplo leaw $1,%A
 *  L_COMMAND para labels, por exemplo Xyz: , onde Xyz é um símbolo.
 *  C_COMMAND para todos os outros comandos
 * @param  command instrução a ser analisada.
 * @return o tipo da instrução.
 */
 public CommandType commandType(String command) {
   return null;
 }
```

E seu teste unitário:

```java
/**
  * Teste para a instrução commandType
  */
@Test
public void testParser_commandType() {
  try {
      assertTrue("leaw $0,%A",parser.commandType("leaw $0,%A")==Parser.CommandType.A_COMMAND);
      assertTrue("abc:",parser.commandType("abc:")==Parser.CommandType.L_COMMAND);
      assertTrue("movw %A,%D",parser.commandType("movw %A,%D")==Parser.CommandType.C_COMMAND);
      ....
      ....
   }
}
```

Vamos analisar o primeiro teste:

```java
assertTrue("leaw $0,%A",parser.commandType("leaw $0,%A")==Parser.CommandType.A_COMMAND);`
```

- Nesse teste é passado a string `"leaw $0,%A"` para o método `parser.commandType` e esperasse na saída `A_COMMAND`.

Com essa informação complementar conseguimos inciar o desenvolvimento dessa classe.

!!! warning "Antes de continuar"
     1. Implemente a classe `parser.commandType`
     1. Execute o teste unitário do `parser` até que o `comandType` passe nos testes.
     
     
!!! progress
    Próxima etapa ....
     
Implemente o método `initialize` da classe `SymbolTable` utilizando os conceitos visto nos outros labs. 

O initialize utiliza outros métodos dessa classe, edite eles:

```java
    public void addEntry(String symbol, int address) {
        symbolTable.put(symbol, address);
    }
```

```java
  public Boolean contains(String symbol) {
        return symbolTable.containsKey(symbol);
    }
```

```java
 public Integer getAddress(String symbol) {
        return symbolTable.get(symbol);
    }
```

Agora com os demais métodos implementando faça o `initialize`.

Tabela de símbolos? De uma lida na [teoria/Tabela de Símbolos](Z01.1/assembler-Dicas-SymbolTable/)

!!! tip
    Use os testes para ajudar entender o que o método faz.

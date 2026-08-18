# Lab: Transistores / CI

Esse laboratório tem como objetivo trabalhar com os conceitos básicos de portas lógicas realizadas a base de transistores e também trabalhar com componentes integrados (CI).

Existem basicamente três níveis de simulação de componentes eletrônicos: a primeira, puramente lógica utiliza de portas lógicas "ideais" (https://simulator.io/board). Um simulador mais preciso irá utilizar transistores para a implementação dessas portas lógicas porém não leva em consideração todos os fatores físicos-eletrônicos dos componentes (http://falstad.com/circuit/). Já um simulador que leva em consideração as propriedades dos componentes é chamado de SPICE e irá gerar uma simulação mais precisa em termos físicos do circuito original (http://circuitlab.com).

!!! progress
    Cheguei Aqui!


## Parte 1 - Circuito misterioso

Vamos usar o simulador do site falstad para implementar um circuito feito com transistores que implementa uma equação booleana. 

1. Abra o site: http://www.falstad.com/circuit/
1. :arrow_right: Arquivo :arrow_right: Importar Arquivo Texto :arrow_right: Copiar e colar o texto a seguir

```
<cir f="1" ts="0.000005" ic="10.20027730826997" cb="52" pb="50" vr="5" mts="5e-11">
  <R x="368 64 320 64" f="0" wf="0" maxv="5"/>
  <L x="240 208 208 208" f="0" p="1" hi="3.6"/>
  <L x="240 256 208 256" f="0" p="1" hi="3.6"/>
  <w x="368 192 368 64" f="0"/>
  <g x="368 528 368 576" f="0"/>
  <f x="240 208 368 208" f="1" mo="default"/>
  <w x="464 192 464 64" f="0"/>
  <w x="368 64 464 64" f="0"/>
  <f x="336 480 368 480" f="0" mo="default"/>
  <w x="464 224 464 272" f="0"/>
  <w x="416 272 464 272" f="0"/>
  <w x="368 224 368 240" f="0"/>
  <w x="368 240 416 240" f="0"/>
  <w x="416 240 416 272" f="0"/>
  <w x="368 384 368 336" f="0"/>
  <w x="368 336 416 336" f="0"/>
  <w x="416 272 416 336" f="0"/>
  <w x="416 336 464 336" f="0"/>
  <w x="464 336 576 336" f="0"/>
  <w x="368 416 368 464" f="0"/>
  <w x="368 496 368 528" f="0"/>
  <w x="336 480 272 480" f="0"/>
  <w x="272 480 272 256" f="0"/>
  <w x="272 256 240 256" f="0"/>
  <w x="272 256 272 144" f="0"/>
  <w x="272 144 416 144" f="0"/>
  <w x="416 144 416 208" f="0"/>
  <f x="416 208 464 208" f="1" mo="default"/>
  <f x="336 400 368 400" f="0" mo="default"/>
  <w x="336 400 288 400" f="0"/>
  <w x="288 400 288 224" f="0"/>
  <w x="288 224 240 224" f="0"/>
  <w x="240 224 240 208" f="0"/>
</cir>
```

!!! exercise
    Com o circuito carregado no site, encontre:
    
    1. Encontre a tabela verdade do circuito.
        - Faça todas as combinações possíveis de entradas (H/L) e verifique o valor da saída (H/L)
    1. A partir da tabela verdade encontre a equação lógica.
    1. Desenhar o diagrama da equação (simplificado).


##  Parte 2 - Outro circuito misterioso

Implementar o outro circuito feito com transistores que implementa uma equação booleana no simulador do site falstad. 

1. Abra o site: http://www.falstad.com/circuit/
1. :arrow_right: Arquivo :arrow_right: Importar Arquivo Texto :arrow_right: Copiar e colar o texto a seguir

```
$ 1 0.000005 10.20027730826997 52 5 50 5e-11
R 368 64 320 64 0 0 40 5 0 0 0.5
L 240 208 208 208 0 0 false 3.6 0
L 240 256 208 256 0 0 false 3.6 0
w 368 192 368 64 0
g 368 528 368 576 0 0
M 576 336 640 336 0 2.5
L 240 304 208 304 0 0 false 5 0
f 240 208 368 208 33 1.5 0.02
w 464 192 464 64 0
w 368 64 464 64 0
f 336 480 368 480 32 1.5 0.02
w 464 224 464 272 0
w 416 272 464 272 0
w 368 224 368 240 0
w 368 240 416 240 0
w 416 240 416 272 0
w 368 384 368 336 0
w 368 336 416 336 0
w 416 304 416 336 0
w 416 336 464 336 0
w 464 336 464 384 0
w 464 336 576 336 0
w 368 416 368 464 0
w 368 496 368 528 0
w 464 416 464 528 0
w 464 528 368 528 0
w 240 304 240 352 0
w 240 352 400 352 0
w 400 352 400 400 0
f 400 400 464 400 32 1.5 0.02
w 336 480 272 480 0
w 272 480 272 256 0
w 272 256 240 256 0
w 272 256 272 144 0
w 272 144 416 144 0
w 416 144 416 208 0
f 416 208 464 208 33 1.5 0.02
f 320 288 416 288 33 1.5 0.02
f 336 400 368 400 32 1.5 0.02
w 336 400 288 400 0
w 288 400 288 224 0
w 288 224 240 224 0
w 240 224 240 208 0
w 320 288 320 304 0
w 320 304 240 304 0
```


!!! exercise
    Assim como no circuito anterior, encontre:

    1. Encontre a tabela verdade do circuito.
        - Faça todas as combinações possíveis de entradas (H/L) e verifique o valor da saída (H/L)
    1. A partir da tabela verdade encontre a equação lógica.
    1. Desenhar o diagrama da equação (simplificado).

!!! progress
    Cheguei Aqui!


##  Parte 3 - Circuitos Integrados - CI

Circuitos integrados são componentes eletrônicos que possuem internamente dezenas a milhares de transistores que implementam circuitos eletrônicos, facilitando e possibilitando o desenvolvimento de projetos de hardware mais complexos.

Existem várias 'famílias' de CI que implementam portas lógicas. Exemplos de componentes dessa famílias:

- 4001: Quatro portas NOR de duas entradas
- 4011: Quatro portas NAND de duas entradas
- 4071: Quatro portas OR de duas entradas

> Para a lista completa acesse: https://en.wikipedia.org/wiki/List_of_4000-series_integrated_circuits

Implemente agora a função lógica da seção "Parte 2 - Outro circuito misterioso" utilizando portas lógicas.

!!! progress
    Cheguei Aqui!


## Praticando no papel

> Questão extraída do EXAME NACIONAL DE DESEMPENHO DOS ESTUDANTES 2014

Um processo monitora três parâmetros para controle de qualidade: `A`, `B`, `C`. Cada parâmetro possui um
valor na decisão final da qualidade. A existência do parâmetro `A` pesa 30% na decisão final, enquanto os
parâmetros `B` e `C` pesam 30% e 40%, respectivamente. O grau de aprovação do processo é dado pela soma
dos percentuais desses três parâmetros. O produto gerado pelo processo é considerado aprovado, caso o
grau de qualidade seja superior ou igual a 60%, e reprovado, se o grau de qualidade for inferior ou igual a
30%.

Caso o grau de qualidade esteja entre 30% e 60%, a decisão de aprovação ou reprovação é indiferente.
Por exemplo, se um produto apresentar os parâmetros `A` e `B`, terá grau de qualidade de 30%+30% = 60%,
levando à sua aprovação.

Com base na situação descrita, projete um circuito lógico com o menor número possível de portas lógicas,
para determinar a aprovação ou não do produto de acordo com a presença de seus parâmetros. As entradas
do circuito serão os sinais `A`, `B`,`C`, e a saída será um sinal `Z`. Para atingir esse objetivo, faça o que se pede nos itens a seguir.

1. Monte uma tabela verdade do sistema com a formação `A`, `B`, `C`.
1. Desenhe o circuito final otimizado utilizando portas lógicas.
1. *(extra, não tinha no enade)* Implemente a lógica encontrada com CIs da família 74xx
 


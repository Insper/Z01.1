# Lab: Programando o CPU na FPGA

Ao final desse lab você deve ser capaz de programar a FPGA com o Z01.1

## Programando a FPGA

A FPGA é um hardware que pode ser configurável para implementar 'qualquer' sistema digital, incluindo um computador. 

Para programar com o CPU do Computador, executar o Quartus e abrir o arquivo de projeto **EleSis26.qpf**.

No projeto, vocês terão que **incluir todos os arquivos relevantes** das APS anteriores, como a ALU e suas dependências. 

Para as memórias, iremos utilizar as memórias já prontas da FPGA, ao invés das criadas com os flip-flops. Para isso, também devem ser incluídos no projeto os arquivos `RAM.qip` e `ROM.qip` da pastas _Quartus_.

Também terão que incluir os arquivos desenvolvidos na APS-E.

Por fim, deve ser incluído e configurado como toplevel o arquivo `Computador.vhd` da pasta CPU_FPGA. Este arquivo faz, de fato, a ligação entra CPU, memória ROM e memoryIO, bem como com os elementos da placa.

No arquivo da ROM, é definido um arquivo `.mif`, que contém o programa que será executado no nosso computador.

Basta compilar o projeto e carregar no FPGA como normalmente, que o código será executado.

<!--
## Gerando arquivo CDF

Após concluir os arquivos da pasta `/src` e compilar o projeto.

Na sequência, acessar o programmer e em `File` -> `Save as` salvar o arquivo `DE0_CV_Default.cdf` na própria pasta  `Quartus`.

Para programar na FPGA o CPU que vocês fizeram, executar o script:

``` bash
$ ./programCPU_FPGA.py
```

Esse script irá carregar na FPGA o hardware do Z01.1 e também um programa bem simples.

!!! note
    Nossa FPGA é dita do tipo volátil, ela perde a configuração sempre que for desligada! 
    
    - Essa etapa deve ser realizada sempre que ela desligar.
-->

Nesse teste, o programa (`advinha.mif`) possui as posições das chaves armazenadas na memória. Se você colocar as chaves na posição correta, todos os LEDs acenderão. Para verificar o funcionamento do CPU, descubra as posições.

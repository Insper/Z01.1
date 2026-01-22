# Lab: Programando o CPU na FPGA

Ao final desse lab você deve ser capaz de:

1. Programar a FPGA com o Z01.1

## Gerando arquivo CDF

Após concluir os arquivos da pasta `/src`, executar o Quartus e compilar o projeto.

Na sequência, acessar o programmer e em `File` -> `Save as` salvar o arquivo `DE0_CV_Default.cdf` na própria pasta  `Quartus`.

## Programando a FPGA

A FPGA é um hardware que pode ser configurável para implementar 'qualquer' sistema digital, incluindo um computador. Para programar na FPGA o CPU que vocês fizeram, executar o script:

``` bash
$ ./programCPU_FPGA.py
```

Esse script irá carregar na FPGA o hardware do Z01.1 e também um programa bem simples.

Este programa possui as posições das chaves armazenadas. Se você colocar as chaves na posição correta, todos os LEDs acenderão. Para verificar o funcionamento do CPU, descubra as posições.

!!! note
    Nossa FPGA é dita do tipo volátil, ela perde a configuração sempre que for desligada! 
    
    - Essa etapa deve ser realizada sempre que ela desligar.

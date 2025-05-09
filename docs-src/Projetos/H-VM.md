# H - VM

![](../figs/I-VM/sistema-vm.svg)

Nesse projeto iremos criar programas em VM para o nosso Z01.1,
essa entrega é individual e não vale nota, mas será cobrado em prova 
<!--e servirá para vocês entenderem o próximo projeto: `I-VMTranslator`.-->

## Instruções 

As instruções técnicas referente ao projeto estão no laboratório [Lab15-VM](/Z01.1/Labs/Lab15-VM/).

## Módulos a serem implementados

Os módulos estão na pasta `h_VM/src/vm/` e estão organizados por ordem de dificuldade:

1. 1a-Add
1. 1b-Add
1. 1c-Dic
1. 2a-Calculadora
1. 2b-Calculadora
1. 2c-Calculadora
1. 2d-Calculadora

Para testar, basta editar o arquivo `config_testes_vm.txt` com os módulos que deseja executar e então executar o script: `./compileALL.py` localizado na pasta do projeto e finalmente `SIM=ghdl pytest --tb=no -s`.

## Exemplos

Existem diversos exemplos de programas escritos em linguagem VM, eles estão na pasta `src/examples/`

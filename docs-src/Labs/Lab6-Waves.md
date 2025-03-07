# Lab 4: Visualizando simulação


É muito difícil sabermos porque uma implementação em VHDL não funciona, atualmente o fluxo é: transcreve para VHDL o componente; testa; não funcionou volta para o VHDL; testa.... Será que não existe uma forma de conseguirmos visualizar o resultado do teste e com isso mudarmos a implementação em VDHL? Sim existe! 

Para isso, abra o terminal na pasta do projeto (por exemplo, `b_logComb/`) e execute:

```bash
$ WAVES=1 pytest -k and16
```

Cada simulação realizada usando o software GHDL salva um arquivo `.ghw` que contém as formas de onda que resultam dos testes.

Assim, após executar o teste, pode-se utilizar o software `gtkwave` para visualizar o resultado. Por exemplo:

```bash
$ gtkwave sim_build/and16.ghw
```

Esse comando irá abrir no software `gtkwave` o resultado do teste do `and16`.
Para visualizar as formas de onda, selecione o módulo na caixa à esquerda e, em seguida, arraste os sinais desejado para a caixa `Signals`.

![GTKWave](../figs/D-ULA/gtkwave.png)

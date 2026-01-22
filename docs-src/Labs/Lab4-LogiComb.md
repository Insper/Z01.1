# Lab: Lógica Combinacional

!!! info "Individual"
    Esse laboratório é para ser realizado individualmente.

Esse laboratório introduz o modelo de desenvolvimento baseado em testes que será utilizado em todos os projetos.

!!! progress
    Começando...

## `or16.vhd`

Iremos trabalhar implementando o módulo `or16` que é uma parte do projeto B. 

    
Abra o terminal na pasta `b_logComb/` e execute:

```bash
$ pytest -k or16
```

O mesmo irá executar a compilação dos arquivos `src/*.vhd` e realizar testes unitários em cada um do módulo, como os módulos não estão implementados e como estamos forçando o teste do `or16` devemos ter um erro nesse módulo.

<script id="asciicast-hScw7GXpCGnSPw4ocDzwbt23m" src="https://asciinema.org/a/hScw7GXpCGnSPw4ocDzwbt23m.js" async></script>


!!! progress
    Cheguei aqui!


Esse erro acontece pois o módulo não possui nenhuma implementação:

``` vhdl
-- or16.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture arch of Or16 is
begin


end architecture;
```

Vamos agora editar esse arquivo para realizar sua implementação. Esse módulo deve realizar uma **OR** entre as entras `a` e `b` e colocar o resultado na saída `q`, para isso insira a seguinte linha no arquivo 

``` vhdl
q <= a or b;
```

Teste novamente (`pytest -k or16`) agora deve passar:

<script id="asciicast-5CQCUV0yvDobOdOPZQgwaGMHI" src="https://asciinema.org/a/5CQCUV0yvDobOdOPZQgwaGMHI.js" async></script>

!!! progress
    Cheguei aqui!

Uma vez implementando, testado e validado, podemos fazer o commit e enviar para
o repositório do grupo esse novo branch. Essa modificação deve ser salva em novo branch **or16**. Dentro do terminal (na pasta do projeto B):

``` bash
$ git checkout -B or16-SEU-USER
$ git commit -am "funcionando e testado"
$ git push origin or16-SEU-USER
```

!!! note
    trocar **SEU-USER** pelo seu usuário, para evitar conflito quando
    forem enviar para o git.

Com o branch enviado ao github você deve gerar um pull-request para o mediador verificar e aprovar ou não a sua implementação.
 
!!! tip "Para o Mediador"
    Como vocês estão realizando isso individualmente, o mediador do projeto vai
    receber vários PRs desse branch, você só deve aceitar um, já que todos fizeram
    o mesmo.

!!! progress
    Cheguei aqui!

## `and16.vhd`

Agora você vai fazer o desenvolvimento do módulo `and16.vhd`. Esse componente recebe dois vetores
de 16 bits (`a` e `b`) e realizada uma `AND` bit a bit (`q(0) = a(0) and b(0) ....`). Para implementar você deve seguir os passos a seguir:

1. Abrir o arquivo de teste e descomentar o módulo `and16.vhd`
1. Fazer a implementação em `vhdl`
1. Testar
1. Criar uma branch
1. Fazer um commit
1. Enviar a implementação

!!! tip
    Esse vai ser o fluxo para quase todos os projetos que iremos realizar na disciplina.

!!! progress
    Cheguei aqui!

## `mux2way.vhd`

!!! tip "Teoria"
    Para implementar esse módulo, leia a teoria em: [VHDL/Combinacional](/Z01.1/VHDL/VHDL-Combinacional).

Faça a implementação do `mux2way.vhd`, usando os mesmos passos anteriores. 

!!! progress
    Cheguei aqui!

!!! note
    Para testar todos os módulos, executar:
    ```bash
    $ pytest -s
    ```

## Próximos passos

Agora é começar a trabalhar nos demais módulos do projeto, leia a descrição do Projeto B na página de projetos.

!!! tip "Scrum Master"
    Você é scrum? Então tem várias tarefas pela frente! Acesse a página [Util -> Vixi! Sou scrum master](/Z01.1/Util/Util-vixi-sou-scrum/) e siga os passos lá!

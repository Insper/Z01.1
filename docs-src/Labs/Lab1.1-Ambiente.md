# Lab 1.1: Configurando Github

Devemos começar a preparar o terreno para os projetos em grupo que estarão por vir, nessa etapa vocês devem montar um grupo de 5/6 colegas e dar um nome a ele (os grupos são nomeados por letras, a primeira letra do nome do seu grupo é o nome da coluna na planilha dos grupos).

O grupo irá trabalhar de forma colaborativa via a utilização do git/ github. É imprescindível que todos trabalhem dessa forma, pois será a maneira que iremos avaliar individualmente vocês. 


## GitHub

O git será uma das ferramentas mais importantes para o projeto.

Utilizar o link fornecido no Blackboard para acessar a atividade no Github Classroom. 
O primeiro integrante a acessar o link deve fornecer um nome ao grupo.
Um repositório com o nome "aps-&lt;nome do grupo&gt;" será criado.

O repositório criado no Classroom é um [Fork](https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow) do repositório do projeto.

Os demais integrantes devem acessar o grupo já criado.

### Ferramentas github

!!! tip "git"
    GitHub Inc. is a web-based hosting service for version control using Git. It is mostly used for computer code. It offers all of the distributed version control and source code management functionality of Git as well as adding its own features. [Wikipedia](https://en.wikipedia.org/wiki/GitHub)
    
    - [http://github.com](http://github.com)

Nessa disciplina iremos utilizar não só a ferramenta principal do github, que é o servidor de repositórios git, mas também as outras ferramentas já integradas na plataforma para gestão e acompanhamento de projeto. 
    

Para isso será alteramos algumas configurações no repositório:

!!! example "Execute"
    Na página do seu repositório vá em: `Settings` :arrow_right: `Features` :arrow_right: e ative `Issues ` e `Project`.


??? tip "Ferramentas github"
    - **Github Project**: Ferramenta do github para gerenciamento de projetos (estilo Kambam), cada repositório pode ter N projetos, e o github automatiza o processo de todo/doing/done deixando de maneira visual as tarefas.

    - **github issues**: Plataforma do github para criação de tarefas/ reportar erros. As tarefas aqui criadas serão associadas a um projeto específico e a um grupo de pessoas específicas.

    - **Branch**: Ramo criado para implementar um feature/ correção de bug que será futuramente incorporado no master (merge)

    - **Main**: Ramo principal do projeto, gerenciado pelo Scrum Master

    - **Pull-request**: Maneira de um líder de projeto receber alterações a um projeto e ter controle do que será aceito ou não. Na maioria dos casos o pull-request é criado por um usuário e revisado por outro. Quem for fazer a eletiva de [`Desenvolvimento Aberto`](https://igordsm.github.io/dev-aberto/aulas.html) do [Prof. Igor](https://github.com/igordsm) verá bem a fundo essa questão. 


## Actions

Irá executar de forma automática alguns testes (criado por nós) no projeto e em caso de alguma falha irá notificar no github.

Como ele funciona? Ele fica verificando o repositório por alterações (você deve além de dar commit, dar push) e para cada novo commit ele faz o seguinte

1. Inicializa uma nova máquina virtual na nuvem (ubuntu, windows, mac)
2. Instala todo a infra necessária do projeto (no caso do Z01.1 : python, java, Quartus, ...)
3. Executa os scripts de teste localizados em cada projeto.
4. Desliga e "deleta" a máquina virtual recém criada.

O arquivo de configuração está localizado na pasta: `<repo>/.github/workflows/`. Nele que estão feitas todas as definições de execução.

Na pagina do seu repositório em commits deve aparecer uma pequena bolinha em cada um dos commits novos que serão feitos no projeto, esse indicador será atualizado, sendo:

- Verde: O teste passou
- Vermelho: O teste falhou

!!! note
    Cada teste leva em torno de alguns minutos já que toda a infraestrutura é instalada sempre do zero, não utilize o sistema de Integração Contínua para validar as suas novas implementações, esse sistema deve ser utilizado para encontrar problemas mais amplos ou para o scrum master aceitar ou não um pull-request, já que o resultado do sucesso ou não dessa requisição é visível facilmente.


### Arquivo GRUPO.json de configuração 

!!! warning "Um por grupo"
    Somente um do grupo deve realizar isso.

O mediador desse projeto deve editar o arquivo json `GRUPO.json` que está localizado na raiz do projeto inserindo a letra do grupo (que foi atribuída em sala) e o nome recém criado do grupo (o nome do grupo deve ser uma Frase com a primeira palavra começando com a letra do Grupo).

Exemplo um grupo com a letra **M**, `GRUPO.json`:

```json
{
  "Nome-Grupo" : "Macarrao" 
}
```

Após editar o arquivo deve-se: fazer um `commit` e um `push` para o repositório. 

```bash
$ git commit -am "update Grupo"
$ git push origin main
```


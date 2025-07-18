# Dicas git

## Configurando o SSH no Github

Para criar uma chave ed25519, executar: 

```bash
$ ssh-keygen -t ed25519 -C "your_email@example.com"
```

Para criar uma chave rsa, executar: 
```bash
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Adicionar a chave SSH ao ssh-agent:

```bash
$ ssh-add ~/.ssh/id_ed25519
```
ou

```bash
$ ssh-add ~/.ssh/id_rsa
```

Copiar a sua chave SSH pública

```bash
$ cat ~/.ssh/id_ed25519.pub
```
ou

```bash
$ cat ~/.ssh/id_rsa.pub
```

Adicionar a sua chave SSH pública ao GitHub:

Na página de configurações do GitHub clique em "SSH and GPG keys". Depois, clique em "New SSH key".

Em seguida, adicione um título descritivo e cole sua chave pública.

Para testar conexão SSH, execute o seguinte comando: 

```bash
$ ssh -T git@github.com
```

Digitar "yes" para continuar.
Verifique se a mensagem resultante contém o sucesso da sua autenticação.


## Clonando repositório

```bash
$ git clone URL_DO_SEU_REP
```

<!--
## Instalando/Atualizando Z01-tools

```
$ cd SEU_REP
$ ./updateZ01tools.sh
```

O script `updateZ01tools.sh` clona o repositório http://github.com/Insper/z01-tools e o salva em sua pasta $HOME (/home/user/). O script serve para instalar e/ou atualizar a infra da disciplina, deve ser executado sempre que indicado pelo professor.


## Configurando upstream

Referenciando repositório original da disciplina:

```bash
$ git remote add upstream https://github.com/insper/Z01.1
```
-->

### Atualizando repositório do grupo

Atualizando repositório do grupo com alterações feitas no repositório da disciplina:

```bash
$ git fetch upstream
$ git checkout main
$ git merge upstream/main
$ git push origin main
```

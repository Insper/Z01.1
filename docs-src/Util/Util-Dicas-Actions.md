# Dicas Actions

## Adicionando teste ao projeto

Edite o arquivo `actions.yml` localizado na pasta .github/workflows/, adicionando o script que deseja testar. Exemplos, para testarmos o projeto B é necessário adicionar a seguinte linha:

```
        cd b_logComb
        pytest -s
```

Isso deve ser feito na parte final do arquivo



!!! warning
    Você não deve remover os testes antigos

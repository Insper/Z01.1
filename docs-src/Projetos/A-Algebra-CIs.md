# A - Álgebra Booleana e Implementação de Funções Lógicas com CIs

| Data da entrega| 
|----------------|
| {{apsA_date}} |

# APS: Detector de Bordas 2×2 

Nesse projeto iremos utilizar a álgebra booleana para obter as funções lógicas de um detector de bordas.

Considere uma imagem binária formada por pixels (cada pixel corresponde a uma entrada booleana) que podem assumir os valores:

- 0 = preto
- 1 = branco

O objetivo é determinar se existe uma mudança de intensidade horizontal, vertical ou diagonal dentro da janela.

O sistema analisa uma janela de quatro pixels:

<table>
  <tr>
    <td>A</td>
    <td>B</td>
  </tr>
  <tr>
    <td>C</td>
    <td>D</td>
  </tr>
</table>

O circuito possui exatamente 3 saídas:

- H - Indica mudança entre a linha superior e a linha inferior.
- V - Indica mudança entre a coluna esquerda e a coluna direita.
- D - Indica uma configuração diagonal, isto é, quando os pixels de uma diagonal possuem um valor e os pixels da outra diagonal possuem o valor oposto.

Deve-se obter as expressões lógicas, simplificá-las e testá-las.

## Rubricas de avaliação

| Conceito | Descritivo                                                  |
|----------|-------------------------------------------------------------|
| **I**    | Funções Lógicas Não Obtidas                                 |
|          |                                                             |
| **D**    | Apresentação Pouco Clara das Funções Lógicas                | 
|          |                                                             |
| **C+**   | Obtenção E Simplificação das Funções Lógicas                |
|          |                                                             |
| **B+**   | Obtenção E Simplificação das Funções Lógicas                |
|          | **E** Implementação das Funções Lógicas em Simulador (nível de portas lógicas)        |
|          | **E** Video demonstrando parte 1 do Lab Transistores - CI   | 
|          |                                                             |
| **A+**   | Obtenção E Simplificação das Funções Lógicas                |
|          | **E** Implementação das Funções Lógicas em Simulador (nível de portas lógicas e nível de transistores)        |
|          | **E** Video demonstrando partes 2 e 3  Lab Transistores - CI | 



### Entrega

A entrega será feita pelo Github Classroom.

### Formulários

- [Scrum Master]({{form_scrum_link}})
- [Desenvolvedores]({{form_dev_link}})

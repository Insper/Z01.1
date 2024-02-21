# A - Álgebra Booleana e Implementação de Funções Lógicas com CIs

| Data da entrega| 
|----------------|
| {{apsA_date}} |

Nesse projeto iremos utilizar a álgebra booleana para obter as funções lógicas de um sistema as quais deverão ser implementadas utilizando CIs.

Os arquivos relacionados a este projeto devem ser enviados pelo Blackboard (é necessário que apenas um(a) integrante do grupo envie, desde que identifique os demais membros).

Queremos controlar o robô da figura a seguir:

![](../figs/A-Transistores/carro.png){width=400}


onde y1 e y2 são sinais de saída (de 2 bits cada) para os motores que controlam as esteiras da esquerda e direita. x1, x2, x3 e x4 são sensores (bumpers) para detectar a colisão do robô.

Os sinais de y1 e y2 (de 2 bits cada) descrevem os seguintes movimentos:

- "01" - motor ligado diretamente (andando para frente)
- "10" - motor ligado reversamente (andando para trás) 
- "00" - motor desligado

> **os sinais y1 e y2 devem ser ligados as entradas I1, I2, I3 e I4 da ponte H.**

![](../figs/A-Transistores/motor.png){width=400}

| **Rubricas do Projeto de Controle do Robô Utilizando Álgebra Booleana e CIs**  |
|--------------------------------------------------------------------------------|
| **I (Insatisfatório)**                                                         |
| - **Funções Lógicas Não Obtidas:** O grupo não conseguiu derivar as funções lógicas necessárias para o controle do motor com base nos requisitos do projeto.|
|                                                                                 |
| **D**                                                                           |
| - **Obtenção sem Simplificação das Funções Lógicas:** As funções lógicas a seguir foram obtidas a partir dos requisitos do projeto, mas não foram simplificadas usando álgebra booleana.
| - **Apresentação Pouco Clara das Funções Lógicas:** A apresentação das funções lógicas e sua relação com as condições do projeto pode estar confusa ou pouco clara, dificultando a compreensão. |
|                                                                                 |
| **C+**                                                                          |
| - **Obtenção, Simplificação e Aplicação das Funções Lógicas:** As funções lógicas a seguir foram obtidas corretamente a partir dos requisitos do projeto e simplificadas usando técnicas de álgebra booleana:
|   1. Todos os motores desligados se (x1 ou x2) e (x3 ou x4) indicarem colisão.
|   2. Todos os motores ligados diretamente se nenhum sensor indicar colisão.
|   3. Ambos os motores ligados reversamente se os sensores (x1 e x2) detectarem colisão.
|   4. Ambos os motores ligados diretamente se os sensores (x3 e x4) detectarem colisão.
|   5. Motor esquerdo (y1) ligado e motor direito (y2) desligado para rotação anti-horária quando x1 detectar colisão, mas não x2.
|   6. Motor esquerdo (y1) desligado e motor direito (y2) ligado para rotação horária quando x2 detectar colisão, mas não x1.
|   7. Motor esquerdo (y1) ligado e motor direito (y2) desligado para rotação horária quando x3 detectar colisão, mas não x4.
|   8. Motor esquerdo (y1) desligado e motor direito (y2) ligado para rotação anti-horária quando x4 detectar colisão, mas não x3.
| > Caso alguma condição lógica esteja presente em mais de uma instrução, considerar a primeira condição que ocorre!
| - **Resolução das Funções Lógicas:** O grupo forneceu uma foto clara da resolução escrita das funções lógicas obtidas e simplificadas, demonstrando a aplicação dos conceitos de álgebra booleana. |
| - **Video demonstrando parte 1 do Lab 1**                                |
|                                                                                 |
| **B+**                                                                          |
| - **Implementação em Simulador das Funções Lógicas:** As funções lógicas a seguir foram derivadas dos requisitos do projeto e implementadas de forma precisa usando um simulador de circuitos, como o Falstad ou o Tinkercad:
|   1. Todos os motores desligados se (x1 ou x2) e (x3 ou x4) indicarem colisão.
|   2. Todos os motores ligados diretamente se nenhum sensor indicar colisão.
|   3. Ambos os motores ligados reversamente se os sensores (x1 e x2) detectarem colisão.
|   4. Ambos os motores ligados diretamente se os sensores (x3 e x4) detectarem colisão.
|   5. Motor esquerdo (y1) ligado e motor direito (y2) desligado para rotação anti-horária quando x1 detectar colisão, mas não x2.
|   6. Motor esquerdo (y1) desligado e motor direito (y2) ligado para rotação horária quando x2 detectar colisão, mas não x1.
|   7. Motor esquerdo (y1) ligado e motor direito (y2) desligado para rotação horária quando x3 detectar colisão, mas não x4.
|   8. Motor esquerdo (y1) desligado e motor direito (y2) ligado para rotação anti-horária quando x4 detectar colisão, mas não x3.
| > Caso alguma condição lógica esteja presente em mais de uma instrução, considerar a primeira condição que ocorre!
| - **Testes Simulados Efetivos:** As funções lógicas foram testadas no simulador, e o comportamento foi conforme o esperado. A simulação mostrou que os motores simulados reagem corretamente às diferentes combinações de entrada dos sensores, evidenciando a correta implementação das funções.
| - **Vídeo ou Arquivo de Simulação Explicativo:** O grupo forneceu um vídeo explicativo ou um arquivo de texto que detalha a simulação das funções lógicas, incluindo a representação dos circuitos e os resultados observados em diferentes cenários. |
| - **Video demonstrando partes 2 e 3 do Lab 1**                                  |
|                                                                                |
| **A+**                                                                         |
| - **Implementação no Robô das Funções Lógicas:** As funções lógicas a seguir foram  implementadas com sucesso usando Circuitos Integrados (CIs) no protoboard:
|   1. Todos os motores desligados se (x1 ou x2) e (x3 ou x4) indicarem colisão.
|   2. Todos os motores ligados diretamente se nenhum sensor indicar colisão.
|   3. Ambos os motores ligados reversamente se os sensores (x1 e x2) detectarem colisão.
|   4. Ambos os motores ligados diretamente se os sensores (x3 e x4) detectarem colisão.
|   5. Motor esquerdo (y1) ligado e motor direito (y2) desligado para rotação anti-horária quando x1 detectar colisão, mas não x2.
|   6. Motor esquerdo (y1) desligado e motor direito (y2) ligado para rotação horária quando x2 detectar colisão, mas não x1.
|   7. Motor esquerdo (y1) ligado e motor direito (y2) desligado para rotação horária quando x3 detectar colisão, mas não x4.
|   8. Motor esquerdo (y1) desligado e motor direito (y2) ligado para rotação anti-horária quando x4 detectar colisão, mas não x3.
| > Caso alguma condição lógica esteja presente em mais de uma instrução, considerar a primeira condição que ocorre!
| - **Testes Bem-Sucedidos e Comportamento Adequado:** As funções lógicas foram testadas no robô real e demonstraram um controle preciso do carrinho. O robô reagiu conforme as situações especificadas, mostrando movimentos de avanço, ré e rotação conforme as condições dos sensores.
| - **Vídeo de Demonstração Abrangente:** O grupo forneceu um vídeo detalhado que mostra a montagem dos CIs no protoboard, a conexão com os sensores, a interação das funções lógicas com os sinais dos sensores e como o robô respondeu a diferentes cenários. O vídeo destacou a funcionalidade e a coerência do sistema implementado. |


### Entrega

Nesta APS (e apenas nesta) não haverá forms para preencher. A entrega será feita pelo Blackboard.

Apenas um aluno(a) deve enviar os arquivos/links. O(A) escolhido(a) para realizar o envio é o primeiro nome de cada grupo na [Tabela - Grupos](https://insper-my.sharepoint.com/:x:/g/personal/renantd_insper_edu_br/ERiVX40tD1xGlL_L8a1KRlkBC9Ljze88QvvJdLZ4qxt0zQ?e=XIYWdF).


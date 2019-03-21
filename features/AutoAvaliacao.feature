Scenario: Inserindo notas de autoavaliação
  Given Estou na página de "autoavaliação" como aluno
  And O professor já liberou as notas
  When Adiciono algumas notas, porém não todas
  Then Recebo uma mensagem "autoavaliação incompleta"
  And Sou direcionado a página de "autoavaliação" novamente





  Scenario: Inserindo notas de autoavaliação
    Given Estou na página de "autoavaliação" como aluno
    And O professor já liberou as notas
    When Adiciono algumas notas, porém não todas
    Then Recebo uma mensagem "autoavaliação incompleta"
    And Sou direcionado a página de "autoavaliação" novamente


  Scenario: Checando a discrepância na nota de um aluno, quando não há discrepâncias
    Given Estou na página com a lista dos alunos
    And Todos os alunos já se autoavaliaram
    When Procuro o aluno "João" na lista
    And Verifico o estado de discrepância nas notas de "João"
    And Percebo que as notas da autoavaliação de "João" estão iguais as notas que dei a ele
    Then A página me mostra uma mensagem avisando que as notas do aluno não estão

  Scenario: Checando a discrepância na nota de um aluno, quando há discrepâncias
    Given Estou na página com a lista dos alunos
    And  tem 3 alunos na lista
    And Todos os alunos já se autoavaliaram
    When Verifico se algum dos alunos estão em estado de discrepância
    And Percebo que um dos alunos está em estado de discrepância
   Then Posso checar a porcentagem da discrepância das notas dele.

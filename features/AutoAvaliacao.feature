Scenario: Inserindo notas de autoavaliação
  Given Estou na página de "autoavaliação" como aluno
  And O professor já liberou as notas
  When Adiciono algumas notas, porém não todas
  Then Recebo uma mensagem "autoavaliação incompleta"
  And Sou direcionado a página de "autoavaliação" novamente

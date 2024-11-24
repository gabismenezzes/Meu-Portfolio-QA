Feature: Exibição de Estimativa de Preço
  Como um usuário do aplicativo,
  Quero ver o preço estimado da corrida,
  Para que eu possa decidir se devo prosseguir com a corrida.

  Scenario: Exibir preço estimado dentro do tempo esperado
    Given que o usuário solicitou uma corrida
    When o sistema calcula a estimativa de preço
    Then o sistema deve exibir o preço estimado
    And o cálculo deve ser feito em até 3 segundos.

  Scenario: Falha ao calcular estimativa de preço
    Given que o usuário solicitou uma corrida
    When o sistema não consegue calcular o preço em 3 segundos
    Then o sistema exibe uma mensagem de erro
    And solicita que o usuário tente novamente.

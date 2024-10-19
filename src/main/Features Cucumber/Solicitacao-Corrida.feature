Feature: Solicitação de Corrida
  Como um usuário do aplicativo,
  Quero solicitar uma corrida,
  Para que um motorista próximo seja notificado e eu possa me deslocar.

  Scenario: Solicitar corrida com motoristas disponíveis
    Given que o usuário está logado no aplicativo
    When o usuário solicita uma corrida
    And existem motoristas disponíveis na área
    Then a corrida é confirmada
    And o sistema exibe o preço estimado da corrida.

  Scenario: Solicitar corrida sem motoristas disponíveis
    Given que o usuário está logado no aplicativo
    When o usuário solicita uma corrida
    And não existem motoristas disponíveis na área
    Then o sistema informa que não há motoristas disponíveis
    And sugere tentar novamente mais tarde.

Feature: Cancelamento de Corrida Sem Taxa
  Como um usuário do aplicativo,
  Quero poder cancelar minha corrida sem taxas dentro de um tempo limite,
  Para que eu não seja cobrado se mudar de ideia logo após solicitar a corrida.

  Scenario: Cancelamento de corrida dentro do prazo sem taxas
    Given que o usuário solicitou uma corrida confirmada
    When o usuário cancela a corrida dentro de 5 minutos
    Then o sistema não cobra taxa de cancelamento
    And a corrida é cancelada.

  Scenario: Cancelamento de corrida após o prazo com cobrança de taxa
    Given que o usuário solicitou uma corrida confirmada
    When o usuário cancela a corrida após 5 minutos
    Then o sistema cobra uma taxa de cancelamento
    And o usuário é notificado sobre a cobrança.

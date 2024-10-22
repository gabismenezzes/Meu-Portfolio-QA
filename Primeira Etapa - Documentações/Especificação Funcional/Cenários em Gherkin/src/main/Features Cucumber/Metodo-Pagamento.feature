Feature: Verificação do Método de Pagamento
  Como um usuário do aplicativo,
  Quero que o sistema verifique o saldo do método de pagamento,
  Para garantir que a corrida possa ser cobrada corretamente.

  Scenario: Método de pagamento válido
    Given que o usuário selecionou um método de pagamento
    When o sistema verifica o saldo ou autorização
    And o método de pagamento é válido
    Then a corrida é confirmada.

  Scenario: Método de pagamento inválido
    Given que o usuário selecionou um método de pagamento
    When o sistema verifica o saldo ou autorização
    And o método de pagamento é inválido
    Then o sistema informa que o pagamento não foi autorizado
    And solicita que o usuário selecione outro método de pagamento.

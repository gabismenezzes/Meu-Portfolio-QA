Feature: Suporte a Alto Volume de Solicitações
  Como um usuário do aplicativo,
  Quero que o sistema suporte um alto número de solicitações,
  Para que o serviço não seja interrompido durante picos de uso.

  Scenario: Processamento de solicitações em pico de uso
    Given que o sistema está em um período de alta demanda
    When há até 100 mil solicitações simultâneas
    Then o sistema deve processar todas as solicitações sem comprometer o desempenho.

  Scenario: Limitação temporária de novas solicitações em pico de uso
    Given que o sistema está em um período de alta demanda
    When o número de solicitações excede 100 mil
    Then o sistema informa os usuários sobre o tempo de espera
    And limita temporariamente novas solicitações.

Feature: Processamento Seguro de Pagamento
  Como um usuário do aplicativo,
  Quero que meus pagamentos sejam processados de forma segura,
  Para proteger minhas informações financeiras.

  Scenario: Processamento de pagamento com sucesso
    Given que o usuário concluiu a corrida
    When o sistema processa o pagamento
    Then o pagamento é realizado usando TLS/SSL
    And o usuário recebe a confirmação de pagamento seguro.

  Scenario: Falha no processamento seguro
    Given que o usuário concluiu a corrida
    When o sistema tenta processar o pagamento
    And ocorre uma falha no protocolo de segurança
    Then o sistema notifica o usuário sobre o erro
    And solicita uma nova tentativa de pagamento.

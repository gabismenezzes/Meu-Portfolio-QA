Feature: Interface Intuitiva e Acessível
  Como um usuário do aplicativo,
  Quero uma interface acessível e fácil de usar,
  Para navegar pelo aplicativo sem dificuldades.

  Scenario: Navegação intuitiva pela interface
    Given que o usuário abriu o aplicativo
    When o usuário navega pelas funcionalidades do app
    Then o sistema deve apresentar uma interface intuitiva e acessível.

  Scenario: Dificuldade de navegação na interface
    Given que o usuário abriu o aplicativo
    When o usuário tem dificuldade em navegar
    Then o sistema deve apresentar sugestões ou dicas para auxiliar na navegação.

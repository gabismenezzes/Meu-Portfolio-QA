Feature: Suporte a Múltiplos Idiomas e Adaptação Regional
  Como um usuário do aplicativo,
  Quero que o sistema seja adaptado automaticamente para o meu idioma e região,
  Para que eu tenha uma experiência localizada.

  Scenario: Adaptação automática de idioma e região
    Given que o usuário está utilizando o aplicativo em uma região específica
    When o sistema detecta a localização do usuário
    Then o idioma, a moeda e o formato de data/hora devem ser adaptados automaticamente.

  Scenario: Adaptação manual de idioma e região
    Given que o usuário está utilizando o aplicativo
    When o sistema não adapta automaticamente a região
    Then o usuário pode selecionar manualmente as preferências de idioma e localização.

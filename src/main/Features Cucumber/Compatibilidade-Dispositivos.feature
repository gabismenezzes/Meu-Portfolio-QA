Feature: Compatibilidade com Diferentes Dispositivos e Sistemas Operacionais
  Como um usuário do aplicativo,
  Quero que o aplicativo seja compatível com diversos dispositivos e versões do sistema operacional,
  Para garantir que funcione corretamente independentemente do dispositivo.

  Scenario: Compatibilidade com dispositivos e sistemas suportados
    Given que o usuário utiliza o aplicativo em um dispositivo Android ou iOS
    When o sistema verifica a compatibilidade
    Then o aplicativo deve funcionar corretamente nas versões mais recentes e três versões anteriores do sistema operacional.

  Scenario: Incompatibilidade com dispositivo ou versão
    Given que o usuário utiliza o aplicativo
    When o dispositivo ou sistema operacional não é compatível
    Then o sistema exibe uma mensagem informando a incompatibilidade.

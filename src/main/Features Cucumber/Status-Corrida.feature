Feature: Atualização do Status da Corrida em Tempo Real
  Como um usuário do aplicativo,
  Quero que o status da corrida seja atualizado em tempo real,
  Para acompanhar a localização do motorista e o progresso da corrida.

  Scenario: Atualização do status dentro do tempo esperado
    Given que o usuário está acompanhando a corrida em tempo real
    When o status da corrida muda (ex.: motorista a caminho)
    Then o sistema atualiza o status em até 2 segundos.

  Scenario: Falha na atualização do status em tempo real
    Given que o usuário está acompanhando a corrida em tempo real
    When o status da corrida não é atualizado em até 2 segundos
    Then o sistema informa ao usuário sobre o atraso nas atualizações.

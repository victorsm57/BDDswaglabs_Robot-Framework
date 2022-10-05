*** Settings ***
Resource  ../../resources/main.robot
Test Teardown  Fechar navegador

*** Test Cases ***
Cenário 1: Fazer login no site da Swag Labs com credenciais válidas
   [Tags]   smoke
   Given eu abro o site da swag labs
   When eu preencho usuário e senha
   And aperto o botão de login
   Then a página home é apresentada

Cenário 2: Impedir usuário inválidado de fazer login
    [Tags]   regression
    Given eu abro o site da swag labs
    When preencho usuário e senha inválidos
    And aperto o botão de login
    Then a mensagem de erro de login é apresentada

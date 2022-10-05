*** Settings ***
Resource  ../main.robot

*** Variables ***
&{LoginPage}
#CREDENCIAIS VÁLIDAS
...  input_username=xpath://input[@id="user-name"]
...  input_password=xpath://input[@id="password"]
...  input_login=xpath://input[@id="login-button"]
#MENSAGENS DE ERRO DE LOGIN
...  ERROR_MESSAGE_PROVA=xpath://h3[@data-test="error"]

*** Keywords ***
eu abro o site da swag labs
     Open Browser   ${GERAL.URL}  ${GERAL.NAVEGADOR}
     Maximize Browser Window

eu preencho usuário e senha
      Input Text                   ${LoginPage.input_username}  ${GERAL.USER_VALIDO}
      Input Text                   ${LoginPage.input_password}  ${GERAL.SENHA_VALIDA}
      
aperto o botão de login
      Click Element                ${LoginPage.input_login}

#DADOS PARA USUÁRIO INVÁLIDO
preencho usuário e senha inválidos
      Input Text                   ${LoginPage.input_username}  ${GERAL.USER_INVALIDO}
      Input Text                   ${LoginPage.input_password}  ${GERAL.SENHA_INVALIDA}

a mensagem de erro de login é apresentada
      Element Should Be Visible    ${LoginPage.ERROR_MESSAGE_PROVA}
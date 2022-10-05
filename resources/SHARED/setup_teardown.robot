*** Settings ***
Resource  ../main.robot


*** Keywords ***
Acessar o site e logar
    eu abro o site da swag labs
    eu preencho usuário e senha
    aperto o botão de login

Fechar navegador
    Close Browser
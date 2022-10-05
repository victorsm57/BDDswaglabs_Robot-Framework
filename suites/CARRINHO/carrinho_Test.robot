*** Settings ***
Resource  ../../resources/main.robot
Test Setup  Acessar o site e logar
Test Teardown  Fechar navegador

*** Test Cases ***
Cenário 1: Adicionar um produto no carrinho
   [Tags]   smoke
   Given adiciono um produto no carrinho
   Then o produto é adicionado no carrinho

Cenário 2: Adicionar mais de um produto no carrinho e dar checkout
   [Tags]   smoke
   Given adiciono dois produtos no carrinho
   When clico no carrinho
   And dou checkout
   Then a página de checkout é apresentada
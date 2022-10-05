*** Settings ***
Resource  ../main.robot

*** Variables ***
&{GERAL}
...  URL=https://www.saucedemo.com
...  NAVEGADOR=chrome

#DADOS DO TESTE
#USER VÁLIDO
...  USER_VALIDO=standard_user
...  SENHA_VALIDA=secret_sauce
#USER INVALIDO
...  USER_INVALIDO=12344
...  SENHA_INVALIDA=13445

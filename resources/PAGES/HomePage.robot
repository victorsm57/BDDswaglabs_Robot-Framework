*** Settings ***
Resource  ../main.robot

*** Variables ***
&{HomePage}
...  button_addToCart=xpath://button[@id="add-to-cart-sauce-labs-backpack"]
...  button_addToCart2=xpath://button[@name="add-to-cart-sauce-labs-bike-light"]
...  a_cartLink=xpath://a[@class="shopping_cart_link"]
...  button_checkout=xpath://button[@id="checkout"]
#VERIFICAR SE O PRDOTUO FOI ADICIONADO NO CARRINHO
...  span_CartADDProduct=xpath://span[@class="shopping_cart_badge"]
#MENSAGENS DE SUCESSO DE LOGIN
...  SUCESS_MESSAGE_PROVA=xpath://span[contains(text(), "Products")]

*** Keywords ***
adiciono um produto no carrinho
     Click Element               ${HomePage.button_addToCart}

o produto é adicionado no carrinho
     Element Should Be Visible   ${HomePage.span_CartADDProduct}

adiciono dois produtos no carrinho
     Click Element               ${HomePage.button_addToCart}
     Click Element               ${HomePage.button_addToCart2} 

clico no carrinho
     Click Element               ${HomePage.a_cartLink} 

dou checkout
     Click Element               ${HomePage.button_checkout} 


a página home é apresentada
      Element Should Be Visible    ${HomePage.SUCESS_MESSAGE_PROVA}
*** Settings ***
Resource  ../main.robot

*** Variables ***
&{CheckoutPage}
...  span_checkoutPage_Message=xpath://span[contains(text(), "Checkout: Your Information")]

*** Keywords ***
a página de checkout é apresentada
     Element Should Be Visible   ${CheckoutPage.span_checkoutPage_Message}
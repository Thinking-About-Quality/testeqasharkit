*** Settings ***

Library      SeleniumLibrary
Resource     ../Helpers/kws.resource       


*** Keywords ***
Quando clicar no botao de Sign in para realizar a compra
    Click Element           ${BTN_SIGN_IN}
    Input Text              ${INPUT_EMAIL}          ${TXT_EMAIL}  
    Input Password          ${INPUT_PASS}           ${TXT_PASS}
    Click Button            ${BTN_SIGN_IN_SUBMIT}

E adicionar produto no carrinho clicando na aba Women
    Click Element                       ${LBL_WOMEN}
    Click Element                       ${BTN_CATALOGO}
    Sleep       2
    Click Element                       ${INPUT_SIZE}
    Wait Until Element Is Visible       ${ADD_TO_CART}
    Click Element                       ${ADD_TO_CART}

E realizo a compra    
    Wait Until Element Is Visible       ${BTN_PROCEED_TO_CHECKOUT}
    Click Element                       ${BTN_PROCEED_TO_CHECKOUT}
    Wait Until Element Is Visible       ${BTN_PRO_TO_CHECKOUT}
    Click Element                       ${BTN_PRO_TO_CHECKOUT}
    Wait Until Element Is Visible       ${BTN_PROCEED_TO_CHECKOUT_ADDRESS}
    Click Element                       ${BTN_PROCEED_TO_CHECKOUT_ADDRESS}
    Wait Until Element Is Visible       ${CKEC_CGV}
    Click Element                       ${CKEC_CGV} 
    Wait Until Element Is Visible       ${BTN_PROCEED_TO_CHECKOUT_CARRIER}
    Click Element                       ${BTN_PROCEED_TO_CHECKOUT_CARRIER}
    Wait Until Element Is Visible       ${PAY_BY_BANK_WIRE}
    Click Element                       ${PAY_BY_BANK_WIRE}
    Click Element                       ${BTN_CONFIRM_MY_ORDER}

Entao visualizo tela de sucesso 
    Page Should Contain            Your order on My Shop is complete.      ${LBL_MSG_SUCESSO_COMPRA} 
    Fechar o sistema     


Quando clicar no botao de Sign e adiciono produto no carrinho
    Click Element           ${BTN_SIGN_IN}
    Input Text              ${INPUT_EMAIL}          ${TXT_EMAIL}  
    Input Password          ${INPUT_PASS}           ${TXT_PASS}
    Click Button            ${BTN_SIGN_IN_SUBMIT}
    Click Element           ${LBL_WOMEN}
    Click Element           ${BTN_CATALOGO}
    Sleep       2
    Click Element                       ${INPUT_SIZE}
    Wait Until Element Is Visible       ${ADD_TO_CART}
    Click Element                       ${ADD_TO_CART}


Entao produto e adicionado ao carrinho
    Page Should Contain            Product successfully added to your shopping cart      ${LBL_MSG_SUCESSO_CARRINHO}
    Fechar o sistema    
                                

         


#Campos para se precisar cadastrar endereço no momento da compra
    #Input Text              ${INPUT_COMPANY}          ${TXT_COMPANY}   
    #Input Text              ${INPUT_ADRESS1}          ${TXT_ADRESS1}
    #Input Text              ${INPUT_ADRESS2}          ${TXT_ADRESS2}
    #Input Text              ${INPUT_CITY}             ${TXT_CITY}
    #Click Element           ${INPUT_STATE}
    #Input Text              ${INPUT_ZIP_CODE}         ${TXT_ZIP_CODE}
    #Input Text              ${INPUT_HOME_PHONE}       ${TXT_HOME_PHONE}  
    #Input Text              ${INPUT_MOBILE_PHONE}     ${TXT_MOBILE_PHONE}
    #Input Text              ${INPUT_INFORMATION}      ${TXT_INFORMATION}
    #Click Element           ${BTN_SAVE}
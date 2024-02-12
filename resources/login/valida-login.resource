*** Settings ***

Library      SeleniumLibrary
Resource     ../Helpers/kws.resource       


*** Keywords ***

Dado que esteja no site
    Open Browser            ${BASE_URL}           chrome
    Maximize Browser Window

Quando clicar no botao de Sign in
    Click Element     ${BTN_SIGN_IN}

E inserir minhas credenciais com sucesso e clicar no Sign in
    Input Text             ${INPUT_EMAIL}          ${TXT_EMAIL}  
    Input Password         ${INPUT_PASS}          ${TXT_PASS}
    Click Button           ${BTN_SIGN_IN_SUBMIT}

Entao visualizo meu usuario logado
    Page Should Contain            Cicero Marcelo da Silva      ${TXT_NOME_LOGADO}
    Fechar o sistema

E Inserir credencial de email nao existente
    Input Text             ${INPUT_EMAIL}          ${TXT_EMAIL_INCORRECT}
    Input Password         ${INPUT_PASS}          ${TXT_PASS}

    Click Button            ${BTN_SIGN_IN_SUBMIT}
    

Entao visualizo mensagem de falha
    Page Should Contain            Authentication failed.       ${TXT_MSG_FALHA}
    Fechar o sistema

Fechar o sistema
    Sleep    5
    Close Browser
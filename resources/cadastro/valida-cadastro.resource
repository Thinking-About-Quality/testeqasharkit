*** Settings ***
Library      SeleniumLibrary
#Library      FakerLibrary    locale=pt_BR
Resource     ../Helpers/kws.resource
Resource     ../Helpers/util.py       
Library    FakerLibrary    locale=de_DE    seed=124

*** Keywords ***
Dado que esteja no site para realizar o cadastro
    Open Browser            ${BASE_URL}           chrome
    Maximize Browser Window

Quando clicar no botao de Sign in para realizar o cadastro
    Click Element     ${BTN_SIGN_IN}

E inserir um email para cadastro
    Input Text             ${INPUT_EMAIL_CREATE}        FakerLibrary.Email 
    Click Button           ${BTN_CREATE_ON_ACCOUNT}

E inserir um email para cadastro ja existente
    Input Text             ${INPUT_EMAIL_CREATE}        ${TXT_EMAIL_EXISTE} 
    Click Button           ${BTN_CREATE_ON_ACCOUNT}

Entao sistema exibe mensagem de erro
    Sleep   2
    Page Should Contain     An account using this email address has already be      ${LBL_MSG_INSUCESSO}
    Fechar o sistema


E preencho o formulario para cadastro
    Sleep    1
    Wait Until Element Is Visible       ${TITLE_ESCOLHA}
    Click Element          ${TITLE_ESCOLHA}
    Input Text             ${INPUT_FIST_NAME}        ${TXT_FIST_NAME} 
    Input Text             ${INPUT_LAST_NAME}        ${TXT_LAST_NAME} 
    Input Text             ${INPUT_PASSWORD_NAME}    ${TXT_PASSWORD_NAME} 
    Click Element          ${INPUT_DAY_BIRTH}
    Click Element          ${INPUT_MONTHS_BIRTH}     
    Click Element          ${INPUT_YEARS_BIRTH}      
    Click Element          ${RADIO_BUTTON}
    Click Element          ${BTN_REGISTER}


Entao o sistema exibe mensagem que usuario foi cadastrado com sucesso
    Page Should Contain            Your account has been created.      ${LBL_MSG_SUCESSO}
    Fechar o sistema

Fechar o sistema para cadastro
    Sleep    5
    Close Browser



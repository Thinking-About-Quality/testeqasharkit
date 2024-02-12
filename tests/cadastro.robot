*** Settings ***
Documentation           Suíte de testes da área de cadastro
Library    SeleniumLibrary

Resource        ../resources/base.resource
Test Setup       Dado que esteja no site para realizar o cadastro
Suite Teardown   Fechar o sistema para cadastro

*** Test Cases ***
CT003 - Teste de Criar usuario com sucesso
    [Tags]    cadastroUsuarioSucesso
    Quando clicar no botao de Sign in para realizar o cadastro
    E inserir um email para cadastro
    E preencho o formulario para cadastro
    Entao o sistema exibe mensagem que usuario foi cadastrado com sucesso

CT003 - Teste de Criar usuario com insucesso
    [Tags]    cadastroUsuarioInSucesso
    Quando clicar no botao de Sign in para realizar o cadastro
    E inserir um email para cadastro ja existente
    Entao sistema exibe mensagem de erro   
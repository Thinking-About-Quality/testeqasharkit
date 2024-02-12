*** Settings ***
Documentation           Suíte de testes da área de login
Library    SeleniumLibrary

Resource        ../resources/base.resource
Test Setup       Dado que esteja no site
Suite Teardown   Fechar o sistema

*** Test Cases ***
CT001 - Teste de Sign sucesso
    [Tags]    loginSucesso
    Quando clicar no botao de Sign in
    E inserir minhas credenciais com sucesso e clicar no Sign in
    Entao visualizo meu usuario logado
    Fechar o sistema

CT002 - Teste de Sign insucesso
    [Tags]    loginINsucesso
    Quando clicar no botao de Sign in
    E Inserir credencial de email nao existente
    Entao visualizo mensagem de falha
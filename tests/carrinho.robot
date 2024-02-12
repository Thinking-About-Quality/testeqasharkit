*** Settings ***
Documentation           Suíte de testes da área de carrinho e compra
Library    SeleniumLibrary

Resource        ../resources/base.resource
Test Setup       Dado que esteja no site
Suite Teardown   Fechar o sistema

*** Test Cases ***
CT005 - Teste de adicionar produto no carrinho
    [Tags]    carrinho
    Quando clicar no botao de Sign e adiciono produto no carrinho
    Entao produto e adicionado ao carrinho

CT006 - Teste Adicionar produto ao carrinho e finalizar a compra
    [Tags]    realizar_compra
    Quando clicar no botao de Sign in para realizar a compra
    E adicionar produto no carrinho clicando na aba Women
    E realizo a compra
    Entao visualizo tela de sucesso
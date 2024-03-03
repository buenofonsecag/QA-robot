*** Settings ***
Resource    SetupTeardown.robot
Resource    Locators.robot
Resource    Keywords.robot
Resource    TesteOutlook.robot

Test Setup           Dado que eu acesse o site da outlook
Test Teardown        Fechar Navegador

*** Keywords ***
Login
    Quando eu clico no botão iniciar sessão
    E mudar para nova aba
    E preencher email
    E clico no botão avançar
    E preencher senha
    Sleep    1s    #para garantir que vai carregar a página
    E clico no botão avançar
    E clico no botão avançar
    Sleep    2s
    Então deve aparecer o botão "novo email" como evidencia de que o login foi feito
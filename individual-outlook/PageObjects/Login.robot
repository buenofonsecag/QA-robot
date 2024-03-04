*** Settings ***
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../Resources/Locators.robot
Resource    ../PageObjects/Keywords.robot
Resource    ../TestesCase/TesteOutlook.robot

Test Teardown        Fechar Navegador

*** Keywords ***
Login
    Dado que eu acesse o site da outlook
    Quando eu clico no botão iniciar sessão
    E mudar para nova aba
    E preencher email
    E clico no botão avançar
    E preencher senha
    Sleep    1s    #para garantir que vai carregar a página
    E clico no botão avançar
    E clico no botão avançar
    Então deve aparecer o botão "novo email" como evidencia de que o login foi feito
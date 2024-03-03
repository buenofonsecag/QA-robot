*** Settings ***
Resource    SetupTeardown.robot
Resource    Locators.robot
Resource    Keywords.robot
Resource    Login.robot

Test Setup           Dado que eu acesse o site da outlook
Test Teardown        Fechar Navegador

*** Test Cases ***
Realizar Login
    Login    

Mandar novo email
    Dado que eu realize o login
    Quando eu clico em novo email
    E preencho para quem
    E preencher o corpo
    E enviar o email
    # E confirmar o envio #na primeira vez se fez necessario
    Então deve aparecer uma imagem como evidência que o email foi enviado
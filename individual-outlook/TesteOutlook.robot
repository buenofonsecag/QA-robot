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
    Sleep    2s
    # E confirmar o envio #na primeira vez se fez necessario
    Então deve aparecer uma imagem como evidência que o email foi enviado

Pesquisar emails
    Dado que eu realize o login
    Quando eu clicar na barra de pesquisa
    E preencho com o que quero pesquisar
    E pressionar "Enter" ou clicar no botão de pesquisa
    Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave

Responder email
    Dado que eu realize o login
    Quando abrir um e-mail na caixa de entrada
    E clicar no botão "Responder"
    E redigir a resposta no campo de texto
    E clicar no botão "Enviar"
    Sleep    1000s
    # Então a resposta deverá ser enviada com sucesso ao remetente do e-mail original
    # E o usuário deverá receber uma confirmação de envio da resposta


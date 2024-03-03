*** Settings ***
Resource    Locators.robot
Resource    TesteOutlook.robot

*** Keywords ***    #REALIZAR LOGIN
Quando eu clico no botão iniciar sessão
     Click Element    ${BOTAO INICIAR SESSAO}

E mudar para nova aba
    Switch Window    NEW

E preencher email
    Wait Until Page Contains Element    ${INPUT_LOGIN}
    Input Text    ${INPUT_LOGIN}    gustavo.fonseca@sptech.school

E clico no botão avançar
    Wait Until Page Contains Element    ${BOTAO AVANCAR}
    Click Element    ${BOTAO AVANCAR}

E preencher senha
    Wait Until Page Contains Element    ${INPUT_SENHA}
    Input Password    ${INPUT_SENHA}    \#Gf54926406829

Então deve aparecer o botão "novo email" como evidencia de que o login foi feito    Wait Until Page Contains Element    ${BOTAO_NOVO_EMAIL}
    Element Should Be Visible    ${BOTAO_NOVO_EMAIL}

Dado que eu realize o login
    Login

*** Keywords ***    #ENVIAR NOVO EMAIL
Quando eu clico em novo email
     Wait Until Page Contains Element    ${BOTAO_NOVO_EMAIL}
     Click Button    ${BOTAO_NOVO_EMAIL}

E preencho para quem
     Wait Until Page Contains Element    ${INPUT PARA}
    Click Element    ${INPUT PARA}
    Input Text    ${INPUT PARA}    gustavo.fonseca@sptech.school
    Sleep    2s
    Press Keys    none    ENTER

# E preencho CC
#     Input Text    ${INPUT CC}    text


E preencho o asssunto
    Click Element    ${INPUT ASSUNTO}
    # Input Text    ${INPUT ASSUNTO}    Teste A2A

E preencher o corpo
    Click Element    ${INPUT CORPO}
    Sleep    2s

E enviar o email
    Click Element    ${BOTAO ENVIAR EMAIL}
    Input Text    ${PREENCHER CORPO}    Olá, isso é um teste

E confirmar o envio
    Wait Until Page Contains Element    ${CONFIRMAR ENVIO}
    Click Element    ${CONFIRMAR ENVIO}

Então deve aparecer uma imagem como evidência que o email foi enviado
    Element Should Be Visible    ${IMAGEM EMAIL ENVIADO}









*** Settings ***
Resource    Locators.robot
Resource    TesteOutlook.robot
Library    Process

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
    Scroll Element Into View    ${CONFIRMAR ENVIO}
    Click Element    ${CONFIRMAR ENVIO}

Então deve aparecer uma imagem como evidência que o email foi enviado
    Wait Until Page Contains Element    ${IMAGEM EMAIL ENVIADO}
    Element Should Be Visible    ${IMAGEM EMAIL ENVIADO}



*** Keywords ***
Quando eu clicar na barra de pesquisa
    Click Element    ${PESQUISA}

E preencho com o que quero pesquisar
    Input Text    ${PESQUISA}    Gustavo Pardinho

E pressionar "Enter" ou clicar no botão de pesquisa
    Press Keys    none    ENTER

Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave
    Wait Until Element Is Visible    ${PRINCIPAIS RESULTADOS}
    Element Should Be Visible    ${PRINCIPAIS RESULTADOS}


***Keywords***
 Quando abrir um email na caixa de entrada
     Scroll Element Into View    ${DIV EMAIL}
     Click Element    ${DIV EMAIL}

E clicar no botão "Responder"
    Press Keys       none       R
    # Click Element    ${BOTAO RESPONDER EMAIL}

E redigir a resposta no campo de texto
    Wait Until Element Is Visible    ${INPUT CORPO}
    Click Element    ${INPUT CORPO}
    Input Text    ${CORPO RESPOSTA}    Resposta teste

E clicar no botão "Enviar"
    Wait Until Element Is Visible    ${BOTAO ENVIAR EMAIL RESPOSTA}
    Click Button    ${BOTAO ENVIAR EMAIL RESPOSTA}

Então deve sumir o botão de enviar resposta como evidencia que a resposta foi enviada
    Element Should Not Be Visible   ${CORPO RESPOSTA}

*** Keywords ***
Quando clicar em "criar nova pasta"
    Scroll Element Into View    ${CRIAR PASTA}
    Click Element    ${CRIAR PASTA}
E preencher com o nome da nova pasta
    # Execute Javascript    return    CalendarioAtual()
    # Wait Until Element Is Visible    ${INPUT PASTA}    
    Input Text     ${INPUT PASTA}    OLA

E pressionar a tecla "Enter"
    Press Keys    none    ENTER








Quando clicar em "outros"
    # Wait Until Element Is Visible    ${BOTAO OUTROS}
    Click Element    ${BOTAO OUTROS}

E selecionar um email
    Sleep    1s    #é necessário para o processamento
    Press Keys    none       DOWN
   
E pressionar a tecla "Delete"
    Press Keys    none    Delete

Entao deve aparecer uma notificação que o email foi apagado
    Wait Until Element Is Visible    ${NOTIFICACAO}
    Element Should Be Visible    ${NOTIFICACAO}

E desfazer apagado
    Click Element    ${DESFAZER APAGADO}






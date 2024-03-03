*** Settings ***
Library    SeleniumLibrary
Resource    SetupTeardown.robot
Resource    Keywords.robot

*** Variables ***
${URL}    https://outlook.com

${BOTAO INICIAR SESSAO}       //*[@id="feature-oc387eee"]/div/div/div[1]/div/div[3]/div[1]/a
${INPUT_LOGIN}    id=i0116
${INPUT_SENHA}   id=i0118
${BOTAO AVANCAR}    id=idSIButton9
${BOTAO_NOVO_EMAIL}    //*[@id="innerRibbonContainer"]/div[1]/div/div/div/div[1]/div/div/span/button[1]


${INPUT PARA}    //*[@id="docking_InitVisiblePart_0"]/div/div[3]/div[1]/div/div[4]/div/div/div[1]
${INPUT CC}    //*[@id="docking_InitVisiblePart_0"]/div/div[3]/div[1]/div/div[6]/div/div/div[1]
${INPUT ASSUNTO}    //*[@id="docking_InitVisiblePart_1"]/div/div[3]/div[2]/div[2]
${INPUT CORPO}    id=editorParent_1
${PREENCHER CORPO}    //*[@id="contentDiv_0"]
${BOTAO ENVIAR EMAIL}    //*[@id="docking_InitVisiblePart_0"]/div/div[2]/div[1]/div/span/button[1] 
${CONFIRMAR ENVIO}    id=ok-1
${IMAGEM EMAIL ENVIADO}    //*[@id="ReadingPaneContainerId"]/div/div/div/img
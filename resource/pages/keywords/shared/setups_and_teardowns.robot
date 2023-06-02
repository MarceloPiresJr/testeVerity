*** Settings ***
Documentation       Keywords compartilhadas entre os testes

Resource            ${ROOT}/resource/main.robot

*** Variables ***

${BROWSER}  headlesschrome
${URL_BASE}  https://www.verity.com.br/

*** Keywords ***

Open Session Web
    [Documentation]   Arbir o Chrome, definindo o tamanho da janela e o tempo de espera implícito do Selenium para interações com elementos na página.
    Open Chrome
    Set Window Size    1920    1080
    Set Selenium Implicit Wait    10

Open Chrome
    [Documentation]  Abrir o navegador acessando a url passada.
    Open Browser    ${URL_BASE}    ${BROWSER}    options=add_experimental_option('excludeSwitches', ['enable-logging'])

Close Session
    [Documentation]  Fechar o Navegador após o fim do teste.
    Close Browser

After Test
    [Documentation]  Tirar um print da pagina após o teste terminar de ser executado.
    Capture Page Screenshot


*** Settings ***
Documentation       Keywords compartilhadas entre os testes

Resource            ${ROOT}/resource/main.robot

*** Variables ***

${BROWSER}  Chrome
${URL_BASE}  https://www.verity.com.br/

*** Keywords ***

Open Session Web
    Open Chrome
    Set Selenium Implicit Wait    10
    Maximize Browser Window

Open Chrome
    Open Browser    ${URL_BASE}    ${BROWSER}    options=add_experimental_option('excludeSwitches', ['enable-logging'])

Close Session
    Close Browser

After Test
    Capture Page Screenshot


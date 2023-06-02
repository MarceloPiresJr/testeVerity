*** Settings ***
Documentation       Keywords compartilhadas entre os testes

Resource            ${ROOT}/resource/main.robot

*** Variables ***

${BROWSER}  headlesschrome
${URL_BASE}  https://www.verity.com.br/

*** Keywords ***

Open Session Web
    Open Chrome
    Set Window Size    1920    1080
    Set Selenium Implicit Wait    10

Open Chrome
    Open Browser    ${URL_BASE}    ${BROWSER}    options=add_experimental_option('excludeSwitches', ['enable-logging'])

Close Session
    Close Browser

After Test
    Capture Page Screenshot


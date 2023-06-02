*** Settings ***
Documentation       Keywords compartilhadas entre os testes

Resource            ${ROOT}/resource/main.robot


*** Keywords ***

Wait and Click Element
    [Documentation]    Aguardar o elemento estar visível e clica.
    [Arguments]    ${ELEMENT}    ${TIMEOUT}=20
    Wait until element is visible    ${ELEMENT}    timeout=${TIMEOUT}
    Capture Page Screenshot
    Click element    ${ELEMENT}

Wait and Input Text
    [Documentation]    Aguardar o elemento estar visível e digitar o texto.
    [Arguments]    ${ELEMENT}    ${TEXT}
    Wait until element is visible    ${ELEMENT}
    Capture Page Screenshot
    Input text    ${ELEMENT}    ${TEXT}

Verifica o idioma do site
    [Documentation]  Verificar em qual idioma está o site, dependendo do argumento que passar.
    [Arguments]  ${language_visible}

    ${dropdown_bool}  Run Keyword And Return Status    Element Should Be Visible    ${language_visible}
    IF   ${dropdown_bool} == ${False}
        Wait and Click Element   ${home.dropdown_languages}
        Wait Until Element Is Visible    ${home.dropdown_validate}
        Wait and Click Element    ${home.dropdown_text_en}
        Capture Page Screenshot
    END
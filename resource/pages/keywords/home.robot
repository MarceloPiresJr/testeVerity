Language: pt-br

*** Settings ***
Documentation  

Resource            ${ROOT}/resource/main.robot

*** Keywords ***
que verifico a se o site está em inglês
    [Documentação]  verificar se um site está em inglês
    Wait Until Element Is Visible  ${home.verity_logo}
    Verifica o idioma do site   ${home.dropdown_EN}

verifico se o texto "${expected_text}" está visível
    [Documentação]  verificar se o texto está visível em diferentes elementos da página, dependendo do valor de ${expected_text}.
    IF  "${expected_text}" == "Culture and Tech"
        Scroll Element Into View    ${home.txt_Culture_and_Tech}
        Element Should Contain    ${home.txt_Culture_and_Tech}    ${expected_text}
        Capture Page Screenshot
    ELSE IF   "${expected_text}" == "Nossas soluções_"
        Scroll Element Into View    ${home.txt_Nossas_soluções}
        Element Should Contain    ${home.txt_Nossas_soluções}    ${expected_text}
        Capture Page Screenshot
    END
que verifico a se o site está em português
    [Documentação]  verifica se o idioma do site está em português.
    Verifica o idioma do site    ${home.dropdown_PT}
retorno o site para o português
    [Documentação]  troca o idioma do site para português.
    Wait and Click Element   ${home.dropdown_languages}
    Wait Until Element Is Visible    ${home.dropdown_validate}
    Wait and Click Element    ${home.dropdown_text_pt}
    Capture Page Screenshot
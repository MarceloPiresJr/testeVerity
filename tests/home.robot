Language: pt-br
*** Settings ***
Resource            ${ROOT}/resource/main.robot

Test Setup          Open Session Web
Test Teardown       Run Keywords    Close Session    After Test


*** Test Cases ***
Validar texto "Culture and Tech"
    [Documentation]    Verifica se o texto "Culture and Tech" está visível na página inicial
    [Tags]    tc001
    Dado que verifico a se o site está em inglês
    Então verifico se o texto "Culture and Tech" está visível

Validar texto "Nossas soluções_"
    [Documentation]    Verifica se o texto "Nossas soluções_" está visível na página inicial
    [Tags]    tc002
    Dado que verifico a se o site está em português
    Então verifico se o texto "Nossas soluções_" está visível

Validar os textos "Nossas soluções_" e "Culture and Tech"
    [Documentation]    Verifica se os textos "Nossas soluções_" e "Culture and Tech" estão visíveis na página inicial
    [Tags]    tc003
    Dado que verifico a se o site está em inglês
    Então verifico se o texto "Culture and Tech" está visível
    E retorno o site para o português
    Então verifico se o texto "Nossas soluções_" está visível

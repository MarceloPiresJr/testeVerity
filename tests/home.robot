Language: pt-br

*** Settings ***

Documentation  

Resource            ${ROOT}/resource/main.robot
Test Setup         Open Session Web
Test Teardown       Run Keywords  Close Session  After Test


*** Test Cases ***

Validar texto "Culture and Tech"
    [tags]  TC001
    [Documentation]    Verifica se o texto "Culture and Tech" está visível na página inicial
    Dado que verifico a se o site está em inglês
    Então verifico se o texto "Culture and Tech" está visível

Validar texto "Nossas soluções_"
    [tags]  TC002
    [Documentation]    Verifica se o texto "Nossas soluções_" está visível na página inicial
    Dado que verifico a se o site está em português
    Então verifico se o texto "Nossas soluções_" está visível

Validar os textos "Nossas soluções_" e "Culture and Tech"
    [tags]  TC003
    [Documentation]    Verifica se os textos "Nossas soluções_" e "Culture and Tech" estão visíveis na página inicial
    Dado que verifico a se o site está em inglês
    Então verifico se o texto "Culture and Tech" está visível
    E retorno o site para o português
    Então verifico se o texto "Nossas soluções_" está visível
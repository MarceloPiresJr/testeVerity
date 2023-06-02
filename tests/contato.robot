Language: pt-br
*** Settings ***
Resource            ${ROOT}/resource/main.robot
Test Setup          Open Session Web
Test Teardown       Run Keywords    Close Session    After Test

*** Test Cases ***
Preencher formulário de contato
    [Documentation]    Preencher formulário de contato no site da Verity
    [Tags]    tc004
    Dado que eu clico no menu "Contato" na sessão "Vamos Conversar"
    Quando preencho os campos do formulario
    E envio o formulario aceitando os termos
    Então o formulario é enviado com sucesso

Language: pt-br
*** Settings ***
Resource            ${ROOT}/resource/main.robot

Test Setup         Open Session Web
Test Teardown       Run Keywords  Close Session  After Test


*** Test Cases ***
Preencher formulário de contato
    [Documentation]    Preencher formulário de contato no site da Verity
    [Tags]    tc004
    Dado que eu clico no menu "Contato" na sessão "Vamos Conversar"
    Quando preencho os campos do formulario
    E envio o formulario aceitando os termos
    Então o formulario é enviado com sucesso
    # [Template]    Preencho o formulário de contato
    # #CAMPO                          #VALOR
    # name_field                 "Marcelo Pires da Rocha Junior"
    # email_field                "marcelo.pires.jr@gmail.com"
    # tel_cel_field              "(11)98335-2429"
    # challenge_field            "Terminar de ler os livros da minha estante."

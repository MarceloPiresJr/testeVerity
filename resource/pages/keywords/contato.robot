Language: pt-br

*** Settings ***
Documentation  
Resource            ${ROOT}/resource/main.robot

*** Keywords ***
que eu clico no menu "Contato" na sessão "Vamos Conversar"
    [Documentação]
    Wait and Click Element    ${home.contact}
    Scroll Element Into View    ${contato.btn_send}
    Capture Page Screenshot

preencho os campos do formulario
    [Documentação]
    Set Selenium Speed    0.5
    Wait and Input Text    ${contato.name_field}    Marcelo Pires da Rocha Junior
    Wait and Input Text    ${contato.email_field}    marcelo.pires.jr@gmail.com
    Wait and Input Text    ${contato.tel_cel_field}    (11)98335-2429
    Wait and Input Text    ${contato.challenge_field}    Terminar de ler os livros da minha estante.
    Capture Page Screenshot
envio o formulario aceitando os termos
    [Documentação]
    Wait and Click Element    ${contato.checkbox_acept}
o formulario é enviado com sucesso
    [Documentação]
    Wait and Click Element    ${contato.btn_send}
    Wait Until Element Is Visible    ${home.thanks_alert}
    Element Should Contain    ${home.thanks_alert}    Obrigado!
    Capture Page Screenshot
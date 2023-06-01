*** Settings ***
Resource    ${ROOT}/resource/main.robot

*** Variables ***

&{contato}
...            lets_talk_=//div[@id="comp-kwz6tqa9" and contains(h2/span/span/text(), "Vamos conversar") and h2/span/span/span[text()="_"]]
...            lets_talk=//*[text()="Vamos conversar"]
## FORMULARIO DE CONTATO
...            name_field=//input[@name='nome']
...            email_field=//input[@name='email']
...            tel_cel_field=//input[@name='phone']
...            challenge_field=//textarea[@placeholder='Nos conte o seu desafio']
## CHECKBOX
...            checkbox_acept=//*[text()=" Aceito receber mensagens da Verity"]
## BUTTONS
...            btn_send=//*[text()="Enviar"]
## ALERTS
...            thanks_alert=//*[text()="Obrigado!"]

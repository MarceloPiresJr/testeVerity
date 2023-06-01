*** Settings ***
Resource    ${ROOT}/resource/main.robot

*** Variables ***

&{home}
...            txt_Culture_and_Tech=//*[contains(text(), "Culture and Tech")]
...            dropdown_languages=(//div[@class="SLABZ6 wixui-language-menu"])[1]
...            dropdown_EN=(//div[@class='SLABZ6 wixui-language-menu']//*[text()="EN"])[1]
...            dropdown_PT=(//div[@class='SLABZ6 wixui-language-menu']//*[text()="PT"])[1]
...            verity_logo=//*[@id="img_comp-kevyodng"]
...            dropdown_validate=(//*[@aria-expanded="true"])[1]
...            dropdown_text_en=(//*[text()="EN"])[1]
...            dropdown_text_pt=(//*[text()="PT"])[1]
...            txt_Nossas_soluções=//h1[@class="font_0 wixui-rich-text__text" and contains(text(), "Nossas soluções") and span[text()="_"]]
...            contact=//*[text()="CONTATO"]

*** Settings ***
Library          SeleniumLibrary
Library          DateTime
Library          OperatingSystem
Library         ${ROOT}/resource/python/root.py
# PAGE OBJECT
Resource        ${ROOT}/resource/pages/elements/home.robot
Resource        ${ROOT}/resource/pages/elements/contato.robot
# PAGE OBJECT - KEYWORDS
Resource        ${ROOT}/resource/pages/keywords/home.robot
Resource        ${ROOT}/resource/pages/keywords/contato.robot
# KEYWORDS COMPARTILHADAS
Resource        ${ROOT}/resource/pages/keywords/shared/kws_shared.robot
Resource        ${ROOT}/resource/pages/keywords/shared/setups_and_teardowns.robot
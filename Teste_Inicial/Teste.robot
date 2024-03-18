*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Abrir Site
    Open Browser    https://www.linkedin.com/in/bruno-pequeno-tec/  chrome

*** Test Cases ***
Caso 01 - Acessando meu perfil no Linkedin
    Abrir Site

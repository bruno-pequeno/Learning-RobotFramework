*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${input_firstName}                  id:firstName
${input_lastName}              id:lastName
${input_userEmail}             id:userEmail
${input_userNumber}            id:userNumber
${input_dateOfBirthInput}      id:dateOfBirthInput
${textarea_currentAddress}     id:currentAddress
${button_submit}               id:submit

*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://demoqa.com/automation-practice-form     chrome

preencher campos
    Input Text      ${input_firstName}          Bruno
    Input Text      ${input_lastName}           Pequeno
    Input Text      ${input_userEmail}          bruno.tec@gmail.com
    Input Text      ${input_userNumber}         1140028922
    Input Text      ${input_dateOfBirthInput}   
    Input Text      ${input_dateOfBirthInput}   01 Jan 2020
    Input Text      ${textarea_currentAddress}     xxxxxxxxxxxx

clicar no submit
    # Click Button   ${button_submit}  

fechar navegador
    Close Browser

*** Test Cases ***
Caso 1: Preencher formulário
    abrir navegador e acessar o site
    preencher campos
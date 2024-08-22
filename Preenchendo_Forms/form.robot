*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${input_firstName}              id:firstName
${input_lastName}               id:lastName
${input_userEmail}              id:userEmail
${input_userNumber}             id:userNumber
${input_dateOfBirthInput}       id:dateOfBirthInput
${input_gender_male}            xpath://label[text()='Male']
${checkbox_hobby_sports}        xpath://label[text()='Sports']
${input_subjects}               xpath://input[@id='subjectsInput']
${autocomplete_subject}         xpath://div[contains(@class, 'subjects-auto-complete__option') and text()='Maths']
${textarea_currentAddress}      id:currentAddress        
${button_submit}                id:submit

*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://demoqa.com/automation-practice-form    edge
    Maximize Browser Window
    Wait Until Page Contains Element   ${input_firstName}

preencher campos
    Input Text      ${input_firstName}          Bruno
    Input Text      ${input_lastName}           Pequeno
    Input Text      ${input_userEmail}          bruno.tec@gmail.com
    Input Text      ${input_userNumber}         1140028922
    
    # Preencher o campo Subjects com parte do texto
    Input Text      ${input_subjects}           Ma
    
    # Esperar até que a sugestão apareça e selecionar a sugestão
    Wait Until Page Contains Element   ${autocomplete_subject}
    Click Element   ${autocomplete_subject}

    # Selecionar gênero
    Click Element   ${input_gender_male}

    # Selecionar hobbies
    Click Element   ${checkbox_hobby_sports}

    # Preencher o endereço
    Input Text      ${textarea_currentAddress}  Rua Chafariz, 123, Bairro Limeira, Cidade SP
    
clicar no submit
    Click Button    ${button_submit}
    Sleep           10 seconds  # Esperar 10 segundos para ver o resultado antes de fechar o navegador

fechar navegador
    Close Browser

*** Test Cases ***
Caso 1: Preencher formulário
    abrir navegador e acessar o site
    preencher campos
    #clicar no submit
    #fechar navegador

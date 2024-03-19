*** Settings ***
## Sessão de configuração do projeto, bibliotecas a serem usadas, setUp e outros arquivos Robot
Library     SeleniumLibrary

*** Variables ***
${var1}     teste
${var2}     12345

*** Keywords ***
## Sessão onde serão declaradas as palavras-chaves dos nossos cenários de teste
abrir site do google
    Open Browser    https://www.google.com.br/  chrome

fechar navegador
    Close Browser

abrir site da DIO
    Open browser    https://web.dio.me/home  chrome

*** Test Cases ***
## Sessão de testes a serem realizados, onde os testes sereão escritos
Cenário 1: Abrir o navegador
    abrir site do google
    fechar navegador

Cenário 2: Abrir o site da DIO
    abrir site da DIO
    fechar navegador
*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary    locale=pt_BR  
Resource    ../PageObjects/Page_SignIn.robot

*** Variables ***
${URL}             http://www.automationpractice.pl/index.php
${BROWSER}         chrome

*** Keywords ***
Abrir navegador
    Open Browser        ${URL}      ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

Login
    Clicar Botao SignIn
    Preencher Campo Email Create An Account Sign In
    Preencher Campo Password Create An Account Sign In
    Clicar Botao Login Sign In
*** Settings ***
Resource            ../PageObjects/Page_CreateAnAccount.robot
Resource            ../PageObjects/Page_Main.robot
Resource            ../PageObjects/Page_Home.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Variables ***
${DIA}    17
${MES}    5
${ANO}    2003

*** Test Cases ***
Criar Conta com sucesso
    Clicar Botao SignIn
    Preencher Campo Email Create An Account
    Clicar Botao Create an account
    Clicar Botao Title Mr
    Preencher Formulario Personal Information
    Selecionar Data de Nascimento
    Clicar Checkbox Newsletter
    Clicar Register
    Validar Criacao da Conta

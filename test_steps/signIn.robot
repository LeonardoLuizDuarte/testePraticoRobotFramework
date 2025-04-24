*** Settings ***
Resource            ../PageObjects/Page_SignIn.robot
Resource            ../PageObjects/Page_Main.robot
Resource            ../PageObjects/Page_Home.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Realizar Login com sucesso
    Clicar Botao SignIn
    Preencher Campo Email Create An Account Sign In
    Preencher Campo Password Create An Account Sign In
    Clicar Botao Login Sign In
    Validar Login com sucesso

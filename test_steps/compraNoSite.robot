*** Settings ***
Resource            ../PageObjects/Page_CompraNoSite.robot
Resource            ../PageObjects/Page_Main.robot
Resource            ../PageObjects/Page_Home.robot
Test Setup          Abrir navegador    

Test Teardown       Fechar navegador

*** Test Cases ***
Realizar uma Compra com Sucesso
    Login
    Clicar Botao Dresses
    Clicar na Opcao de compra Printed Summer Dress
    Selecionar Tamanho do Vestido
    Clicar em Adicionar no Carrinho
    Clicar em Prosseguir Para o Checkout
    Clicar em Prosseguir Para o Checkout na Tela de Summary
    Preencher Comentario na Tela de Address
    Clicar em Prosseguir Para o Checkout na Tela de Address
    Clicar na Checkbox de termos de servicos na Tela de Shipping
    Clicar em Prosseguir Para o Checkout na Tela de Shipping
    Clicar em Pay by check na tela de Payment
    Clicar em Confirm Order na tela de Payment
    Validar Compra com sucesso
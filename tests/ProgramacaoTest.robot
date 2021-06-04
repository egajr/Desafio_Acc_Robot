*** Settings ***
Resource    ${EXECDIR}/resources/base.robot

*** Test Cases ***
Validar programção do momento
    Abrir Site Sky
    Fecha Modal Home Page
    Acessa Menu de Programação
    Acesso a grade programação
    Verifico detalhes do programa

*** Settings ***
Library         Browser
Library         String
Library         DateTime
Library         OperatingSystem
Library         lib/ValidateSchedule.py

Resource        ../page/modal_home_page.robot
Resource        ../page/home_page.robot
Resource        ../page/programacao_page.robot
Resource        ../page/detalhe_programacao_page.robot

* Variables *
${DEFAULT_TIMEOUT}      10
${BROWSER}              firefox
${HEADLESS}             false

* Keywords *
Abrir Site Sky
    New Browser             ${BROWSER}    ${HEADLESS}
    New Page                about:blank
    Set Viewport Size       1920    1080
    Go To                   http://www.sky.com.br
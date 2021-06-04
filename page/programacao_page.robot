***Keywords***
Acesso a grade programação
    Execute JavaScript      window.scrollTo(1800,980); 
    Click       xpath=//div[@class='epg-schedule']//span[text()='Passando Agora']
    Sleep  3
    Wait For Elements State         css=.virtual-list .time-marker     visible     ${DEFAULT_TIMEOUT}    
    Encontro qual o programa do momento
    Take Screenshot

Encontro qual o programa do momento
    ${date}     Get Current Date
    ${date}     Convert Date  ${date}  result_format=%H:%M 
    ${int}      Set Variable    1

    FOR  ${INDEX}   IN RANGE  10
        
        ${schedule}  Get Text        css=.virtual-list .channel-schedule-container:nth-child(1) .program-schedule-item:nth-child(${int}) .program-schedule-content .program-duration p
        Set Test Variable  ${schedule}
        ${schedule_alt}  Split String    ${schedule}  ${SPACE}-${SPACE}
        ${program_now}  valida horario  ${date}     ${schedule_alt}[0]   ${schedule_alt}[1]

        IF  ${program_now}==True
            ${programing}  Get Text  css=.virtual-list .channel-schedule-container:nth-child(1) .program-schedule-item:nth-child(${int}) .program-schedule-content h2
            Set Test Variable  ${programing}
            Click  css=.virtual-list .channel-schedule-container:nth-child(1) .program-schedule-item:nth-child(${int}) .program-schedule-content h2
            Exit For Loop
        ELSE
            ${int}    Evaluate    ${int} + 1
        END
    END
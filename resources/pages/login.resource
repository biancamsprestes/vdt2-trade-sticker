*** Settings ***
Documentation            Login tests

Library                  Browser

*** Keywords ***
Go to login page
    New Page                https://trade-sticker-dev.vercel.app

Submit Credentials
    [Arguments]            ${email}        ${password}
    Fill Text               css=input[name=email]        ${email}
    Fill Text               css=input[name=password]     ${password}
    Click                   css=button >> text=Entrar

Submit Credentials whidhout password
    [Arguments]            ${email}        
    Fill Text               css=input[name=email]        ${email}
    Click                   css=button >> text=Entrar   
    
Submit Credentials whidhout email
    [Arguments]            ${password}      
    Fill Text               css=input[name=password]     ${password}
    Click                 css=button >> text=Entrar

Submit Credentials whidhout email and password
    [Arguments]                 
    Click                 css=button >> text=Entrar

Toast Message Shoud Be 
    [Arguments]               ${expected_message}

    ${locator}                
    ...                       Set Variable        
    ...                       css=.Toastify__toast-body div >> text=${expected_message} 

    Wait For Elements State    ${locator}        visible    3

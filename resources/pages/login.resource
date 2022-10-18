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

Toast Message Shoud Be 
    [Arguments]               ${expected_message}

    ${locator}                
    ...                       Set Variable        
    ...                       css=.Toastify__toast-body div >> text=${expected_message} 

    Wait For Elements State    ${locator}        visible    3

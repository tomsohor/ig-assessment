*** Settings ***
Documentation    This file contains useful keywords and required Library to for this assesment

Library           SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.saucedemo.com
${HOMEPAGEURL}    ${URL}/inventory1.html
# ${isLogin}

*** Keywords ***
Open Browser With URL
    Open Browser    ${URL}    ${BROWSER}

Enter Username
    [Arguments]    ${username}
    Input Text    id=user-name    ${username}

Enter Password
    [Arguments]    ${password}
    Input Password    id=password    ${password}

Click Login 
    Click Button    login-button
    

Verify Valid Login
    [Arguments]    ${current_url}
    ${isLogin}    Run Keyword And Return Status    Should Be Equal    ${current_url}    ${HOMEPAGEURL}   
    RETURN    ${True}


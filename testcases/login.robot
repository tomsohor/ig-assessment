*** Settings ***
Documentation    This file contain all required 3 positive test cases
...               as stated in the assesment docs

Resource    ../resources/customKeyword.robot

*** Variables ***

*** Keywords ***
Login With Valid Credentials
    Enter Username    standard_user
    Enter Password    secret_sauce
    Click Login
    ${Current_Url}    Get Location
    ${isValid}    Verify Valid Login    ${Current_Url}  
    IF    $isValid
        Set Test Variable    isLogin    ${True}
    ELSE
        Set Test Variable    isLogin    ${False} 
    END
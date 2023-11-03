*** Settings ***
Documentation    This file contain all required 3 positive test cases
...               as stated in the assesment docs

Resource    ../resources/customKeyword.robot

*** Variables ***

*** Keywords ***
Login With Valid Credentials
    Fill Login Form    standard_user   secret_sauce
    Click Login
    ${Current_Url}    Get Location
    Verify Valid Login    ${Current_Url} 
    
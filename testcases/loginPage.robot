*** Settings ***
Documentation    This file contains keyword related to login test

Resource    ../resources/customKeyword.robot

*** Variables ***

*** Keywords ***
Login With Valid Credentials
    Fill Login Form    standard_user   secret_sauce
    Click Login
    ${Current_Url}    Get Location
    Verify Valid Login    ${Current_Url} 
    
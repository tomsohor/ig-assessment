*** Settings ***
Documentation    This file contain all required 3 positive test cases
...               as stated in the assesment docs

Resource    testcases/login.robot




Suite Setup    Open Browser With URL


*** Variables ***

*** Keywords ***

*** Test Cases ***
Login Successfully
    [Setup]
    Login With Valid Credentials
    
Add Item To Cart
    IF    !$isLogin
        Close Browser
    ELSE
        
    END 
    

    

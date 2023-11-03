*** Settings ***
Documentation    This file contain all required 3 positive test cases
...               as stated in the assesment docs

Resource    ../resources/customKeyword.robot

*** Variables ***

*** Keywords ***
Add Item To Cart
    [Arguments]    ${itemname}
    ${title}    Get First Item By Title     ${itemname}
    ${btnId}    Get Add Btn id    ${title}
    Click Add To Cart Btn    ${btnId}
    Click Cart Btn
    
    


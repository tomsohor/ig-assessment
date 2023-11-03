*** Settings ***
Documentation    This file contains keyword related to product/item 

Resource    ../resources/customKeyword.robot

*** Variables ***

*** Keywords ***
Add A Item To Cart
    [Arguments]    ${itemname}
    ${title}    Get First Item By Title     ${itemname}
    ${btnId}    Get Add Btn id    ${title}
    Click Add To Cart Btn    ${btnId}
    Click Cart Btn
    Verify Added Item    ${title}
    


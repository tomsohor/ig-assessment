*** Settings ***
Documentation    This file contains keyword related to product/item 

Resource    ../resources/customKeyword.robot

*** Keywords ***
Add A Item To Cart
    [Arguments]    ${itemname}
    ${itemTitle}    Get First Item By Title     ${itemName}
    ${btnId}    Get Add Btn Id    ${itemTitle}
    Click Add To Cart Btn    ${btnId}
    Click Cart Btn
    Verify Added Item    ${itemTitle}
    


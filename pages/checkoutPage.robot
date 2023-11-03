*** Settings ***
Documentation    This file contains keyword related to checkout process 

Resource    ../resources/customKeyword.robot

*** Keywords ***
Checkout Item
    Click Checkout Btn
    Fill Checkout Information Form    Kanya    Tom    120101
    Sleep    1
    Click Continue Btn
    Click Finish Btn
    ${pageTitle}    Get Text    class=title
    Verify Checkout    ${pageTitle}
    Sleep    2
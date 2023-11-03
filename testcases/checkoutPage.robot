*** Settings ***
Documentation    This file contain all required 3 positive test cases
...               as stated in the assesment docs

Resource    ../resources/customKeyword.robot

*** Variables ***

*** Keywords ***
Checkout Item
    Click Checkout Btn
    Fill Checkout Information Form    Kanya    Tom    120101
    Sleep    2
    Click Continue Btn
    Click Finish Btn
    ${pageTitle}    Get Text    class=title
    Verify Checkout    ${pageTitle}
    Sleep    3
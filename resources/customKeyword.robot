*** Settings ***
Documentation    This file contains useful keywords and required Library to for this assesment

Library           SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.saucedemo.com
${HOMEPAGEURL}    ${URL}/inventory.html

*** Keywords ***
Open Browser With URL
    Open Browser    ${URL}    ${BROWSER}

###############  Custome Form Section #######################

Fill Login Form
    [Arguments]    ${username}    ${password}
    Input Text    id=user-name    ${username}
    Input Password    id=password    ${password}

Fill Checkout Information Form
    [Arguments]    ${firstname}    ${lastname}    ${zip}
    Input Text    id=first-name    ${firstname}
    Input Text    id=last-name    ${lastname}
    Input Text    id=postal-code    ${zip}

############ Customer Button ##################

Click Login 
    Click Button    login-button
    
Click Add To Cart Btn
    [Arguments]    ${id}
    Click Button    ${id}

Click Cart Btn
    Click Link    class=shopping_cart_link
    
Click Checkout Btn
    Click Button    id=checkout

Click Continue Btn
    Click Button    id=continue

Click Finish Btn
    Click Button    id=finish

############# Validation ###################

Verify Valid Login
    [Arguments]    ${current_url}
    ${isValid}    Run Keyword And Return Status    Should Be Equal    ${current_url}    ${HOMEPAGEURL}  
    IF    $isValid
        Set Suite Variable    $isLogin    ${True}
    ELSE
        Set Suite Variable    $isLogin    ${False}
        Fail    msg=Invalid Credentials
    END

Verify Added Item
    [Arguments]    ${title}
    Element Should Contain    class=inventory_item_name    ${title}

Verify Checkout
    [Arguments]    ${pageTitle}
    Should Be Equal    ${pageTitle}    Checkout: Complete!

############# Customer Getter ######################

Get First Item By Title
    [Arguments]    ${keyword}
    @{itemTitle}    Get Webelements    class=inventory_item_name
    FOR    ${item}    IN    @{itemTitle}  
        ${itemText}    Get Text    ${item}
        IF    $keyword in $itemText
            ${title}    Set Variable    ${itemText}
            Exit For Loop
        END
    END
    RETURN    ${title}

Get Add Btn Id
    [Arguments]    ${title}
    ${title}    Evaluate    $title.lower().replace(" ","-")
    ${addToCardBtnId}    Set Variable    add-to-cart-${title}
    RETURN    ${addToCardBtnId}


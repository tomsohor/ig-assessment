*** Settings ***
Documentation    This file contain all required 3 positive test cases
...               as stated in the assesment docs

Resource    pages/loginPage.robot
Resource    pages/productPage.robot
Resource    pages/checkoutPage.robot

Suite Setup    Open Browser With URL


*** Test Cases ***
Scenario 1 : Login Into Website 
    [Setup]
    Login With Valid Credentials
    
Scenario 2 : Add A Tshirt To Cart
    IF    ${isLogin}
        Add An Item To Cart    T-Shirt
    ELSE
        Fail    msg=Login into system is not successful
    END
    
Scenario 3 : Complete checkout
     IF    ${isLogin}
        Sleep   2
        Checkout Item
    ELSE
        Fail    msg=Login into system is not successful
    END
    
    

    

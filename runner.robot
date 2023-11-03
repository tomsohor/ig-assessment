*** Settings ***
Documentation    This file contain all required 3 positive test cases
...               as stated in the assesment docs

Resource    testcases/loginPage.robot
Resource    testcases/productPage.robot
Resource    testcases/checkoutPage.robot

Suite Setup    Open Browser With URL


*** Test Cases ***
Login 
    [Setup]
    Login With Valid Credentials
    
Add Tshirt To Cart
    Add Item To Cart    T-Shirt


Complete checkout
    Checkout Item
    

    

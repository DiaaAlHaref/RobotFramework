*** Settings ***
Library  Selenium2Library
Resource    PreConditions.robot

Resource  ../UiActions/UiActions.robot
Variables  ../PageObjects/ElementLocators.py

Library  DataDriver    ../TestData/LoginTestData_Valid.xlsx    sheet_name=Sheet1

Test Setup          Navigate To LandingPage
Test Teardown       close browser

Test Template  Test Login Page
*** Test Cases ***
Test Valid Login Data    ${email_Address}    ${password}




*** Keywords ***
Test Login Page
    [Tags]  Functional
    [Arguments]  ${email_Address}    ${password}
    WaitUntil Element Visible then Send Text  ${emailAddress_Locator}   ${email_Address}
    Clear Textbox then Send Text  ${password_Locator}   ${password}

    click button    ${loginButton_Locator}
*** Settings ***
Library  Selenium2Library
Resource    PreConditions.robot
Resource    ../Resources/RegistrationKeywords.robot
Variables    ../PageObjects/ElementLocators.py
Library     DataDriver  ../TestData/RegistrationTestData_InValid.xlsx  sheet_name=Sheet1

Test Setup          Navigate To LandingPage
Test Teardown       Close Browser with log file creation

Test Template  Test Registration Page

*** Test Cases ***
Test InValid Registration Data  ${firstName}    ${lastName}  ${email}   ${phone}  ${companyName}  ${streetAddress}  ${city}  ${password}  ${confirmPassword}



*** Keywords ***
Test Registration Page
    [Tags]  Functional
    [Arguments]     ${firstName}    ${lastName}  ${email}   ${phone}  ${companyName}  ${streetAddress}  ${city}   ${password}  ${confirmPassword}

    WaitUntil Element Visible then Send Text      ${firstName_Locator}      ${firstName}
    clear textbox then send text      ${lastname_Locator}     ${lastName}
    clear textbox then send text      ${email_Locator}        ${email}
    clear textbox then send text      ${phone_Locator}        ${phone}
    clear textbox then send text      ${companyName_Locator}      ${companyName}
    clear textbox then send text      ${streetAddress_Locator}    ${streetAddress}
    clear textbox then send text      ${city_Locator}             ${city}
    clear textbox then send text      ${passwordInput1_Locator}   ${password}
    clear textbox then send text      ${confirmPassword_Locator}  ${confirmPassword}

    click button  ${registerButton_Locator}

    page should contain  ${pass_message}


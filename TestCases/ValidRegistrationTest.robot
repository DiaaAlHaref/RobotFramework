*** Settings ***
Library  Selenium2Library
#Resource    PreConditions.robot
Resource    ../UiActions/UiActions.robot
Variables    ../PageObjects/ElementLocators.py
Library     DataDriver  ../TestData/RegistrationTestData_Valid.xlsx  sheet_name=Sheet1



Test Template  Test Registration Page
*** Variables ***
${pass_message}   Login

*** Test Cases ***
Test Valid Registration Data    ${firstName}    ${lastName}  ${email} ${countryCode} ${phone}  ${companyName}  ${streetAddress}  ${city}



*** Keywords ***
Test Registration Page
    [Arguments]     ${firstName}    ${lastName}  ${email} ${countryCode} ${phone}  ${companyName}  ${streetAddress}  ${city}
    WaitUntil Element Visible then Send Text      ${firstName_Locator}      ${firstName}
    clear textbox then send text      ${lastname_Locator}     ${lastName}
    clear textbox then send text      ${email_Locator}        ${email}
    select from list by label         ${countrycodeList_Locator}    ${countryCode}
    clear textbox then send text      ${phone_Locator}        ${phone}
    clear textbox then send text      ${companyName_Locator}      ${companyName}
    clear textbox then send text      ${streetAddress_Locator}    ${streetAddress}
    clear textbox then send text      ${city_Locator}             ${city}

    click button  ${registerButton_Locator}

    page should contain  ${pass_message}





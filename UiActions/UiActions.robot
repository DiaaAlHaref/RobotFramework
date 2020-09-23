*** Settings ***
Library  Selenium2Library






*** Keywords ***
WaitUntil Element Visible then Click on Element
    [Arguments]     ${Element_Locator}
    wait until element is visible  ${Element_Locator}
    click element  ${Element_Locator}
WaitUntil Element Visible then Send Text
    [Documentation]     Keyword to Find an element if visible by id, name, xpath and send text
    [Arguments]     ${Locator}      ${Text}
    ${"TextBox"}    set variable    ${Locator}
    wait until element is visible   ${"TextBox"}
    clear element text  ${"TextBox"}
    input text  ${"TextBox"}    ${Text}

WaitUntil Element Enabled then Send Text
    [Documentation]     Keyword to Find an element if enabled by id, name, xpath and send text
    [Arguments]     ${Locator}      ${Text}
    ${"TextBox"}    set variable    ${Locator}
    wait until element is enabled   ${"TextBox"}
    clear element text  ${"TextBox"}
    input text  ${"TextBox"}    ${Text}

Clear Textbox then Send Text
    [Arguments]     ${locator}  ${Text}
    clear element text  ${locator}
    input text  ${locator}      ${Text}





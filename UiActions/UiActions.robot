*** Settings ***
Library  Selenium2Library
Library  OperatingSystem


*** Keywords ***
WaitUntil Element Visible then Click on Element
    [Documentation]  Keyword to Find an element if visible by id, name, xpath ..etc then click on it
    [Arguments]     ${Element_Locator}
    wait until element is visible  ${Element_Locator}
    click element  ${Element_Locator}


WaitUntil Element Visible then Send Text
    [Documentation]     Keyword to Find an element if visible by id, name, xpath and then send text
    [Arguments]     ${Locator}      ${Text}
    ${"TextBox"}    set variable    ${Locator}
    set selenium timeout  10 seconds
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
    [Documentation]  Keyword to clear text field before sending text and then send text input
    [Arguments]     ${locator}  ${Text}
    set selenium timeout  10 seconds
    clear element text  ${locator}
    input text  ${locator}      ${Text}

Log TestRun When Test Fails
    ${html_src} =   log source
    run keyword if test failed  create file  FailedTests/myError.html   ${html_src}

Scroll to Page Buttom
    [Documentation]  Keyword scrolling to the buttom of the page
    execute javascript  window.scrollTo(0,document.body.scrollHeight)

Scroll Page to specific location
    [Documentation]  Keyword to scroll to a specific location using x, y location pixels
    [Arguments]  ${x_location}   ${y_location}
    execute javascript  window.scrollTo(${x_location},${y_location})


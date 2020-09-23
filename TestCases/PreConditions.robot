*** Settings ***
Library  Selenium2Library


*** Variables ***
${url}      https://phptravels.org/register.php
@{browser}      chrome      firefox
${page_title}   Register - PHPTRAVELS

*** Keywords ***
Navigate To LandingPage
    open browser  ${url}    ${browser}[0]
    maximize browser window
    title should be  ${page_title}

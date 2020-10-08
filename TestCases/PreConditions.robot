*** Settings ***
Library  Selenium2Library
Resource     ../UiActions/UiActions.robot

*** Variables ***
@{url}      https://phptravels.org/register.php     https://phptravels.org/clientarea.php

@{browser}      chrome      firefox     headlesschrome      headlessfirefox
@{page_titles}  Register - PHPTRAVELS  Client Area - PHPTRAVELS

*** Keywords ***
Navigate To LandingPage
    open browser  ${url}[0]    ${browser}[0]
    maximize browser window
    title should be  ${page_titles}[0]


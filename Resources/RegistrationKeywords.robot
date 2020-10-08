*** Settings ***
Library  Selenium2Library
Variables    ../PageObjects/ElementLocators.py
Library     DataDriver  ../TestData/RegistrationTestData_InValid.xlsx  sheet_name=Sheet1



*** Variables ***
${pass_message}   Login


*** Keywords ***







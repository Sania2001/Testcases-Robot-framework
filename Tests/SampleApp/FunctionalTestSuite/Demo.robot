*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
login page test case
    [Documentation]  login for user
    [Tags]  user
    Log  Hello

Registration Page test case
    [Documentation]  registration page for user
    [Tags]  user
    Log  Welcome

Dashboard test case
    [Documentation]  Dashboard for user
    Log  Dash

Google test case
    [Documentation]  simple google test
    Open Browser    https://www.google.com/  chrome
    Close Browser



*** Keywords ***


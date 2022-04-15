*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/locators.py
Variables  ../test_data/test_data.py

*** Keywords ***
Verify Welcome Text is Visible
    Element Should Be Visible  ${WelcomeText}  timeout=5

Logout
    CLick Element  ${WelcomeText}
    Wait Until Element Is Visible  ${LogoutButton}  timeout=5
    Click Element  ${LogoutButton}
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=5
### Documentation
### https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#creating-user-keywords

*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Resource  ../resources/configuration/config.robot
Resource  ../resources/driver_factory/driver_factory.robot
Variables  ../resources/page_object/locators/locators.py
Test Setup  Run keywords
...  Opening browser
...  AND  Wait until Login Page is loaded
Test Teardown  Closing browser


*** Variables ***

*** Test Cases ***
Verify Successful Login to the-internet.herokuapp
    [documentation]  This test case verifies that user is able to successfully Login to the-internet.herokuapp
    [tags]  Smoke
    Input valid username
    Input valid password
    Click to submit button
    Should be Secure Area


*** Keywords ***

Wait until Login Page is loaded
    Wait Until Element Is Visible  ${UsernameFld}  timeout=5

Input valid username
    Input Text  ${UsernameFld}  ${USERNAME}

Input valid password
    Input Password  ${PasswordFld}  ${PASSWORD}

Click to submit button
     Click Element  ${SubmitBtn}

Should be Secure Area
    Element Should Be Visible  ${LogoutBtn}  timeout=5
### Documentation
### https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#toc-entry-291

*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Resource  ../resources/configuration/config.robot
Variables  ../resources/page_object/locators/locators.py
Test Setup  Open browser  ${URL}  ${BROWSER}
Test Teardown  Close Browser


*** Variables ***
${URL}  https://the-internet.herokuapp.com/login
${BROWSER}  Chrome

*** Test Cases ***
Verify Successful Login to the-internet.herokuapp
    [documentation]  This test case verifies that user is able to successfully Login to the-internet.herokuapp
    [tags]  Smoke
    Wait Until Element Is Visible  id:username  timeout=5
    Input Text  ${UsernameFld}  ${USERNAME}
    Input Password  ${PasswordFld}  ${PASSWORD}
    Click Element  ${SubmitBtn}
    Element Should Be Visible  ${LogoutBtn}  timeout=5

*** Keywords ***

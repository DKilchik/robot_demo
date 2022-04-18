*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Test Setup  Open browser  ${URL}  ${BROWSER}
Test Teardown  Close Browser

*** Variables ***
${URL}  https://the-internet.herokuapp.com/login
${BROWSER}  Chrome
${USERNAME}  tomsmith
${PASSWORD}  SuperSecretPassword!


*** Test Cases ***
Verify Successful Login to the-internet.herokuapp
    [documentation]  This test case verifies that user is able to successfully Login to the-internet.herokuapp
    [tags]  Smoke
    Wait Until Element Is Visible  id:username  timeout=5
    Input Text  id:username  ${USERNAME}
    Input Password  id:password  ${PASSWORD}
    Click Element  css:button[type="submit"]
    Element Should Be Visible  css:[href="/logout"]  timeout=5



*** Keywords ***
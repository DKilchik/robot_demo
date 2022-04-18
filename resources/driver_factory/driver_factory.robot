*** Settings ***
Documentation  Driver setup and teardown
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${URL}  https://the-internet.herokuapp.com/login

*** Keywords ***


Opening browser
    [Arguments]  ${url}=${URL}  ${browser}=${BROWSER}
    Open browser  ${url}  ${browser}
    Maximize Browser Window


Closing browser
    Close browser

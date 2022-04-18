*** Settings ***
Documentation  Driver setup and teardown
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${URL}  https://the-internet.herokuapp.com/login

*** Keywords ***

#  FIXME create a more flexible structure which provides the ability to pass env as keyword args
Opening browser
    Open browser  ${URL}  ${BROWSER}
    Maximize Browser Window


Closing browser
    Close browser

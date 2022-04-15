*** Settings ***
Documentation  Page Object in Robot Framework
Library  SeleniumLibrary
Resource  ../resources/page_object/keywords/login_page.robot
Resource  ../resources/page_object/keywords/home_page.robot
Resource  ../resources/page_object/keywords/common.robot

*** Variables ***
${site_url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  This test case verifies that the user is able to successfully Login and Logout to OrangeHRM using Page Object
    [tags]  Smoke
    Opening Browser  ${site_url}  ${browser}
    Input Username
    Input Password
    Click Login
    Verify Welcome Text is Visible
    Logout
    Close Browser

*** Keywords ***
*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Suite Setup     Open Browser     ${NEWURL}     Firefox
Test Setup      Log     Inside Test Setup
Test Teardown   Close Browser
Suite Teardown  Close Browser

*** Test Cases ***
LoginTest
    [Documentation]    This is a sample login test.
    Open Browser    ${URL}  Firefox
    Set Browser Implicit Wait   8
    LoginKW
    Click Element   id=welcome
    #Click Element   link=logout
    Log     Test Completed
    Log     This test case is designed by user named %{USER} and the present working directory is %{PWD} !

GoogleSearchTest
    [Documentation]     This is google search test.
    Open Browser     ${NEWURL}     Firefox
    Set Browser Implicit Wait   8
    Input Text          name=q     Quality Assurance
    Press Keys          name=q  ENTER
    #Click Button    name=btnK
    Sleep               5

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${NEWURL}       https://www.google.com/
@{CREDENTIALS}  Admin   admin123
&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text      id=txtUsername  @{CREDENTIALS}[0]
    Input Password  id=txtPassword  &{LOGINDATA}[password]
    Click Button    id=btnLogin

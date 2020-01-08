*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Test Setup  Open Browser     ${URL}     Firefox
Test Teardown   Close Browser

*** Test Cases ***
CreateAccountTest
    [Documentation]     This is test for creating account on conduit.
    Set Browser Implicit Wait   8
    Click Element       xpath=/html/body/app-root/app-layout-header/nav/div/ul/li[3]/a
    Input Text          xpath=/html/body/app-root/app-auth-page/div/div/div/div/form/fieldset/fieldset[1]/input     Mitpatel
    Input Text          xpath=/html/body/app-root/app-auth-page/div/div/div/div/form/fieldset/fieldset[2]/input     mitappinvestor@gmail.com
    Input Text          xpath=/html/body/app-root/app-auth-page/div/div/div/div/form/fieldset/fieldset[3]/input     b5a1n1s9i8
    Press Keys          xpath=/html/body/app-root/app-auth-page/div/div/div/div/form/fieldset/button                ENTER
    Wait Until Element Is Visible    //*[text()='Mitpatel']    10s
    #Click Button    name=btnK
    Sleep               5

*** Variables ***
${URL}          https://angular.realworld.io/
#@{CREDENTIALS}
#*** Keywords ***

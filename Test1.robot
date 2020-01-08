*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
#Library  SeleniumLibrary

*** Test Cases ***
FirstTest
    Open Browser     ${URL}     Firefox
    Set Browser Implicit Wait   5
    Input Text   name=q     Quality Assurance
    Press Keys  name=q  ENTER
    #Click Button    name=btnK
    Sleep   2
    Close Browser
*** Variables ***
${URL}  https://www.google.com/

*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***


*** Keywords ***

Navigate To
    Go To  ${URL}

Verify Page Loaded
    Wait Until Page Contains  RobotFrameworkTutorial.com Test Client
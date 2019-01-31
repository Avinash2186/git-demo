*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Resource  ../Data/InputData.robot

*** Variables ***


*** Keywords ***

Begin Web Test
    Open browser    about:blank  ${BROWSER}
    Maximize Browser Window



End Web Test
    Close Browser
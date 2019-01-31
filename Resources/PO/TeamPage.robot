*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***
${TeamPage_Header} =  xpath=//section[@id='team']//h2[@class='section-heading']

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${TeamPage_Header}

Validate Page Contents
    element text should be  ${TeamPage_Header}  Our Amazing Team    ignore_case=True


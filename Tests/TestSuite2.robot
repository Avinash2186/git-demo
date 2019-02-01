*** Settings ***

Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown   End Web Test
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/DataManager.robot
Resource  ../Data/InputData.robot

*** Variables ***
${ExcelData}

*** Test Cases ***

Should be able to access "Team" page
    [tags]  smoking
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Go To "Team" Page

Should be able to access "Home" Page
    [tags]  test2
    FrontOfficeApp.Go To Landing Page

Feature1 Created
    Log  Feature 1 created
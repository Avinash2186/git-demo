*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TeamPage.robot
Resource  ./PO/TopNav.robot
resource    ./PO/LandingPage.robot
resource    ./PO/TeamPage.robot
resource    ./PO/TopNav.robot
*** Variables ***


*** Keywords ***

Go To Landing Page
    LandingPage.Navigate To
    LandingPage.Verify Page Loaded

Go To "Team" Page
    TopNav.Select "Team" Page
    TeamPage.Verify Page Loaded

Validate "Team" Page
    TeamPage.Validate Page Contents
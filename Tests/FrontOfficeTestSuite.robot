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
Print Values from ExcelFile
    [tags]  smokingexcel
    ${ExcelData} =  DataManager.Get CSV Data    ${MyExcelFile}
    Log  ${ExcelData}
    set global variable  ${ExcelData}
   # ${FINAL_EXCEL_DATA} =  ${ExcelData}

Print Each Row of Excel
    [tags]  excel
    FOR  ${i}  IN RANGE  5
       # Do Something    ${i}
        log  ${ExcelData[0]}
        log  ${ExcelData[0][${i}]}
    END
    #Test Each Row   ${ExcelData}

Should be able to access "Team" page
    [tags]  test1
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Go To "Team" Page

"Team" page should have header as expected
    [tags]  test2
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Go To "Team" Page
    FrontOfficeApp.Validate "Team" Page


*** Settings ***
Library  ../CustomLibs/Csv.py


*** Variables ***


*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =   read csv file  ${FilePath}
    [Return]  ${Data}


Test Each Row
    [Arguments]  ${ExcelData}
    FOR  ${Row}  IN  ${ExcelData}
       Print Row    ${Row}
    END

Print Row
    [Arguments]  ${row}
    Log  ${row}


Do Something
    [Arguments]  ${index}
    log  ${index}
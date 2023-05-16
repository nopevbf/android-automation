*** Settings ***
Library           AppiumLibrary
# Library           DataDriver    file=../resources/data/users.csv
Resource          ../resources/appDietSettings.robot
Suite Setup       Start session apps
Suite Teardown    Close session apps
# Test Template     Input text tdd

# *** Keywords ***
# Input text tdd
#     [Arguments]               ${nameuser}       ${weight}        ${height}
#     Input Text                ${FIELD_NAME}    ${nameuser}
#     Input Text                ${FIELD_WEIGHT}  ${weight} 
#     Input Text                ${FIELD_HEIGHT}  ${height}
#     Click Element             ${FIELD_GENDER_ML}
#     Tap next button apps
#     Tap activity hiking    
#     Tap finish button
    

*** Test Cases ***  
TC01 - Open apps
    [Documentation]    Open apps
    [Tags]    TC01
    Sleep     3s

TC02 - Verify that user can input data
    [Documentation]    Verify that user can input data
    [Tags]    TC02
    Input text home apps    
    Tap next button apps
    Sleep     3s

TC03 - Verify that user can finish input data
    [Documentation]    Verify that user can finish input data
    [Tags]    TC03
    Tap activity hiking
    Tap finish button

# TC04 - Input TDD              
#     [Documentation]    Input TDD
#     [Tags]             TC04
#     [Template]         Input text tdd

    
                
    



    
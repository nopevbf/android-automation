*** Settings ***
Library           AppiumLibrary
Variables         ../resources/variables.yaml

*** Keywords ***
Start session apps
    Set Appium Timeout        30
    Open Application          ${APPIUM_SERVER}
    ...                       platformName=Android
    ...                       platformVersion=13
    ...                       deviceName=Emutest
    ...                       appPackage=com.fghilmany.dietmealapp
    ...                       appActivity=.ui.main.MainActivity
    ...                       automationName=UiAutomator2
    ...                       autoGrantPermissions=true    
    ...                       noReset=true
    Sleep                     2s

Close session apps
    Close Application

Input text tdd
    [Arguments]               ${nameuser}       ${weight}        ${height}
    Input Text                ${FIELD_NAME}    ${nameuser}
    Input Text                ${FIELD_WEIGHT}  ${weight} 
    Input Text                ${FIELD_HEIGHT}  ${height}
    Click Element             ${FIELD_GENDER_ML}
    Tap next button apps
    Tap activity hiking    
    Tap finish button

Input text home apps
    Input Text                ${FIELD_NAME}    Firman
    Input Text                ${FIELD_WEIGHT}  60
    Input Text                ${FIELD_HEIGHT}  170
    Click Element             ${FIELD_GENDER_ML}

Tap next button apps
    Click Element             ${BUTTON_NEXT}

Tap activity sleep 
    Click Element             ${SLEEP}

Tap activity gardening
    Click Element             ${GARDEN}

Tap activity sawing
    Click Element             ${SAW}

Tap activity hiking
    Click Element             ${HIKE}

Tap activity school
    Click Element             ${SCHOOL}

Tap activity writing
    Click Element             ${WRITE}

Tap activity washing
    Click Element             ${WASH}

Tap finish button
    Click Element             ${BUTTON_FINISH}

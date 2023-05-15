*** Settings ***
Library           AppiumLibrary
Variables         ../resources/variables.yaml

*** Keywords **
Start Session Apps
   Set Appium Timeout    30
   Open Application      ${APPIUM_SERVER}
   ...                   platformName=Android
   ...                   platformVersion=12
   ...                   deviceName=Mi 10T Pro
   ...                   appPackage=io.appium.android.apis
   ...                   appActivity=io.appium.android.apis.ApiDemos
   ...                   automationName=UiAutomator2
   ...                   autoGrantPermissions=true
   Sleep                 2s

Close Session Apps
   Close Application        

Tap Accessibility
   Click Element    ${TXT_ACCESSIBILITY}

Tap Accessibility Node Provider
   Click Element    ${TXT_node_provider}   

Tap Accessibility Service
   Click Element    ${TXT_ACC_SERCIVE}  

Tap Custom View
   Click Element    ${TXT_CUSTOM_VIEW}

     

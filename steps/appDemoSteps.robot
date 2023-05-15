*** Settings ***    
Resource          ../resources/appDemoSettings.robot
Suite Setup       Start Session Apps
Suite Teardown    Close Session Apps
*** Test Cases ***
As a user, I want to open Demo apps
    Page Should Contain Text    Accessibility
    Tap Accessibility
    Sleep    2s
    Page Should Contain Text    Accessibility Node Provider
As a user, I want to open accessibility node provider
    Tap Accessibility Node Provider
    Sleep    2s
    Page Should Contain Text    Enable TalkBack
    Go Back
    Sleep    2s
    Page Should Contain Text    Accessibility Service
As a user, I want to open accessibility service
    Tap Accessibility Service
    Sleep    2s
    Page Should Contain Text    Enable ClockBack
    Go Back
    Sleep    2s
    Page Should Contain Text    Custom View
As a user, I want to open custom view
    Tap Custom View
    Sleep    2s
    Page Should Contain Text    Enable TalkBack
    Go Back
    Sleep    2s
    Go Back
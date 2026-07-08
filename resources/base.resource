*** Settings ***
Library    AppiumLibrary
Resource    ../pages/firstTest.resource


*** Variables ***
${APP}    ${EXECDIR}/app/Food_Diary.apk

*** Keywords ***
Start session
    Open Application    http://localhost:4723

    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    udid=emulator-5554
    ...    app=${APP}
    ...    autoGrantPermissions=true


Close session
    Close Application

the application is started
    Start session

the title should be visible
    Wait For Home Element

the application should be closed
    Close session
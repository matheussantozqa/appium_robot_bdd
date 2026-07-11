*** Settings ***
Library    AppiumLibrary    timeout=30   

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
    # ...    disableIdLocatorAutocompletion=true

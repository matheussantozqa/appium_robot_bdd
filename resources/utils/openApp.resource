*** Settings ***
Library    Collections
Library    AppiumLibrary    timeout=30

*** Variables ***
${APP}    %{APP=}
${USE_BROWSERSTACK}    %{USE_BROWSERSTACK=false}
${BROWSERSTACK_APP_URL}    %{BROWSERSTACK_APP_URL=}
${BROWSERSTACK_USERNAME}    %{BROWSERSTACK_USERNAME=}
${BROWSERSTACK_ACCESS_KEY}    %{BROWSERSTACK_ACCESS_KEY=}
${BUILD_NUMBER}    %{BUILD_NUMBER=local}

*** Keywords ***
Start session
    IF    '${USE_BROWSERSTACK}' == 'true'
        Open Application On BrowserStack
    ELSE
        Open Application Local
    END

Open Application Local
    Open Application    http://localhost:4723
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    udid=emulator-5554
    ...    app=${APP}
    ...    autoGrantPermissions=true

Open Application On BrowserStack
    ${bstack_options}=    Create Dictionary
    ...    deviceName=Google Pixel 7
    ...    osVersion=13.0
    ...    projectName=Food Diary
    ...    buildName=Build ${BUILD_NUMBER}
    ...    sessionName=TC001 - Open and close the app
    ${caps}=    Create Dictionary
    ...    platformName=Android
    ...    automationName=UiAutomator2
    ...    app=${BROWSERSTACK_APP_URL}
    ...    bstack:options=${bstack_options}
    Open Application
    ...    https://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
    ...    &{caps}
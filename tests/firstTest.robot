*** Settings ***
Resource    ../resources/pages/firstTest.resource
# Test Setup    the application is started
# Test Teardown    the application should be closed

*** Test Cases **    
TC001 - Should open and close the application
    Given the application is started
    When the title should be visible
    Then the application should be closed

*** Settings ***
Resource    ../resources/base.resource


*** Test Cases ***
Should open and close the application
    Given the application is started
    When the title should be visible
    Then the application should be closed

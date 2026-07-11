*** Settings ***
Resource    ../base.resource


*** Keywords ***
# Keywords da página inicial
Wait For Home Element
    Wait Until Element Is Visible    ${homepage.homeElement}    

Close session
    Close Application

the application is started
    Start session

the title should be visible
    Wait For Home Element

the application should be closed
    Close session
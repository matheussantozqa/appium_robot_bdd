*** Settings ***
Library    AppiumLibrary

*** Variables ***
# Seletores serão preenchidos posteriormente
${HOME_ELEMENT}    id=com.food.diary:id/toolbar


*** Keywords ***
# Keywords da página inicial
Wait For Home Element
    Wait Until Element Is Visible    ${HOME_ELEMENT}
*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/base.resource

*** Test Cases ***
Test Case 1
    [Documentation]  BA-13 Проверка перехода на страницу товара
    # [Tags]
    Open Browser To Page
    Click Something    xpath://*[contains(text(),'Шортики')]   
    Page Should Contain       Шортики 3 
    Sleep    3
    Close Browser
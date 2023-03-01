*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 1
    [Documentation]  BA-29 Проверка перехода на главную страницу
    [Tags]    check
    Open Browser To Page
    Click Something    xpath://*[contains(text(),'Шортики')]   
    Page Should Contain       Шортики 3 
    Click Element    xpath://*[contains(text(),'Главная')]//parent::li
    Location Should Be    ${URL}/
    Sleep    3
    Close Browser
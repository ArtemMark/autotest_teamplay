*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 1
    [Documentation]  BA-14 Проверка отображения информации о товаре
    [Tags]    check
    Open Browser To Page
    Click Something    xpath://*[contains(text(),'Шортики')]   
    Page Should Contain       Шортики 3 
    Page Should Contain    Цвета
    Page Should Contain    Размеры
    Page Should Contain    Параметры
    Page Should Contain Element    id:exampleCount
    Page Should Contain Button    Добавить в корзину
    Sleep    3
    Close Browser
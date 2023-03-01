*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/base.resource
# Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 1
    [Documentation]  BA-16 Проверка отображения параметров товара на странице товара
    [Tags]    check
    Open Browser To Page
    Click Something    xpath://*[contains(text(),'Шортики')]   
    Page Should Contain Element    css=div[class="col-md-8"] >div > img:nth-child(1)
    Page Should Contain Element    css=div[class="col-md-3"] > img:nth-child(1)
    Page Should Contain    Цвета
    Page Should Contain    Размеры
    Page Should Contain    Параметры
    Page Should Contain Element    class:label-primary
    Page Should Contain Element    id:exampleCount
    Page Should Contain Button    Добавить в корзину
    Sleep    3
    Close Browser
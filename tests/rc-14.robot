*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-22 Проверка фильтрации товаров по категориям
    [Tags]  check
    Open Browser To Main Page
    Click Element    css:a[href="/shop/5"][class="nav-link "]
    Location Should Be    http://shop.bugred.ru/shop/5
    Sleep    3
    Close Browser
   
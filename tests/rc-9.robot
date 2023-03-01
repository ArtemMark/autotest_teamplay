*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-17 Проверка поиска товаров по категориям
    [Tags]  check
    Open Browser To Main Page
    Click Something    id:navbarDropdown
    Element Should Be Visible    css=div[class="dropdown-menu show"]
    element text should be    //div[contains(@class, "dropdown-menu")]/a[5]  Платья
    Click Something    //div[contains(@class, "dropdown-menu")]/a[5]
    Location Should Be    http://shop.bugred.ru/shop/5
    Close Browser
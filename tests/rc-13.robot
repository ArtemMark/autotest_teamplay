*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-21 Проверка поиска товаров по цене
    [Tags]  check
    Open Browser To Main Page
    Input Something    1000    name: price_from
    Input Something    5000    name:price_to
    Click Button    css:button[class="btn btn-primary"]
    Location Should Be    http://shop.bugred.ru/?price_from=1000&price_to=5000
    Sleep    3
    Close Browser

   
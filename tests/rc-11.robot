*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-19 Проверка поиска товаров по цвету
    [Tags]  check
    Open Browser To Main Page
    Click Something   css=input[class="colors"][value="2"] 
    Checkbox Should Be Selected    css=input[class="colors"][value="2"] 
    Click Something    css=button[class="btn btn-primary"]
    Location Should Be    http://shop.bugred.ru/?colors%5B%5D=2&price_from=&price_to=
    Sleep    3
    Close Browser
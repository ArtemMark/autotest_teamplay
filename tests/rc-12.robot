*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-20 Проверка поиска товаров по размеру
    [Tags]  check
    Open Browser To Main Page
    Click Something    css=input[class="sizes"][value="1"]
    Checkbox Should Be Selected    css=input[class="sizes"][value="1"]
    Click Something    css=button[class="btn btn-primary"]
    Location Should Be   http://shop.bugred.ru/?sizes%5B%5D=1&price_from=&price_to= 
    Sleep    3
    Close Browser
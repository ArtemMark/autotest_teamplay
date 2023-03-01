*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-32 Проверка перехода на страницу корзины покупок
    # [Tags] 
    Open Browser To Main Page
    Click Something    class:fa-shopping-cart
    Page Should Contain    Ваша корзина пуста!
    Location Should Be  http://shop.bugred.ru/shop/cart/index
    Sleep    3
    Close Browser
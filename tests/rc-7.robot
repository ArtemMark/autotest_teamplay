*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-34 Проверка отображения структуры превью товаров на главной странице
    # [Tags]  check
    Open Browser To Main Page
    Page Should Contain Element    class:col-md-8
    Close Browser
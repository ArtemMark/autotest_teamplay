*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-36 Проверка отображения сайд бара с параметрами фильтра поиска
    # [Tags]  check
    Open Browser To Main Page
    Page Should Contain Element    class:col-md-4
    Close Browser
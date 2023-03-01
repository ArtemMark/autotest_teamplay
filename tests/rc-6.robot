*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-33 Проверка отображения выпадающего меню категории
    # [Tags]  check
    Open Browser To Main Page
    Click Something    id:navbarDropdown
    Element Should Be Visible    css=div[class="dropdown-menu show"]
    Close Browser
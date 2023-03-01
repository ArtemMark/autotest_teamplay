*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-31 Проверка перехода на страницу авторизации
    # [Tags] 
    Open Browser To Main Page
    Click Something    xpath://*[contains(text(),'Вход')] 
    Page Should Contain    Email
    Page Should Contain Textfield   id:exampleInputEmail1
    Page Should Contain    Пароль
    Page Should Contain Textfield    id:exampleInputPassword1
    Sleep  3
    Close Browser    

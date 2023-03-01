*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-30 Проверка перехода на страницу регистрации
    # [Tags] 
    Open Browser To Main Page
    Click Something    xpath://*[contains(text(),'Регистрация')] 
    Page Should Contain    Имя
    Page Should Contain Textfield    id:exampleInputName
    Page Should Contain    Email
    Page Should Contain Textfield    id:exampleInputEmail1
    Page Should Contain    Пароль
    Page Should Contain Textfield    id:exampleInputPassword1
    Page Should Contain Textfield    id:exampleInputPassword2
    Page Should Contain Button    Зарегистрироваться
    Sleep  3
    Close Browser    


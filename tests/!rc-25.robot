*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/base.resource
# Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 1
    [Documentation]  BA-9 Проверка возможности регистрации нового пользователя в системе
    [Tags]    check
    Open Browser To Page
    Click Something    xpath://*[contains(text(),'Регистрация')] 
    Location Should Be    http://shop.bugred.ru/user/register/index
    Input Something    user22    id:exampleInputName
    Input Something    asdasda@mail.ru    id:exampleInputEmail1
    Input Password    id:exampleInputPassword1    111111    
    Input Password    id:exampleInputPassword2    111111    

    # Пользователь сохраниться после первого прогона а как потом выполнять тест ?
    Sleep    3
    Close Browser
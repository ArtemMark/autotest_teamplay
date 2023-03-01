# *** Settings ***
# Library    SeleniumLibrary
# Resource    ../resources/base.resource
# # Suite Teardown      Suite shutdown

# *** Test Cases ***
# Test Case 1
#     [Documentation]  BA-15 Проверка поведения каунтера ввода количества товаров
#     [Tags]    check
#     Open Browser To Page
#     Click Something    xpath://*[contains(text(),'Шортики')]   
#     Page Should Contain    Размеры
#     Page Should Contain    Параметры
#     Page Should Contain Element    id:exampleCount
#     Page Should Contain Button    Добавить в корзину
#     Sleep    3
#     Close Browser

#  не нашёл локатор для этих "стрелочек" в хроме их и вовсе нет
стрелки игнорить ручками потыкать
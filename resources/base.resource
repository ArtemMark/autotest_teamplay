*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# Локаторы и ссылки

${URL}=                 http://shop.bugred.ru
${BROWSER}=             Chrome
${SCREEN_NAME}=         {index}.png

${Local_Submit}=        css=form > button[type="submit"]
${Local_Serch}=         css=input[aria-label="Search"]


*** Keywords ***
Suite shutdown
    Close Browser

Open Browser To Page
    [Documentation]    Функция открытия браузера(Ссылка,Браузер), открываем на весь экран
    Open Browser    ${URL}    ${BROWSER}    options.add_argument("lang=ru")
    Maximize Browser Window
    Set Selenium Speed    0.1
    Set Selenium Implicit Wait    5
    Sleep    1

Open Browser To Main Page
    [Documentation]    Функция открытия главной страницы приложения
    Open Browser To Page

Click Submit
    [Documentation]    Функция Нажатия на кнопку. Ожидаем видимости кнопки (по умолчанию макс = 5 секунд) и нажимаем.
    Wait Until Element Is Visible    ${Local_Submit}
    Click Button    ${Local_Submit}

Input Something
    [Documentation]    Функция Ввода текста в нужное поле(текст,локатор). Ожидаем видимости поля (по умолчанию макс = 5 секунд) и вводим значение(something).
    [Arguments]    ${something}    ${locator}
    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${something}

Click Something
    [Documentation]    Функция Клик на нужном объекте(локатор). Ожидаем видимости поля (по умолчанию макс = 5 секунд) и кликаем по локатору.
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

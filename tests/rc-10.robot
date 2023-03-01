*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown

*** Test Cases ***
Test Case 
    [Documentation]  BA-18 Проверка поиска товаров по названию
    [Tags]  check
    Open Browser To Main Page
    Input Something    платье    ${Local_Serch}
    Click Button    ${Local_Submit}
    @{list}=    Get WebElements    css=div[class="row"] >div > a:nth-child(1) > p:nth-child(2)
    FOR  ${id}  IN  @{list}
        Page Should Contain Element    css=div[class="row"] >div > a:nth-child(1) > p:nth-child(2)    платье
    END
    Sleep    3
    Close Browser
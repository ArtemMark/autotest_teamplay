*** Settings ***
Library    SeleniumLibrary
Resource    base.resource
Suite Teardown      Suite shutdown


*** Test Cases ***
Test Case 
    [Documentation]  BA-35 Проверка перехода на страницу товара
    # [Tags] 
    Open Browser To Main Page
    Click Something     css=div[class="col-md-8"] > div:nth-child(1)>div
    Page Should Contain    Платье желтое
    Sleep  3
    Close Browser    


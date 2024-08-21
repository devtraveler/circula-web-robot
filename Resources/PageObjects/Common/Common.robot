*** Settings ***
Resource    Resources/FileResource.robot


*** Keywords ***

Verify The Cookies Modal Pops Up
        Wait Until Element Is Visible    ${COOKIES_MODAL}    ${WAIT_TIME}
        
Click On The Accept All Button
        Wait Until Element Is Visible    ${ACCEPT_ALL_BUTTON_COOKIES}    ${WAIT_TIME}
        Click Element    ${ACCEPT_ALL_BUTTON_COOKIES}
        
*** Settings ***
Resource    Resources/FileResource.robot


*** Keywords ***

Verify The User Lands On The Homepage OF Circula
        Title Should Be    ${HOMEPAGE_TITLE}
        Wait Until Element Is Visible    ${HOMEPAGE_LOGO}    ${WAIT_TIME}

Click On The Login Button
       Wait Until Element Is Visible    ${LOGIN_BTN}    ${WAIT_TIME}
       Click Element    ${LOGIN_BTN}
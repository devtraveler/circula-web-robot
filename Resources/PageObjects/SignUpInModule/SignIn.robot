*** Settings ***
Resource    Resources/FileResource.robot


*** Keywords ***
Verify The User Lands On The Sign In Page
    Wait Until Location Contains    sign_in  ${WAIT_TIME}
    Title Should Be    Signin - Circula

Click On The Start A Free Trial
       Wait Until Element Is Visible    ${SIGN_UP_FREE_TRIAL_BTN}    ${WAIT_TIME}
       Click Element    ${SIGN_UP_FREE_TRIAL_BTN}
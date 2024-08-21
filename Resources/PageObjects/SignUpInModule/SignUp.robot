*** Settings ***
Resource    Resources/FileResource.robot


*** Keywords ***

Verify The User Lands On The Sign Up Page
    Wait Until Location Contains    sign_up  ${WAIT_TIME}
    Title Should Be    Signup - Circula


Clear The Company Country Input
    Wait Until Element Is Visible    ${COUNTRY_INPUT}    ${WAIT_TIME}
    Clear Element Text    ${COUNTRY_INPUT}
    
Click On The Company Country Dropbox
     Wait Until Element Is Visible    ${COUNTRY_INPUT}    ${WAIT_TIME}
     Click Element    ${COUNTRY_INPUT}
       
Type A Country Name On The Company Input
     [Arguments]    ${country}
     Wait Until Element Is Visible    ${COUNTRY_INPUT}    ${WAIT_TIME}
     Input Text    ${COUNTRY_INPUT}    ${country}

Verify The Entered Country Is Shown On The Country Dropbox
    [Arguments]    ${country}
    Wait Until Element Is Visible    ${NEW_COUNTRY_INPUT_P1}${country}${CLOSE_LOCATING}    ${WAIT_TIME}

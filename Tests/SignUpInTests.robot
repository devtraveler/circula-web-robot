*** Settings ***
Resource    Resources/FileResource.robot
Resource    Resources/PageObjects/Common/CommonApp.robot
Library    SeleniumLibrary
Library    DebugLibrary
Variables    ../Resources/PageObjects/Common/Common.py
Test Setup  Open Browser    ${HOMEPAGE}    chrome
Test Teardown  Close Browser
#Suite Setup    Open Browser    ${HOMEPAGE}    chrome
#Suite Teardown    Close Browser

*** Test Cases ***
Verify The User Can Add A Country To The Dropdown
#        CommonApp.Begin Web Test
#        CommonApp.End Web Test
        CommonApp.Accept All Cookies
        CommonApp.Navigate To The Sign In Page
        CommonApp.Accept All Cookies
#       Go to the login page
#        Click On the Sign Up Page
#        Accept the cookies
#        SIGN_UP_FREE_TRIAL_BTN = "link:Start a free trial"
#         Clear the input field
#         Type Sweden there
#            Verify Sweden is Shown

Verify The User Can Sign Up To The Platform
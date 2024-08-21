*** Settings ***
Resource    Resources/FileResource.robot


*** Keywords ***

Navigate To The Sign Up Page
    SignIn.Verify The User Lands On The Sign In Page
    SignIn.Click On The Start A Free Trial
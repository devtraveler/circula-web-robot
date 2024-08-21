*** Settings ***
Resource    Resources/FileResource.robot


*** Keywords ***

Begin Web Test
    Open Browser  url=${HOMEPAGE}  browser=chrome   options=page_load_strategy("eager"); add_argument("--ignore-ssl-errors=yes"); add_argument("--ignore-certificate-errors"); add_argument("--disable-search-engine-choice-screen")
    Maximize Browser Window

End Web Test
    Close All Browsers

Navigate To The Sign In Page
        Homepage.Click On The Login Button

Accept All Cookies
    Common.Verify The Cookies Modal Pops Up
    Common.Click On The Accept All Button
    

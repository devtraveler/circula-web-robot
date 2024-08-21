*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    String
Library    BuiltIn
Library    Collections
Library    OperatingSystem
Library    DateTime

# Common Folder
Variables   Resources/PageObjects/Common/Common.py
Resource    Resources/PageObjects/Common/Common.robot
Resource    CommonApp.robot
Resource    Resources/PageObjects/Common/Homepage.robot
Resource    Resources/PageObjects/Common/Utils.robot

# SignUpIn Module
Variables    Resources/PageObjects/SignUpInModule/SignUpIn.py
Resource    Resources/PageObjects/SignUpInModule/SignIn.robot
Resource    Resources/PageObjects/SignUpInModule/SignUp.robot
Resource    Resources/PageObjects/SignUpInModule/SignUpInApp.robot

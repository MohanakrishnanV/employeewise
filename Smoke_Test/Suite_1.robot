*** Settings ***
Library       SeleniumLibrary 
# Library       Selenium2Library
Resource      ../resource.robot   
Suite Setup   Set Screenshot Directory    LOGDIR/ScreenShots
Test Setup    Set Selenium Speed   0.3

*** Test Cases ***
Login_Logout
    LoginKW 
    Sleep    2
    LogoutKW
    Close Browser
    
My_Profile_Navigate
    LoginKW
    Click Element    ${myprofile_element}
    Sleep    2   
    LogoutKW 
    Close Browser
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}         https://www.myemploywise.com/asperm/servlet/ggs.erm.servlet.setup3.LoginS?customer_code=excelencia    
${username}    ECPL0530
${Password}    excelencia

# Web Elements
${myprofile_element}    //div[@id='my_profile']//a[@href='javascript:openme()'][normalize-space()='My Profile']
${user-name-feild}    id=User_Name
${password-feild}    id=Password
${login-button}    //input[@value='LOGIN']
${logout-button}    //a[normalize-space()='Log out']
${peopleListMenu}    //a[@id='peopleListMenu']
${Company Directory}    //a[normalize-space()='Company Directory']
${Next}    //span[normalize-space()='Next >>']

# Assertions Data
${profile-name}    Mohana krishnan Vijaya kumar


*** Keywords ***
LoginKW
    Open Browser      ${url}      Chrome
    Maximize Browser Window
    Input Text        ${user-name-feild}    ${username}
    Input Password    ${password-feild}     ${Password}
    Click Element     ${login-button}
LogoutKW
    Click Element    ${logout-button}
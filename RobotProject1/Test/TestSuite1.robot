*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log  I am inside Test Suite SetUp
Suite Teardown    Log  I am inside Test Suite Teardown
Test Setup    Log  I am inside Test Setup
Test Teardown    Log  I am inside Test Teardown

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]   smoke
    Log    Hello World...    
    
MySecondTest
    Log  I am inside 2nd test
    Set Tags    regression1
    #Remove Tags    regression1
    
MyThirdTest
    Log  I am inside 3rd test
    

    
FirstSeleniumTest
    Open Browser    https://www.google.com.tw/  chrome
    Set Browser Implicit Wait    5
    Input Text      name=q                      automation
    Press Keys      name=q                      ENTER
    #Click Button    name=btnK    
    Sleep    2    
    Close Browser    
    Log    Test Completed    
    
SimpleLoginTest
    Open Browser    ${URL}  chrome
    #Input Text      id=Login1_UserName     @{CREDENTIALS}[0]
    #Input Password  id=Login1_Password     @{LOGINDATA}[0]
    #Click Button    id=Login1_OkButton  
    LoginKW  
    Sleep    2    
    Click Button    id=ctl00_LoginStatus1    
    Close Browser
    Log    TestCompleted   
   
    


*** Variables ***
${URL}  http://10.10.10.101/PXMART/Login.aspx
@{CREDENTIALS}  sophiahu
@{LOGINDATA}   hyweb 


*** Keywords ***
LoginKW
    Input Text    id=Login1_UserName    @{CREDENTIALS}  
    Input Password    id=Login1_Password    @{LOGINDATA}    
    Click Button    id=Login1_OkButton    
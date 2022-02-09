*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1 Multiple Tab
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url=https://www.db4free.net/.    browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   #Click Element    xpath=//a[@target='_blank']
   Click Element    xpath=//b[contains(text(),'php')]
   Switch Window    phpMyAdmin
   Input Text    id=input_username    db123
   Input Password    id=input_password    test123
   Click Element    id=input_go
   Close Window
   Switch Window    db4free.net - MySQL Database for free
   Click Element    xpath=//a[text()='Donations']
   Input Text    id=form_amount    -90
   Select From List By Label    id=form_currency    JPY
   Click Element    name=submit
   Close Browser


TC2 Multiple Tab
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url=https://www.db4free.net/.    browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   #Click Element    xpath=//a[@target='_blank']
   Click Element    xpath=//b[contains(text(),'php')]
   Switch Window    NEW
   Input Text    id=input_username    db123
   Input Password    id=input_password    test123
   Click Element    id=input_go
   Close Window
   Switch Window    MAIN
   Click Element    xpath=//a[text()='Donations']
   Input Text    id=form_amount    -90
   Select From List By Label    id=form_currency    JPY
   Click Element    name=submit
   Close Browser

*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url=https://www.medibuddy.in/   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   Click Element    //a[text()='For Employer']
   Switch Window    MediBuddy LaunchPad
   Click Element    link=Sign up
   Input Text    id=name    admin
   Input Text    id=email    admin@gmail.com
   Input Text    id=companyName    cs@ltts.com
   Input Text    id=mobileNumber    9876543210
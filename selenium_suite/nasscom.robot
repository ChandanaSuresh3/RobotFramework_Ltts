*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url=https://nasscom.in/about-us/career   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   #Click Element    xpath=//a[text()=' New User ']
   #Click Element    xpath=//a[contains(text()='New')]
   Click Element    partial link= New User
   Input Text    id=edit-field-fname-reg   admin
   Input Text    id=edit-field-lname    pass
   Input Text    id=edit-mail    admin@gmail.com
   Input Text    id=edit-field-company-name-registration    Google
   #Click Element    xpath=//select[@id='edit-field-business-focus-reg']/option[@value='51']
   Select From List By Label    id=edit-field-business-focus-reg    IT Consulting
   #Input Text    id=edit-captcha-response
   Click Element    id=edit-submit--2
   Close Browser


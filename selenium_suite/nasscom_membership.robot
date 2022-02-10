*** Comments ***
1. Navigate https://nasscom.in/nasscom-membership
2. Click radio button Institutional Members
3. Check Education and Training
4. Check Telecom Services
5. click Calculate Membership Fee
6. get the alert text and print in the console
7. handle the alert box

*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url=https://nasscom.in/nasscom-membership   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   Click Element    xpath=//label[text()='Institutional Members ']
   Click Element    xpath=//label[text()='Education and Training ']
   Click Element    xpath=//label[text()='Telecom Services ']
   Click Element    xpath=//a[text()='Calculate Membership Fee']
   ${alert_text}   Handle Alert     action=ACCEPT
   Log To Console    ${alert_text}
   Close Browser
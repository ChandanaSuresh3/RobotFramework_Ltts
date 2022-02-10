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
   #Click Element    xpath=//label[text()='Institutional Members ']
   Select Radio Button    field_membership_type[und]    1203
   #Click Element    xpath=//label[text()='Education and Training ']
   Select Checkbox    id=edit-field-business-focus-inst-und-966
   #Click Element    xpath=//label[text()='Telecom Services ']
   Select Checkbox    id=edit-field-business-focus-inst-und-970
   #Click Element    xpath=//a[text()='Calculate Membership Fee']
   Click Element    link=Calculate Membership Fee
   ${alert_text}   Handle Alert     action=LEAVE
   Log To Console    ${alert_text}
   
   Alert Should Be Present    Please enter amount in digit and greater than zero.   action=ACCEPT

   Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload    file_path=C:\\Users\\Chandhana\\OneDrive\\Desktop\\CS Docs\\aadhar acknowledge.pdf
   
   Sleep    25s
   Close Browser
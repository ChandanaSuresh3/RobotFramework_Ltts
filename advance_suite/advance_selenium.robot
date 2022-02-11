*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url=https://google.com/   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   ${listcount}     Get Element Count    tag=a
   Log To Console    ${listcount}

   @{elements}      Get WebElements    tag=a
   
   #${text}      Get Text    ${elements}[0]
   #Log To Console    ${text}

   FOR    ${i}    IN RANGE    0    ${listcount}    1
   ${text}      Get Text    ${elements}[${i}]
   Log To Console    ${text}

   Run Keyword If    '${text}'=='Images'    Click Element       ${elements}[${i}]
   Exit For Loop If    '${text}'=='Images'
   END

   FOR    ${i}    IN RANGE    0    ${listcount}    1
   ${text}      Get Text    ${elements}[${i}]
   Log To Console    ${text}

   Run Keyword If    '${text}'=='About'    Click Element       ${elements}[${i}]
   Exit For Loop If    '${text}'=='About'
   END

#   IF    '${text}'=='Images'
#               Click Element       ${elements}[${i}]
#                Exit For Loop
#   END

TC2
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url=https://google.com/   browser=chrome
   #Set Window Size    600    800
   Set Selenium Implicit Wait    5s
   ${width}     ${height}   Get Window Size
   Log To Console    ${width}
   Log To Console    ${height}

TC3 Mouse Test
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url=https://nasscom.in/   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   Mouse Down    xpath=//a[text()='Membership']
   Click Element    xpath=//a[text()='Members Listing']

TC4
   Append To Environment Variable   path      ${EXECDIR}\\drivers
   Open Browser  url=https://demo.openemr.io/b/openemr/index.php    browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   Input Text    id=authUser   admin
   Input Password    id=clearPass    pass
   Select From List By Label    name=languageChoice     English (Indian)
   #Click Element    class=btn
   Click Element    xpath=//button[@type='submit']
   ${title}     Get Title
   Log To Console    ${title}
   Title Should Be    OpenEMR
   
   Mouse Down    xpath=//div[@id='username']
   Click Element    xpath=//li[text()='Logout']

   Close Browser
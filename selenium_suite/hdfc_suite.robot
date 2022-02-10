*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url=https://netbanking.hdfcbank.com/netbanking/   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s

   Comment      switching to frame
   Select Frame    xpath=//frame[@name='login_page']

   Input Text    name=fldLoginUserId    john

   Comment      click on continue
   Click Element    link=CONTINUE

   Comment      switch to main url
   Unselect Frame


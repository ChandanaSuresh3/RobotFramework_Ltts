*** Settings ***
Library     SeleniumLibrary
Library    String

*** Test Cases ***
TC1
    Set Local Variable    ${val1}   $120,000,00
    ${val2}     Set Variable    $90,000,00

    ${val1}     Remove String   ${val1}     $   ,
    Log To Console    ${val1}
    ${val2}     Remove String   ${val2}     $   ,
    Log To Console    ${val2}

    ${num1}     Convert To Integer    ${val1}
    ${num2}     Convert To Number    ${val2}

    ${res}      Evaluate    ${val1}+${val2}
    Log To Console    ${res}

TC2
    Set Local Variable    ${email}      chan@gmail.com
    
    @{list}     Split String    ${email}    @
    Log To Console    ${list}
    Log To Console    ${list}[0]
    
    ${name}     Convert To Upper Case    ${list}[0]
    Log To Console    ${name}


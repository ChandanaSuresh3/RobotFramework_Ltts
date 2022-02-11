*** Settings ***
Library     OperatingSystem

*** Test Cases ***
TC1
    File Should Exist    ${EXECDIR}${/}demo.txt
    Log To Console    ${EXECDIR}${/}demo.txt

    #to read the file
    ${output}   Get Binary File    ${EXECDIR}${/}demo.txt
    Log To Console    ${output}
    Log    ${output}

    #copying the file
    Copy File    ${EXECDIR}${/}demo.txt    ${EXECDIR}${/}demo_new.txt

    #delete the file
    Remove File    ${EXECDIR}${/}demo_new.txt


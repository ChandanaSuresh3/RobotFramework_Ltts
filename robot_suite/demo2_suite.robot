*** Variables ***
${MY_NAME}      Chandana Suresh
@{COLORS}   red     green   yellow  black   blue
&{EMPLOYEE1}    empid=101   empname=chandu  age=23
&{PERSONAL_DETAIL}      fname=Chandana     lname=Suresh     mobile=9876543210

*** Test Cases ***
TC1
    Log To Console    ${EXECDIR}
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}${/}drivers${/}chromedriver.exe
    Log To Console    ${SUITE_NAME}
    Log To Console    ${TEST_NAME}
    Log To Console    ${TEMPDIR}
    Log To Console    ${MY_NAME}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]

TC2
    ${count}    Get Length    ${COLORS}
    Log To Console    ${count}

    FOR    ${i}   IN RANGE    0    ${count}    1
        Log To Console   ${COLORS}[${i}]

    END

TC3
    FOR    ${color}    IN    @{COLORS}
        Log To Console   ${color}
         
    END   

TC4
    Log To Console    ${EMPLOYEE1}
    Log To Console    ${EMPLOYEE1}[empname]
    Log To Console    The employee age is  ${EMPLOYEE1}[age]
    Log To Console    ${EMPLOYEE1}
    Log To Console    ${COLORS}

TC5
    Log To Console    ${PERSONAL_DETAIL}[fname]
    Log To Console    ${PERSONAL_DETAIL}[lname]
    Log To Console    ${PERSONAL_DETAIL}[mobile]
    Log To Console    ${PERSONAL_DETAIL}

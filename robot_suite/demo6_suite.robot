*** Settings ***
Library     ../python_code/calculator.py

*** Test Cases ***
TC1
    ${res}  Add    50    56
    Log To Console    ${res}

    ${res}  Sub    45    23
    Log To Console    ${res}



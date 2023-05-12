*** Settings ***
Documentation    Hello world test
Library     OperatingSystem

*** Variables ***
${MESSAGE}    Hello World ! 


*** Keywords ***
My keyword
    [Arguments]     ${path}
    Directory Should Exist    ${path}

*** Test Cases ***

Hello Test 
    [Documentation]    Hello Worl test
    Log    ${MESSAGE}
    My Keyword  ${CURDIR}

Another Test
    Should Be Equal    ${MESSAGE}    Hello World !
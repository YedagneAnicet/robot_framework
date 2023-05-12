*** Setting ***

Library   SeleniumLibrary

*** Variables ***

${UserName}  amitb

${Password}  amitb

*** Keywords ***

Open Mercury Tours with Chrome

    Open Browser    http://newtours.demoaut.com/    chrome

    Wait Until Page Contains   Registered users can sign-in

Login to Mercury Tours

    Input Text   name:userName   ${UserName}

    Input Text   name:password   ${Password}

    Click Element   name:login

*** Test Cases ***

TestCase1: Login Mercury Tours

    [Documentation]  This test case is to login to mercury tour website

    [Tags]  Smoke,Sanity

    [Setup]

        Open Mercury Tours with Chrome

        Login to Mercury Tours

    [Teardown]

        Close Browser
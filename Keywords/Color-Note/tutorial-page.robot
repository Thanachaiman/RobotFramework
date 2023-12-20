*** Settings ***
Library     AppiumLibrary


*** Variables ***
${btn_skip}             id=com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip
${default_timeout}      5000ms


*** Keywords ***
Click Skip Button For Delete Action
    ${element_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${btn_skip}
    IF    '${element_visible}' == 'True'
        Click Element    ${btn_skip}
    ELSE
        Log    Element is not visible on the page
    END

Click Skip Button
    Wait Until Element Is Visible
    ...    ${btn_skip}
    ...    timeout=${default_timeout}

    Click Element    ${btn_skip}

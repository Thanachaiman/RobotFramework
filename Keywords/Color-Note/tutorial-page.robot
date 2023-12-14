*** Variables ***
${btn_skip}             id=com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip
${default_timeout}      5000ms


*** Keywords ***
Click Skip Button
    Wait Until Element Is Visible
    ...    ${btn_skip}
    ...    timeout=${default_timeout}
    Click Element    ${btn_skip}

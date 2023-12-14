*** Variables ***
${default_timeout}          5000ms
${btn_plus_icon}            id=com.socialnmobile.dictapps.notepad.color.note:id/main_btn1
${btn_add_text}             id=com.socialnmobile.dictapps.notepad.color.note:id/main_btn1
${btn_hamburger_icon}       id=com.socialnmobile.dictapps.notepad.color.note:id/icon_nav


*** Keywords ***
Click plus icon button
    Wait Until Element Is Visible    ${btn_plus_icon}    timeout=${default_timeout}
    Click Element    ${btn_plus_icon}

Click add text button
    Wait Until Element Is Visible    ${btn_add_text}    timeout=${default_timeout}
    Click Element    ${btn_add_text}

Click hamburger icon
    Wait Until Element Is Visible    ${btn_hamburger_icon}    timeout=${default_timeout}
    Click Element    ${btn_hamburger_icon}

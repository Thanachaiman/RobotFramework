*** Variables ***
${btn_alert}            xpath://*[@id="HTML9"]/div[1]/button[1]
${btn_confirm_box }     xpath://*[@id="HTML9"]/div[1]/button[2]
${btn_prompt}           xpath://*[@id="HTML9"]/div[1]/button[3]
${path_txt_alert}       xpath://*[@id="demo"]


*** Keywords ***
Click Alert Button
    Click Element    ${btn_alert}

Verify Alert Should Be Present
    Alert Should Be Present    I am an alert box!

Click Confirm Box Button
    Click Element    ${btn_confirm_box}

Verify Confirm Box Should Be Present
    Alert Should Be Present    Press a button!

Click Confirm In Alert
    Handle Alert    accept

Click Dismiss In Alert
    Handle Alert    action=DISMISS

Verify Text You pressed OK! should be visible
    Element Should Contain    ${path_txt_alert}    You pressed OK!

Verify Text You pressed Cancel! should be visible
    Element Should Contain    ${path_txt_alert}    You pressed Cancel!

Click Prompt Button
    Click Element    ${btn_prompt}

Input ${text} Into Alerts
    Input Text Into Alert    ${text}

Input ${text} Into Alerts And Select DISMISS
    Input Text Into Alert    ${text}    action=DISMISS

Verify Text Hello ${text}! How are you today? should be visible
    Element Should Contain    ${path_txt_alert}    Hello ${text}! How are you today?

Verify Text User cancelled the prompt. should be visible
    Element Should Contain    ${path_txt_alert}    User cancelled the prompt.

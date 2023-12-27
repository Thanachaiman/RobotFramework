*** Variables ***
${btn_new_browser_window}       xpath://*[@id="HTML4"]/div[1]/button
${path_img_element}             xpath://*[@id="logo"]/a/img


*** Keywords ***
Click New Windows Browser button
    Click Element    ${btn_new_browser_window}
    Sleep    3s

Verify New Browser Is Opened
    ${handles} =    Get Window Handles
    ${new_window} =    Set Variable    ${handles}[1]    # Assuming the new window handle is the second in the list
    Switch Window    ${new_window}
    Wait until page contains element    ${path_img_element}
    Page Should Contain Element    ${path_img_element}

Switch browser to browser ${browser_number}
    ${handles} =    Get Window Handles
    ${new_window} =    Set Variable    ${handles}[${browser_number}]
    Switch Window    ${new_window}

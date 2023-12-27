*** Variables ***
${path_txt_field1}      xpath://*[@id="field1"]
${path_txt_field2}      xpath://*[@id="field2"]
${btn_copy_text}        xpath://*[@id="HTML10"]/div[1]/button


*** Keywords ***
Clear Text Form Field1
    Clear Element Text    ${path_txt_field1}

Input ${text} Into Field1
    Input Text    ${path_txt_field1}    ${text}

Double Click on Copy Text Button
    Double Click Element    ${btn_copy_text}

Verify text text from Field1 copied into Field2.
    ${expected_text}=    Get Text    ${path_txt_field1}
    ${actual_text}=    Get Text    ${path_txt_field2}
    Should Be Equal    ${expected_text}    ${actual_text}

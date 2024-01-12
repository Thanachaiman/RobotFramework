*** Variables ***
${default_timeout}              5000ms
${search_field}                 accessibility_id=Search
${search_field_when_click}      xpath=//XCUIElementTypeSearchField[@name="Search"]
${search_button_on_keyboard}    xpath=//XCUIElementTypeButton[@name="Search"]
${cross_icon}                   accessibility_id=Clear text


*** Keywords ***
Verify that the page is successfully visible.
    Text Should Be Visible    Table Search

Input text in search field with ${value}
    Wait Until Element Is Visible    ${search_field}    ${default_timeout}
    Click Element    ${search_field}
    Wait Until Element Is Visible    ${search_field_when_click}    timeout=5000ms
    Input Text    ${search_field_when_click}    ${value}

Click search button on keyboard
    Wait Until Element Is Visible    ${search_button_on_keyboard}    timeout=5000ms
    Click Element    ${search_button_on_keyboard}

Verify that the @{result_value} and @{not_result_value} of ${search_value} are relevant to the search query.
    Sleep    2S
    FOR    ${value}    IN    @{result_value}
        Text Should Be Visible    ${value}
    END
    FOR    ${value}    IN    @{not_result_value}
        Text Should Be Not Visible    ${value}
    END

Clear text in search field
    Wait Until Element Is Visible    ${search_field}    timeout=5000ms
    Click Element    ${search_field}
    Wait Until Element Is Visible    ${cross_icon}    timeout=5000ms
    Click Element    ${cross_icon}

Verify that the text is cleared.
    Element Should Contain Text    ${search_field_when_click}

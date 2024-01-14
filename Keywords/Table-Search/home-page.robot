*** Variables ***
${default_timeout}              5000ms
${search_field}                 accessibility_id=Search
${search_field_when_click}      xpath=//XCUIElementTypeSearchField[@name="Search"]
${search_button_on_keyboard}    xpath=//XCUIElementTypeButton[@name="Search"]
${cross_icon}                   accessibility_id=Clear text
${btn_cancle}                   xpath=//XCUIElementTypeButton[@name="Cancel"]


*** Keywords ***
Verify home page is successfully visible.
    Text Should Be Visible    Table Search

Input text in search field with ${value}
    Wait Until Element Is Visible    ${search_field}    ${default_timeout}
    Click Element    ${search_field}
    Wait Until Element Is Visible    ${search_field_when_click}    ${default_timeout}
    Input Text    ${search_field_when_click}    ${value}

Click search button on keyboard
    Wait Until Element Is Visible    ${search_button_on_keyboard}    ${default_timeout}
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
    Wait Until Element Is Visible    ${search_field}    ${default_timeout}
    Click Element    ${search_field}
    Wait Until Element Is Visible    ${cross_icon}    ${default_timeout}
    Click Element    ${cross_icon}

Verify that the text is cleared.
    ${element_value} =    Get Text    ${search_field_when_click}
    Element Text Should Be    ${search_field_when_click}    Search

Click Cancel button
    Wait Until Element Is Visible    ${btn_cancle}    ${default_timeout}
    Click Element    ${btn_cancle}

Verify year and price of ${item} is &{item_data}
    Page Should Contain Text    ${item_data}[year]
    Page Should Contain Text    ${item_data}[price]

Open detail of ${value}
    Click Text    ${value}

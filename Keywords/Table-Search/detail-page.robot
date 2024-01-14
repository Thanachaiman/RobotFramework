*** Variables ***
${default_timeout}      5000ms


*** Keywords ***
Verify detail page of ${item} is successfully visible
    Page Should Contain Text    ${item}

Click on back button
    Wait Until Element Is Visible    accessibility_id=Table Search    timeout=5000ms
    Click Element    accessibility_id=Table Search

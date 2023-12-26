*** Variables ***
${path_search_input}        xpath://*[@id="Wikipedia1_wikipedia-search-input"]
${btn_search}               xpath://*[@id="Wikipedia1_wikipedia-search-form"]/div/span[2]/span[2]/input
${path_search_result}       xpath://*[@id="Wikipedia1_wikipedia-search-results"]
${path_txt_result}          xpath://*[@id="wikipedia-search-result-link"]/a


*** Keywords ***
Search with ${data}
    Input Text    ${path_search_input}    ${data}
    Click Element    ${btn_search}

Verify Please enter text to search is visible
    Page Should Contain    Please enter text to search.

Verify search result of search is visible
    Wait Until Element Is Visible    ${path_search_result}
    Element Should Be Visible    ${path_search_result}

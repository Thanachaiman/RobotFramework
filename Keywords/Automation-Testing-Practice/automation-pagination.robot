*** Variables ***
${path_pagination_page1}    //*[@id="pagination"]/li[1]/a


*** Keywords ***
Verify pageination is default
    Page Should Contain    Product 1
    Wait until page contains element    ${path_pagination_page1}\[contains(@class, "active")]

Chage pagination to page ${number_of_page}
    Click Element    xpath://*[@id="pagination"]/li[${number_of_page}]/a

Verify pagination is page ${number_of_page}
    ${number1}    Set Variable    5
    ${result}    Evaluate    ${number_of_page} * ${number1}
    Page Should Contain    Product ${result}

Select check box @{check_box} of page ${page}
    FOR    ${check_box_number}    IN    @{check_box}
        Click Element    xpath://*[@id="productTable"]/tbody/tr[${check_box_number}]/td[4]/input
    END

Verify check box @{check_box} of page ${page} should selected
    FOR    ${check_box_number}    IN    @{check_box}
        Checkbox Should Be Selected    xpath://*[@id="productTable"]/tbody/tr[${check_box_number}]/td[4]/input
    END

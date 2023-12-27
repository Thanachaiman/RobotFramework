*** Variables ***
${default_timeout}              5s

&{default_web_path}             name=xpath://*[@id="name"]
...                             email=xpath://*[@id="email"]
...                             phone=xpath://*[@id="phone"]
...                             address=xpath://*[@id="textarea"]

${group_gender}                 gender

${path_drop_down_country}       xpath://*[@id="country"]
${path_txt_title}               xpath://*[@id="header-inner"]/div[1]/h1
${path_color_option}            xpath://*[@id="colors"]
${path_date_selecter}           xpath://*[@id="datepicker"]
${path_orange_hrm_hyperlink}    xpath://*[@id="post-body-1307673142697428135"]/a[2]
${path_open_cart_hyperlink}     xpath://*[@id="post-body-1307673142697428135"]/a[1]
${path_home_hyperlink}          xpath://*[@id="blog-pager"]/a
${txt_title}                    Automation Testing Practice


*** Keywords ***
Verify that the page is successfully visible.
    Element Should Be Visible    ${path_txt_title}

Enter name with ${name}
    Input Text    ${default_web_path}[name]    ${name}

Verify name is ${name}
    ${actual_text}=    Get Value    ${default_web_path}[name]
    Should Be Equal As Strings    ${actual_text}    ${name}

Enter email with ${email}
    Input Text    ${default_web_path}[email]    ${email}

Verify email is ${email}
    ${actual_text}=    Get Value    ${default_web_path}[email]
    Should Be Equal As Strings    ${actual_text}    ${email}

Enter phone with ${phone}
    Input Text    ${default_web_path}[phone]    ${phone}

Verify phone is ${phone}
    ${actual_text}=    Get Value    ${default_web_path}[phone]
    Should Be Equal As Strings    ${actual_text}    ${phone}

Enter address with ${address}
    Input Text    ${default_web_path}[address]    ${address}

Verify address is ${address}
    ${actual_text}=    Get Value    ${default_web_path}[address]
    Should Be Equal As Strings    ${actual_text}    ${address}

Select gender with ${gender}
    Select Radio Button    ${group_gender}    ${gender}

Verify ${gender} is selected
    Radio Button Should Be Set To    ${group_gender}    ${gender}

Select check days with @{days}
    FOR    ${day}    IN    @{days}
        Select Checkbox    xpath://*[@id="${day}"]
    END

Verify checkbox should be selected @{days}
    FOR    ${day}    IN    @{days}
        Checkbox Should Be Selected    xpath://*[@id="${day}"]
    END

Select country with ${country}
    Select From List by Value
    ...    ${path_drop_down_country}
    ...    ${country}

Verify selected country is ${country}
    List Selection Should Be    ${path_drop_down_country}    ${country}

Select color with ${color}
    Select From List by Value
    ...    ${path_color_option}
    ...    ${color}

Verify selected color is ${color}
    List Selection Should Be    ${path_color_option}    ${color}

Enter date with ${date}
    Input Text    ${path_date_selecter}    ${date}

Verify date is ${date}
    ${actual_text}=    Get Value    ${path_date_selecter}
    Should Be Equal As Strings    ${actual_text}    ${date}

Click link open cart
    Click Element    ${path_open_cart_hyperlink}

Verify url open cart
    Location Should Be    https://demo.opencart.com/

Click link orange HRM
    Click Element    ${path_open_cart_hyperlink}

Verify url orange HRM
    Location Should Be    https://demo.opencart.com/

Click hyperlink home
    Click element    ${path_home_hyperlink}

Verify data is clear
    ${actual_text}=    Get Value    ${default_web_path}[name]
    Should Be Equal As Strings    ${actual_text}    ${EMPTY}
    ${actual_text}=    Get Value    ${path_date_selecter}
    Should Be Equal As Strings    ${actual_text}    ${EMPTY}

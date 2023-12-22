*** Variables ***
&{sign_up_page_user_data_path}                              username=xpath://*[@id="name"]
...                                                         password=xpath://*[@id="password"]
...                                                         first_name=xpath://*[@id="first_name"]
...                                                         last_name=xpath://*[@id="last_name"]
...                                                         company=xpath://*[@id="company"]
...                                                         address1=xpath://*[@id="address1"]
...                                                         address2=xpath://*[@id="address2"]
...                                                         state=xpath://*[@id="state"]
...                                                         city=xpath://*[@id="city"]
...                                                         zibcode=xpath://*[@id="zipcode"]
...                                                         mobile_number=xpath://*[@id="mobile_number"]
...                                                         drop_down_date=xpath://*[@id="days"]
...                                                         drop_down_month= xpath://*[@id="months"]
...                                                         drop_down_year=xpath://*[@id="years"]
...                                                         drop_down_country=xpath://*[@id="country"]

${default_timeout}                                          5000ms
${title_sign_up_page}                                       xpath://*[@id="form"]/div/div/div/div/h2/b
${radio_btn_title}                                          xpath://*[@id="id_gender1"]
${account_created_title}                                    xpath://*[@id="form"]/div/div/div/h2/b
${btn_conntinue}                                            xpath://*[@id="form"]/div/div/div/div/a
${txt_login_as_username}                                    xpath://*[@id="header"]/div/div/div/div[2]/div/ul/li[10]
# ...

${check_box_Sign_up_for_our_newsletter!}                    xpath://*[@id="newsletter"]
${check_box_Receive_special_offers_from_our_partners!}      xpath://*[@id="optin"]
${btn_create_account}                                       xpath://*[@id="form"]/div/div/div/div/form/button

${url}                                                      https://automationexercise.com


*** Keywords ***
Verify 'ENTER ACCOUNT INFORMATION' is visible
    Wait Until Element Is Visible    ${title_sign_up_page}    timeout=${default_timeout}
    Element Text Should Be    ${title_sign_up_page}    ENTER ACCOUNT INFORMATION

Fill details data with: &{user_data}
    Click Element    ${user_data}[title]
    Clear Element Text    ${sign_up_page_user_data_path}[username]
    Input Text    ${sign_up_page_user_data_path}[username]    ${user_data}[name]
    Input Text    ${sign_up_page_user_data_path}[password]    ${user_data}[password]
    Select From List by Value    ${sign_up_page_user_data_path}[drop_down_date]    ${user_data}[date]
    Select From List by Value    ${sign_up_page_user_data_path}[drop_down_month]    ${user_data}[month]
    Select From List by Value    ${sign_up_page_user_data_path}[drop_down_year]    ${user_data}[year]

Select checkbox 'Sign up for our newsletter!
    Click Element    ${check_box_Sign_up_for_our_newsletter!}

Select checkbox 'Receive special offers from our partners!
    Click Element    ${check_box_Receive_special_offers_from_our_partners!}

Fill details address with: &{user_data}
    Input Text    ${sign_up_page_user_data_path}[first_name]    ${user_data}[first_name]
    Input Text    ${sign_up_page_user_data_path}[last_name]    ${user_data}[last_name]
    Input Text    ${sign_up_page_user_data_path}[company]    ${user_data}[company]
    Input Text    ${sign_up_page_user_data_path}[address1]    ${user_data}[address1]
    Input Text    ${sign_up_page_user_data_path}[address2]    ${user_data}[address2]
    Input Text    ${sign_up_page_user_data_path}[state]    ${user_data}[state]
    Input Text    ${sign_up_page_user_data_path}[city]    ${user_data}[city]
    Input Text    ${sign_up_page_user_data_path}[zibcode]    ${user_data}[zipcode]
    Input Text    ${sign_up_page_user_data_path}[mobile_number]    ${user_data}[mobile_number]
    Select From List by Value
    ...    ${sign_up_page_user_data_path}[drop_down_country]
    ...    ${user_data}[country]

Click 'Create Account button
    Click Element    ${btn_create_account}

Verify that 'ACCOUNT CREATED!' is visible
    Page Should Contain    ACCOUNT CREATED!

Click 'Continue' button
    Click Element    ${btn_conntinue}

Verify that 'Logged in as ${username}' is visible
    Element Text Should Be
    ...    ${txt_login_as_username}
    ...    Logged in as ${username}

Register USING API &{user_data}
    Create Session    placeholder    ${url}
    &{params}=    Create dictionary    name=${user_data}[username]
    ...    email=tang@gmail.comtangkung
    ...    password=${user_data}[password]
    ...    title=Mr
    ...    birth_date=${user_data}[date]
    ...    birth_month=${user_data}[month]
    ...    birth_year=${user_data}[year]
    ...    firstname=${user_data}[first_name]
    ...    lastname=${user_data}[last_name]
    ...    company=${user_data}[company]
    ...    address1=${user_data}[address1]
    ...    address2=${user_data}[address2]
    ...    country=${user_data}[country]
    ...    zipcode=${user_data}[zipcode]
    ...    state=${user_data}[state]
    ...    city=${user_data}[city]
    ...    mobile_number=${user_data}[mobile_number]
    ${response}=    Post on session    placeholder    /api/createAccount    data=${params}
    should be equal    ${response.status_code}    ${200}
    Log many    ${response}

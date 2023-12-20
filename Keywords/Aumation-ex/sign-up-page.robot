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

&{sign_up_page_user_data}                                   username=thanachai
...                                                         password=password
...                                                         first_name=firstname
...                                                         last_name=lastname
...                                                         company=company
...                                                         address1=address
...                                                         address2=address2
...                                                         state=state
...                                                         city=city
...                                                         zipcode=10000
...                                                         mobile_number=0829269788
...                                                         date=1
...                                                         month=1
...                                                         year=2001
...                                                         country=Canada

${default_timeout}                                          5000ms
${title_sign_up_page}                                       xpath://*[@id="form"]/div/div/div/div/h2/b
${radio_btn_title}                                          xpath://*[@id="id_gender1"]
${account_created_title}                                    xpath://*[@id="form"]/div/div/div/h2/b
${btn_conntinue}                                            xpath://*[@id="form"]/div/div/div/div/a

# ...

${check_box_Sign_up_for_our_newsletter!}                    xpath://*[@id="newsletter"]
${check_box_Receive_special_offers_from_our_partners!}      xpath://*[@id="optin"]
${btn_create_account}                                       xpath://*[@id="form"]/div/div/div/div/form/button


*** Keywords ***
Verify 'ENTER ACCOUNT INFORMATION' is visible
    Wait Until Element Is Visible    ${title_sign_up_page}    timeout=${default_timeout}
    Element Text Should Be    ${title_sign_up_page}    ENTER ACCOUNT INFORMATION

Fill details: Title, Name, Email, Password, Date of birth
    Click Element    ${radio_btn_title}
    Clear Element Text    ${sign_up_page_user_data_path}[username]
    Input Text    ${sign_up_page_user_data_path}[username]    ${sign_up_page_user_data}[username]
    Input Text    ${sign_up_page_user_data_path}[password]    ${sign_up_page_user_data}[password]
    Select From List by Value    ${sign_up_page_user_data_path}[drop_down_date]    ${sign_up_page_user_data}[date]
    Select From List by Value    ${sign_up_page_user_data_path}[drop_down_month]    ${sign_up_page_user_data}[month]
    Select From List by Value    ${sign_up_page_user_data_path}[drop_down_year]    ${sign_up_page_user_data}[year]

Select checkbox 'Sign up for our newsletter!
    Click Element    ${check_box_Sign_up_for_our_newsletter!}

Select checkbox 'Receive special offers from our partners!
    Click Element    ${check_box_Receive_special_offers_from_our_partners!}

Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Input Text    ${sign_up_page_user_data_path}[first_name]    ${sign_up_page_user_data}[first_name]
    Input Text    ${sign_up_page_user_data_path}[last_name]    ${sign_up_page_user_data}[last_name]
    Input Text    ${sign_up_page_user_data_path}[company]    ${sign_up_page_user_data}[company]
    Input Text    ${sign_up_page_user_data_path}[address1]    ${sign_up_page_user_data}[address1]
    Input Text    ${sign_up_page_user_data_path}[address2]    ${sign_up_page_user_data}[address2]
    Input Text    ${sign_up_page_user_data_path}[state]    ${sign_up_page_user_data}[state]
    Input Text    ${sign_up_page_user_data_path}[city]    ${sign_up_page_user_data}[city]
    Input Text    ${sign_up_page_user_data_path}[zibcode]    ${sign_up_page_user_data}[zipcode]
    Input Text    ${sign_up_page_user_data_path}[mobile_number]    ${sign_up_page_user_data}[mobile_number]
    Select From List by Value
    ...    ${sign_up_page_user_data_path}[drop_down_country]
    ...    ${sign_up_page_user_data}[country]

Click 'Create Account button
    Click Element    ${btn_create_account}

Verify that 'ACCOUNT CREATED!' is visible
    Page Should Contain    ACCOUNT CREATED!

Click 'Continue' button
    Click Element    ${btn_conntinue}

Verify that 'Logged in as username' is visible
    Wait Until Page Contains    ${sign_up_page_user_data}[username]    ${default_timeout}

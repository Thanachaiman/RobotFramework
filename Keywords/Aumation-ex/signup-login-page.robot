*** Variables ***
${default_timeout}              5000ms

${txt_Login_to_your_account}    xpath://*[@id="form"]/div/div/div[1]/div/h2
${txt_New_User_Signup!}         xpath://*[@id="form"]/div/div/div[3]/div/h2
${txt_field_name_signup}        xpath://*[@id="form"]/div/div/div[3]/div/form/input[2]
${txt_field_email_signup}       xpath://*[@id="form"]/div/div/div[3]/div/form/input[3]
${txt_field_name_login}         xpath://*[@id="form"]/div/div/div[1]/div/form/input[2]
${txt_field_email_login}        xpath://*[@id="form"]/div/div/div[1]/div/form/input[3]
${user_name}                    thanachai
${user_email}                   tang@gmail.comtangkung
${btn_login}                    xpath//*[@id="form"]/div/div/div[1]/div/form/button
${btn_signup}                   xpath://*[@id="form"]/div/div/div[3]/div/form/button


*** Keywords ***
Verify 'Login to your account' is visible
    Wait Until Element Is Visible    ${txt_Login_to_your_account}    timeout=${default_timeout}
    Element Text Should Be    ${txt_Login_to_your_account}    Login to your account

Verify 'New User Signup!' is visible
    Wait Until Element Is Visible    ${txt_New_User_Signup!}    timeout=${default_timeout}
    Element Text Should Be    ${txt_New_User_Signup!}    New User Signup!

Enter name
    Input Text    ${txt_field_name_signup}    ${user_name}

Enter email
    Input Text    ${txt_field_email_signup}    ${user_email}

Click 'Signup' button
    Wait Until Element Is Visible    ${btn_signup}    timeout=${default_timeout}
    Click Element    ${btn_signup}

Enter correct email address and password
    Input Text    ${txt_field_name_login}    ${user_name}
    Input Text    ${txt_field_email_login}    ${user_email}

Click 'login' button
    Click Element    ${btn_login}

# Verify that 'Logged in as username' is visible

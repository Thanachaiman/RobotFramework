*** Variables ***
${default_timeout}              5000ms
${page_title}                   Automation Exercise
${img_automation_exercise}      xpath://*[@id="header"]/div/div/div/div[1]/div/a/img

${btn_signup_login}             xpath://*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a


*** Keywords ***
Verify that home page is visible successfully
    Title Should be    ${page_title}
    Element Should Be Visible    ${img_automation_exercise}

Click on 'Signup / Login' button
    Wait Until Element Is Visible    ${btn_signup_login}    timeout=${default_timeout}
    Click Element    ${btn_signup_login}

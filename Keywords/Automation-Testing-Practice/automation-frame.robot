*** Variables ***
${default_timeout}          5s

&{default_frame_path}       name=xpath://*[@id="RESULT_TextField-0"]
...                         date=xpath://*[@id="RESULT_TextField-2"]
...                         job=xpath://*[@id="RESULT_RadioButton-3"]
...                         submit_btn=xpath://*[@id="FSsubmit"]
${frame_group_gender}       RESULT_RadioButton-1
${path_frame}               xpath:/html/body/div/div[3]


*** Keywords ***
Enter name in frame with ${name}
    Select Frame    frame-one796456169
    Input Text    ${default_frame_path}[name]    ${name}

Enter date in frame with ${date}
    Input Text    ${default_frame_path}[date]    ${date}

Select country in frame with ${job}
    Select From List by Value    ${default_frame_path}[job]    ${job}

Select gender in frame with ${gender}
    Click Element    xpath://*[@id="RESULT_RadioButton-1_${gender}"]

Click Submit Button In Frame
    Click Element    ${default_frame_path}[submit_btn]

Verify Text An error has occurred should be visible
    Element Should Be Visible    ${path_frame}

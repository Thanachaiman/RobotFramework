*** Variables ***
${txt_username}         id:txt-username
${txt_field}            id=com.socialnmobile.dictapps.notepad.color.note:id/edit_note
${anime_name_note}      Naruto Dragon Ball Attack on titan

${default_timeout}      5000ms
${txt_note_area}        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.TextView
${txt_note_title}       id=com.socialnmobile.dictapps.notepad.color.note:id/edit_title
${btn_menu}             accessibility_id=More
${btn_delete}           xpath=/hierarchy/android.widget.FrameLayout/
...                     android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[7]
...                     /android.widget.ImageView
${btn_ok}              id=android:id/button1


*** Keywords ***
Click text note area
    Wait Until Element Is Visible    ${txt_note_area}    timeout=${default_timeout}
    Click Element    ${txt_note_area}

Enter "${note_name}" note
    Wait Until Element Is Visible    ${txt_field}    timeout=${default_timeout}
    Input Text    ${txt_field}    ${note_name}

System displays note title as "${note_name}"
    Element Text Should Be
    ...    ${txt_note_title}
    ...    ${note_name}

System displays text in note as "${note_name}"
    Element Text Should Be
    ...    ${txt_note_title}
    ...    ${note_name}
    ...

Click menu ... btn
    Wait Until Element Is Visible    ${btn_menu}    timeout=${default_timeout}
    Click Element    ${btn_menu}

Click delete button
    Wait Until Element Is Visible    ${btn_delete}    timeout=${default_timeout}
    Click Element    ${btn_delete}

Click ok button in delete modal 
    Wait Until Element Is Visible    ${btn_ok}    timeout=${default_timeout}
    Click Element    ${btn_ok}

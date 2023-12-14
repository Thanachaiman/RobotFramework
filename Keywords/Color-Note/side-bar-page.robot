*** Variables ***
${default_timeout}      5000ms

${btn_trash_can}        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
...                     /android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout
...                     /b.k.a.a/android.widget.LinearLayout/android.widget.FrameLayout
...                     /android.widget.RelativeLayout/android.widget.ListView/
...                     android.widget.LinearLayout[4]/android.widget.TextView

${btn_add_text}         id=com.socialnmobile.dictapps.notepad.color.note:id/main_btn1


*** Keywords ***
Click trash can button
    Wait Until Element Is Visible    ${btn_trash_can}    timeout=${default_timeout}
    Click Element    ${btn_trash_can}

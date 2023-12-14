*** Settings ***
Library             AppiumLibrary
Variables           ../../desirecap/note-color-note.py

Suite Setup         open application    ${ximplerServerUrl}    udid=${desired_caps}[udid]
...                     platformName=${desired_caps}[platformName]
...                     platformVersion=${desired_caps}[platformVersion]
...                     app=${desired_caps}[app]
...                     deviceName=${desired_caps}[deviceName]
...                     automationName=${desired_caps}[automationName]
Suite Teardown      close application


*** Test Cases ***
Add Note
    # id=com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip
    Wait Until Element Is Visible
    ...    id=com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip
    ...    timeout=5000ms
    Click Element    id=com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip
    # id=com.socialnmobile.dictapps.notepad.color.note:id/main_btn1
    Wait Until Element Is Visible    id=com.socialnmobile.dictapps.notepad.color.note:id/main_btn1    timeout=5000ms
    Click Element    id=com.socialnmobile.dictapps.notepad.color.note:id/main_btn1
    # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.TextView
    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.TextView
    ...    timeout=5000ms
    Click Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.TextView
    # id=com.socialnmobile.dictapps.notepad.color.note:id/edit_note
    Wait Until Element Is Visible    id=com.socialnmobile.dictapps.notepad.color.note:id/edit_note    timeout=5000ms
    Input Text
    ...    id=com.socialnmobile.dictapps.notepad.color.note:id/edit_note
    ...    Naruto Dragon Ball Attack on titan
    Go Back
    Go Back
    Element Text Should Be
    ...    id=com.socialnmobile.dictapps.notepad.color.note:id/edit_title
    ...    Naruto Dragon Ball Attack on titan
    Element Text Should Be
    ...    id=com.socialnmobile.dictapps.notepad.color.note:id/view_note
    ...    Naruto Dragon Ball Attack on titan

Delete Note
    Wait Until Element Is Visible    accessibility_id=More    timeout=5000ms
    Click Element    accessibility_id=More
    # xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[7]/android.widget.ImageView
    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[7]/android.widget.ImageView
    ...    timeout=5000ms
    Click Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[7]/android.widget.ImageView
    # id=android:id/button1
    Wait Until Element Is Visible    id=android:id/button1    timeout=5000ms
    Click Element    id=android:id/button1
    # id=com.socialnmobile.dictapps.notepad.color.note:id/main_btn3
    Wait Until Element Is Visible    id=com.socialnmobile.dictapps.notepad.color.note:id/main_btn3    timeout=5000ms
    Wait Until Element Is Visible    id=com.socialnmobile.dictapps.notepad.color.note:id/icon_nav    timeout=5000ms
    Click Element    id=com.socialnmobile.dictapps.notepad.color.note:id/icon_nav
    # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/b.k.a.a/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.ImageView
    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/b.k.a.a/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView
    Click Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/b.k.a.a/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView

    Element Text Should Be
    ...    id=com.socialnmobile.dictapps.notepad.color.note:id/title
    ...    Naruto Dragon Ball Attack on titan

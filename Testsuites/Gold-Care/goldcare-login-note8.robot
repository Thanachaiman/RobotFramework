*** Settings ***
Library         AppiumLibrary
# Variables    ../desirecap/s11.py
Variables       ../desirecap/note.py
Library         SeleniumLibrary


*** Test Cases ***
Test
    Log To Console    Hello Donkey
    open application    ${ximplerServerUrl}    udid=${desired_caps}[udid]
    ...    platformName=${desired_caps}[platformName]
    ...    platformVersion=${desired_caps}[platformVersion]
    ...    app=${desired_caps}[app]
    ...    deviceName=${desired_caps}[deviceName]
    ...    automationName=${desired_caps}[automationName]

    Sleep    1s
    Swipe    1020    1147    53    1210
    Sleep    0.5s
    Swipe    1020    1147    53    1210
    Sleep    0.5s
    Swipe    1020    1147    53    1210

    Log To Console    Hello Donkey 2

    # accessibility_id=เริ่มต้นการใช้งาน
    Wait Until Element Is Visible    accessibility_id=เริ่มต้นการใช้งาน    timeout=5000ms
    Click Element    accessibility_id=เริ่มต้นการใช้งาน
    # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    ...    timeout=5000ms
    Click Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText
    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText
    ...    timeout=5000ms
    Input Text
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText
    ...    0999999991
    Go Back
    Tap    ${None}    205    1050
    # accessibility_id=เข้าสู่ระบบ
    Wait Until Element Is Visible    accessibility_id=เข้าสู่ระบบ    timeout=5000ms
    Click Element    accessibility_id=เข้าสู่ระบบ
    # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    ...    timeout=5000ms
    Input Text
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    ...    100010
    Sleep    1s
    Tap    ${None}    542    1411
    Sleep    1s

Test Home Bar
    Wait Until Element Is Visible    xpath=(//android.view.View[@content-desc="รายการที่แจ้ง"])[2]    timeout=5000ms
    Click Element    xpath=(//android.view.View[@content-desc="รายการที่แจ้ง"])[2]
    Element Should Be Visible    accessibility_id=รายการปัจจุบัน    แท็บที่ 1 จาก 2
    close application

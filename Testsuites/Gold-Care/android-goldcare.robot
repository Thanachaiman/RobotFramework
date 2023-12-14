*** Settings ***
Library         AppiumLibrary
# Variables    ../desirecap/s11.py
Variables       ../desirecap/note.py


*** Test Cases ***
Test
    open application    ${ximplerServerUrl}    udid=${desired_caps}[udid]
    ...    platformName=${desired_caps}[platformName]
    ...    platformVersion=${desired_caps}[platformVersion]
    ...    app=${desired_caps}[app]
    ...    deviceName=${desired_caps}[deviceName]
    ...    automationName=${desired_caps}[automationName]

    # accessibility_id=ข้าม

    Wait Until Element Is Visible    accessibility_id=ข้าม    timeout=5000ms

    Click Element    accessibility_id=ข้าม
    # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText

    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    ...    timeout=5000ms

    Click Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText
    ...    timeout=5000ms
    Input Text
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText
    ...    0999999991

    Go Back

    Tap    ${None}    218    1330
    # accessibility_id=เข้าสู่ระบบ

    Wait Until Element Is Visible    accessibility_id=เข้าสู่ระบบ    timeout=5000ms

    Click Element    accessibility_id=เข้าสู่ระบบ
    # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText

    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    ...    timeout=5000ms

    Click Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText

    Wait Until Element Is Visible
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    ...    timeout=5000ms

    Input Text
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
    ...    100010

    Tap    ${None}    542    1411

    close application

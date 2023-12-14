*** Settings ***
Library         AppiumLibrary
Variables       ../desirecap/s21.py


*** Test Cases ***
Test Login
    Log To Console    Hello Donkey 2
    open application    ${ximplerServerUrl}    udid=${desired_caps}[udid]
    ...    platformName=${desired_caps}[platformName]
    ...    platformVersion=${desired_caps}[platformVersion]
    ...    app=${desired_caps}[app]
    ...    deviceName=${desired_caps}[deviceName]
    ...    automationName=${desired_caps}[automationName]

    # accessibility_id=ข้าม
    Wait Until Element Is Visible    accessibility_id=ข้าม    timeout=5000ms
    Click Element    accessibility_id=ข้าม
    Tap    ${None}    380    1101
    Press Keycode    67
    Press Keycode    67
    Press Keycode    67
    Press Keycode    67
    Tap    ${None}    929    1787
    Tap    ${None}    225    1305
    Tap    ${None}    352    1660

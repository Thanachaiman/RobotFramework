*** Settings ***
Library             AppiumLibrary
Variables           ../../desirecap/iphone13.py
Resource            ../../Keywords/Table-Search/home-page.robot

Suite Setup         open application    ${ximplerServerUrl}    udid=${desired_caps}[udid]
...                     platformName=${desired_caps}[platformName]
...                     platformVersion=${desired_caps}[platformVersion]
...                     app=${desired_caps}[app]
...                     deviceName=${desired_caps}[deviceName]
...                     automationName=${desired_caps}[automationName]
Suite Teardown      close application


*** Variables ***
${search_value}         g
${search_value_2}       ddd
${other_value}          tulip
@{result_value}         Ginger    Gladiolus    Gardenia
@{not_result_value}     Tulip    Orchid


*** Test Cases ***
Search in table search *Search with EMPTY
    Verify that the page is successfully visible.
    # Search with "g"
    Input text in search field with ${EMPTY}
    Click search button on keyboard

    # Search results for the word "EMPTY"
    # Verify that the &{result_value} and &{not_result_value} of ${search_value} are relevant to the search query.

Search in table search *Have result
    # Search with "g"
    Input text in search field with ${search_value}
    Click search button on keyboard

    # Search results for the word "g"
    # Verify that the @{result_value} and @{not_result_value} of ${search_value} are relevant to the search query.

Search in table search *Not have result
    # clear text
    Clear text in search field
    Verify that the text is cleared.
    # Search with "ddd"
    Input text in search field with ${search_value_2}
    Click search button on keyboard

    # Search results for the word "g"
    # Verify that the &{result_value} and &{not_result_value} of ${search_value} are relevant to the search query.

Clear text using cross icon
    # input Text
    Input text in search field with ${search_value}
    # clear text
    Clear text in search field
    Verify that the text is cleared.

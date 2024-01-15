*** Settings ***
Library             AppiumLibrary
Variables           ../../desirecap/iphone13.py
Resource            ../../Keywords/Table-Search/home-page.robot
Resource            ../../Keywords/Table-Search/detail-page.robot

Suite Setup         open application    ${ximplerServerUrl}    udid=${desired_caps}[udid]
...                     platformName=${desired_caps}[platformName]
...                     platformVersion=${desired_caps}[platformVersion]
...                     app=${desired_caps}[app]
...                     deviceName=${desired_caps}[deviceName]
...                     automationName=${desired_caps}[automationName]
Suite Teardown      close application


*** Variables ***
${search_value}             g
${search_value_2}           ddd
${other_value}              tulip
${item}                     Ginger
@{result_value}             Ginger    Gladiolus    Gardenia
@{not_result_search}        Tulip    Orchid
@{not_result_value_2}       Tulip    Orchid
&{item_data}                year=2007    price=49.98
@{not_result}               ${EMPTY}


*** Test Cases ***
Search in table search *Search with EMPTY
    Given Verify home page is successfully visible.
    # Search with "g"
    When Input text in search field with ${EMPTY}
    And Click search button on keyboard

    # Search results for the word "EMPTY"
    Then Verify result of ${search_value} are ${result_value}

Search in table search *Have result
    # Search with "g"
    When Input text in search field with ${search_value}
    And Click search button on keyboard

    # Search results for the word "g"
    Verify result of ${search_value} are ${result_value}
    Verify result of ${search_value} are not @{not_result_search}

Check the display when pressing an item in a table.
    # Open detail
    When Open detail of ${item}
    Then Verify detail page of ${item} is successfully visible
    And Verify year and price of ${item} is &{item_data}
    # Go back
    When Click on back button
    Then Verify home page is successfully visible.

Search in table search *Not have result
    # clear text
    When Clear text in search field
    Then Verify that the text is cleared.
    # Search with "ddd"
    When Input text in search field with ${search_value_2}
    Then Click search button on keyboard

    # Search results for the word "ddd"
    Verify result of ${search_value} are not @{not_result_search}

Verify the functionality of the cross icon
    # input Text
    When Input text in search field with ${search_value}
    # clear text
    And Clear text in search field
    Then Verify that the text is cleared.

Verify the functionality of the Cancel Button
    # Search with "g"
    When Input text in search field with ${search_value}
    And Click Cancel button
    Then Verify home page is successfully visible.

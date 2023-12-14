*** Settings ***
Library  SeleniumLibrary   
Library  ../Keywords/print_hello_world.py




*** Test Cases ***
print print_hello_world
    ${string} =  hello  5
    Should Be Equal    ${string}    hello


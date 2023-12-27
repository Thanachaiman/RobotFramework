*** Settings ***
Library     String


*** Variables ***
${path_drag_box}        xpath://*[@id="draggable"]
${path_drop_box}        xpath://*[@id="droppable"]
${path_slider}          xpath://*[@id="slider"]/span
${path_resize}          xpath://*[@id="resizable"]/div[3]
${resizeable_box}       xpath://*[@id="resizable"]


*** Keywords ***
Drag And Drop Box
    Drag And Drop    ${path_drag_box}    ${path_drop_box}

Verify Action Drag And Drop is successfull
    Element Should Contain    ${path_drop_box}    Dropped!

Drag Slider in X axis ${side} px
    Drag And Drop By Offset    ${path_slider}    ${side}    0
    Sleep    5s

Verify Slider in X axis ${side} px
    ${slider_position} =    Get Horizontal Position    ${path_slider}
    Should Be True    ${slider_position} > 614

Resize Element in x axis with: ${x_axis} and y axis with: ${y_axis}
    ${size_x1}    ${size_y1} =    Get Element Size    ${resizeable_box}
    Set Global Variable    ${size_x1}
    Set Global Variable    ${size_y1}
    Set Global Variable    ${x_axis}
    Set Global Variable    ${y_axis}
    Drag And Drop By Offset    ${path_resize}    ${x_axis}    ${y_axis}
    # ${actual_size} =    Set Global Variable    ${size.width}
    # Should Not Be Equal As Integers    ${size_2}    ${size_4}
# //*[@id="resizable"]/div[3]

Verify Element is resized
    ${size_x2}    ${size_y2} =    Get Element Size    ${resizeable_box}
    # ${size_x1_num} =    Convert To Integer    ${size_x1}
    IF    ${x_axis} == 0
        Should Be Equal As Integers    ${size_x1}    ${size_x2}
    ELSE
        ${result_x} =    Evaluate    ${size_x1} + ${x_axis} - 18
        Should Be Equal As Integers    ${result_x}    ${size_x2}
    END

    IF    ${y_axis} == 0
        Should Be Equal As Integers    ${size_y1}    ${size_y2}
    ELSE
        ${result_y} =    Evaluate    ${size_y1} + ${y_axis} - 18
        Should Be Equal As Integers    ${result_y}    ${size_y2}
    END

*** Variables ***
${default_timeout}          5000ms
${txt_note_title_trash}     id=com.socialnmobile.dictapps.notepad.color.note:id/title


*** Keywords ***
trash can page displays text in note as "${note_name}"
    Element Text Should Be
    ...    ${txt_note_title_trash}
    ...    ${note_name}
    ...

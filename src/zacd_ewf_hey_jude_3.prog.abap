REPORT zacd_ewf_hey_jude_3.



CLASS hey_jude DEFINITION.
  PUBLIC SECTION.
    TYPES: BEGIN OF ts_element,
             word TYPE string,
           END OF ts_element,
           tt_elements TYPE STANDARD TABLE OF ts_element WITH DEFAULT KEY.

    DATA elements TYPE tt_elements.
*    METHODS get_element
    METHODS g
      IMPORTING letter TYPE char01
      RETURNING VALUE(text) TYPE string.
    METHODS constructor.
    DATA sequence TYPE c LENGTH 100.
    METHODS play.
ENDCLASS.

CLASS hey_jude IMPLEMENTATION.
  METHOD constructor.
    sequence = 'AB@E@JLM@OPQTU@@AC@FGH@KLN@OPSTU@@AD@FIH@JLM@OPQTU@@AB@E@JLN@OPRST@@'.
    elements = VALUE #(
                      ( word = `Hey Jude, don't` )
                      ( word = ` make it bad`)
                      ( word = ` be afraid` )
                      ( word = ` let me down` )
                      ( word = `Take a sad song and make it better` )
                      ( word = `You` )
                      ( word = ` were made to go out` )
                      ( word = ` and get her` )
                      ( word = ` have found her, now go` )
                      ( word = `Remember to` )
                      ( word = `The minute you` )
                      ( word = ` let her` )
                      ( word = ` into your heart` )
                      ( word = ` under your skin` )
                      ( word = `Then` )
                      ( word = ` you` )
                      ( word = ` can start` )
                      ( word = `'ll` )
                      ( word = ` begin` )
                      ( word = ` to make it` )
                      ( word = ` better` ) ).
  ENDMETHOD.

  METHOD g. "get_element.

    IF letter = '@'.
      text = '</br>'.
    ELSE.
      FIND FIRST OCCURRENCE OF letter IN sy-abcde MATCH OFFSET DATA(offset).
      IF sy-subrc = 0.
        offset = offset + 1.
        text = elements[ offset ]-word.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD play.

*    cl_demo_output=>display_html(
*      REDUCE string(
*        INIT songtext = ``
*        FOR element IN VALUE tt_elements(
*          FOR index = 0 THEN index + 1 WHILE index < strlen( sequence )
*           ( word = get_element( sequence+index(1) ) ) )
*                  NEXT songtext = songtext && element-word ) ).

    cl_demo_output=>display_html(
      REDUCE #(
        INIT s = ``
        FOR element IN VALUE tt_elements(
          FOR index = 0 THEN index + 1 WHILE index < strlen( sequence )
           ( word = g( sequence+index(1) ) ) )
                  NEXT s = s && element-word ) ).

  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

  NEW hey_jude( )->play( ).


*    Hey Jude
*    The Beatles
*
*    Hey Jude, don't make it bad
*    Take a sad song and make it better
*    Remember to let her into your heart
*    Then you can start to make it better
*    Hey Jude, don't be afraid
*    You were made to go out and get her

*    The minute you let her under your skin
*    Then you begin to make it better

*    And anytime you feel the pain, hey Jude, refrain
*    Don't carry the world upon your shoulders
*    For well you know that it's a fool who plays it cool
*    By making his world a little colder

*    Nah nah nah nah nah nah nah nah nah

*    Hey Jude, don't let me down
*    You have found her, now go and get her
*    Remember to let her into your heart
*    Then you can start to make it better

*    So let it out and let it in, hey Jude, begin
*    You're waiting for someone to perform with
*    And don't you know that it's just you, hey Jude, you'll do
*    The movement you need is on your shoulder

*    Nah nah nah nah nah nah nah nah nah yeah
*    Hey Jude, don't make it bad
*    Take a sad song and make it better
*    Remember to let her under your skin
*    Then you'll begin to make it
*    Better better better better better better, oh
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude
*    Nah nah nah nah nah nah, nah nah nah, hey Jude

*      +-----------------------------------------------------------------------------------+
*      |                                                                                   |
*    +->                                   hey Jude                                        |---+
*    | |                                                                                   |   |
*    | +-----------------------------------------------------------------------------------+   |
*    |                                                                                         |
*    |  +--------------------------------------------------------------------------------------+
*    |  |
*    |  |   +----------+  +-> make it bad   +--->  take a sad song and make it better      +---+
*    |  |   |          |  |                                                                    |
*    |  +-->|  don't   |----> be afraid     +--->  you were made to go out and get her     +---+
*    |      |          |  |                                                                    |
*    |      +----------+  +-> let me down   +--->  you have found her, now go and get her  +---+
*    |                                                                                         |
*    |  +--------------------------------------------------------------------------------------+
*    |  |
*    |  |   +-------------------+
*    |  |   |                   |
*    |  +-->|  remember to      |---+--->  let her into your heart  +--------------------------+
*    |  |   |                   |   |                                                          |
*    |  |   +-------------------+   |                                                          |
*    |  |                           |                                                          |
*    |  |   +-------------------+   |                                                          |
*    |  |   |                   |   |                                                          |
*    |  +-->|  the minute you   |---\--->  let her under your skin  +--------------------------+
*    |      |                   |                                                              |
*    |      +-------------------+                                                              |
*    |                                                                                         ^
*    |  +--------------------------------------------------------------------------------------+
*    |  |
*    |  |   +---------------+
*    |  |   |               |   +---->  can start   +---+
*    |  +-->|  then you     |---+                       +------>  to make it better  +---------+
*    |      |               |   +---->  begin       +---+                                      |
*    |      +---------------+                                                                  |
*    |                                                                                         |
*    |  +--------------------------------------------------------------------------------------+
*    |  |
*    |  |   +------------------------------------------------------------+
*    |  |   |                                                            |
*    |  +-->|     better better better better better waaaaaaaaaaaahhhh   |---------------------+
*    |      |                                                            |                     |
*    |      +------------------------------------------------------------+                     |
*    |                                                                                         |
*    |                                  +------------------------------------------------------+
*    |                                  |
*    |                           +------v---------+
*    |                           |                |
*    +---------------------------|    naaa        |------+
*                                |                |      |
*                                +------+---------+      |
*                                       ^                |
*                                       +----------------+

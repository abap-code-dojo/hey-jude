REPORT zacd_ewf_hey_jude_2.


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


CLASS hey_jude DEFINITION.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS dont
      IMPORTING
        make_it_bad TYPE string OPTIONAL
        be_afraid   TYPE string OPTIONAL
        let_me_down TYPE string OPTIONAL.
    METHODS remember_to
      IMPORTING
        text TYPE string.
    METHODS then_you
      RETURNING VALUE(obj) TYPE REF TO hey_jude.

    METHODS the_minute
      IMPORTING
        text TYPE string.

    METHODS can_start
      RETURNING VALUE(obj) TYPE REF TO hey_jude.

    METHODS begin
      RETURNING VALUE(obj) TYPE REF TO hey_jude.

    METHODS to
      IMPORTING
                text       TYPE string
      RETURNING VALUE(obj) TYPE REF TO hey_jude.

    CLASS-METHODS make_it_better
      IMPORTING
                times       TYPE i DEFAULT 1
      RETURNING VALUE(text) TYPE string.

    CLASS-METHODS naaa
      IMPORTING
                times      TYPE i
      RETURNING VALUE(obj) TYPE REF TO hey_jude.

    METHODS waaa.
    METHODS yeah.

    METHODS hey_jude
      RETURNING VALUE(obj) TYPE REF TO hey_jude.


    METHODS lyrics_by_verse
      IMPORTING
        verse_number TYPE i.

  PROTECTED SECTION.

ENDCLASS.

CLASS hey_jude IMPLEMENTATION.
  METHOD constructor.

  ENDMETHOD.

  METHOD remember_to.
    WRITE / 'Remember to'.
    WRITE text.
  ENDMETHOD.

  METHOD then_you.
    WRITE / 'Then you'.
    obj = me.
  ENDMETHOD.

  METHOD the_minute.
    WRITE / 'The minute'.
    WRITE text.
  ENDMETHOD.

  METHOD dont.
    WRITE: 'don''t'.
    IF make_it_bad IS SUPPLIED.
      WRITE:  'Make it bad', / make_it_bad.
    ENDIF.
    IF be_afraid IS SUPPLIED.
      WRITE: 'be afraid', / be_afraid.
    ENDIF.

    IF let_me_down IS SUPPLIED.
      WRITE: 'let me down', / let_me_down.
    ENDIF.

  ENDMETHOD.

  METHOD can_start.
    WRITE 'can start'.
    obj = me.
  ENDMETHOD.

  METHOD begin.
    WRITE: 'begin'.
    obj = me.
  ENDMETHOD.

  METHOD to.
    WRITE 'to'.
    WRITE text.
    obj = me.

  ENDMETHOD.

  METHOD make_it_better.

    DO times TIMES.
      CONCATENATE text 'better' INTO text SEPARATED BY space.
    ENDDO.
    text = |make it { text }|.

  ENDMETHOD.

  METHOD naaa.
    NEW-LINE.
    DO times TIMES.
      WRITE 'naa'.
    ENDDO.
    obj = NEW hey_jude( ).
  ENDMETHOD.

  METHOD waaa.
    WRITE 'waaaaahhhhh'.
  ENDMETHOD.

  METHOD yeah.
    WRITE 'yeah'.
  ENDMETHOD.

  METHOD hey_jude.
    WRITE 'hey Jude'.
    obj = me.
  ENDMETHOD.

  METHOD lyrics_by_verse.


    CASE verse_number.
      WHEN 1.
        SKIP 1.

        WRITE / 'And anytime you feel the pain, hey Jude, refrain'.
        WRITE / 'Don''t carry the world upon your shoulders'.
        WRITE / 'For well you know that it''s a fool who plays it cool'.
        WRITE / 'By making his world a little colder'.
        naaa( 9 ).
        SKIP 1.

      WHEN 2.
        SKIP 1.
        WRITE / 'So let it out and let it in, hey Jude, begin'.
        WRITE / 'You''re waiting for someone to perform with'.
        WRITE / 'And don''t you know that it''s just you, hey Jude, you''ll do'.
        WRITE / 'The movement you need is on your shoulder'.
        naaa( 9 ).
        yeah( ).
        SKIP 1.
    ENDCASE.


  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

  SET BLANK LINES OFF.

  DATA(verse_1) = NEW hey_jude( ).
  verse_1->hey_jude( )->dont( make_it_bad = 'Take a sad song and make it better' ).
  verse_1->remember_to( 'let her into your heart' ).
  verse_1->then_you( )->can_start( )->to( hey_jude=>make_it_better( ) ).
  verse_1->lyrics_by_verse( 0 ). "empty

  DATA(verse_2) = NEW hey_jude( ).
  verse_2->hey_jude( )->dont( be_afraid = 'you were made to go out and get her' ).
  verse_2->the_minute( 'you let her under your skin' ).
  verse_2->then_you( )->begin( )->to( hey_jude=>make_it_better( ) ).
  verse_2->lyrics_by_verse( 1 ). "And anytime you feel the pain

  DATA(verse_3) = NEW hey_jude( ).
  verse_3->hey_jude( )->dont( let_me_down = 'you have found her, now go and get her' ).
  verse_3->remember_to( 'let her into your heart' ).
  verse_3->then_you( )->can_start( )->to( hey_jude=>make_it_better( ) ).
  verse_3->lyrics_by_verse( 2 ). "so let it out...

  DATA(verse_4) = NEW hey_jude( ).
  verse_4->hey_jude( )->dont( make_it_bad = 'Take a sad song and make it better' ).
  verse_4->remember_to( 'let her under your skin' ).
  verse_4->then_you( )->begin( )->to( hey_jude=>make_it_better( 6 ) )->waaa( ).
  verse_4->lyrics_by_verse( 0 ).

  skip 1.

  DO 16 TIMES.
    hey_jude=>naaa( 9 )->hey_jude( ).
  ENDDO.

REPORT zacd_ewf_hey_jude_1.


CLASS song_hey_jude_dont DEFINITION DEFERRED.
CLASS song_hey_jude_remember DEFINITION DEFERRED.
CLASS song_hey_jude_then DEFINITION DEFERRED.
CLASS song_hey_jude_verse DEFINITION DEFERRED.

CLASS song_hey_jude DEFINITION.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS dont RETURNING VALUE(obj) TYPE REF TO song_hey_jude_dont.
    METHODS remember_to RETURNING VALUE(obj) TYPE REF TO song_hey_jude_remember.
    METHODS the_minute_you RETURNING VALUE(obj) TYPE REF TO song_hey_jude_remember.
  PROTECTED SECTION.
ENDCLASS.

CLASS song_hey_jude_dont DEFINITION.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS make_it_bad IMPORTING text TYPE string.
    METHODS be_afraid IMPORTING text TYPE string.
    METHODS let_me_down IMPORTING text TYPE string.
  PROTECTED SECTION.
ENDCLASS.

CLASS song_hey_jude_remember DEFINITION.
  PUBLIC SECTION.
    METHODS constructor IMPORTING minute TYPE boolean_flg OPTIONAL.
    METHODS into_your_heart RETURNING VALUE(obj) TYPE REF TO song_hey_jude_then.
    METHODS under_your_skin RETURNING VALUE(obj) TYPE REF TO song_hey_jude_then.
    METHODS let_her RETURNING VALUE(obj) TYPE REF TO song_hey_jude_remember.
  PROTECTED SECTION.
ENDCLASS.

CLASS song_hey_jude_then DEFINITION.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS then RETURNING VALUE(obj) TYPE REF TO song_hey_jude_then.
    METHODS you RETURNING VALUE(obj) TYPE REF TO song_hey_jude_then.
    METHODS can_start RETURNING VALUE(obj) TYPE REF TO song_hey_jude_then.
    METHODS begin RETURNING VALUE(obj) TYPE REF TO song_hey_jude_then.
    METHODS to IMPORTING text TYPE string.
  PROTECTED SECTION.
ENDCLASS.

CLASS song_hey_jude IMPLEMENTATION.
  METHOD constructor.
    WRITE / 'Hey jude'.
  ENDMETHOD.
  METHOD dont.
    obj = NEW #( ).
  ENDMETHOD.
  METHOD remember_to.
    obj = NEW #( ).
  ENDMETHOD.
  METHOD the_minute_you.
    obj = NEW #( 'X' ).
  ENDMETHOD.

ENDCLASS.



CLASS song_hey_jude_dont IMPLEMENTATION.
  METHOD constructor.
    WRITE 'don''t'.
  ENDMETHOD.

  METHOD make_it_bad.
    WRITE 'make it bad'.
    WRITE / text.
  ENDMETHOD.
  METHOD be_afraid.
    WRITE 'be afraid'.
    WRITE / text.
  ENDMETHOD.
  METHOD let_me_down.
    WRITE 'let me down'.
    WRITE / text.
  ENDMETHOD.
ENDCLASS.

CLASS song_hey_jude_verse DEFINITION.
  PUBLIC SECTION.
    METHODS constructor IMPORTING verse_number TYPE i.
    METHODS sing.
  PROTECTED SECTION.
    DATA verse_number TYPE i.
ENDCLASS.

CLASS song_hey_jude_choir DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS nah.
    CLASS-METHODS yeah.
    CLASS-METHODS hey_jude.
  PROTECTED SECTION.
ENDCLASS.

CLASS song_hey_jude_choir IMPLEMENTATION.
  METHOD nah.
    new-line.
    DO 9 TIMES.
      WRITE 'nah'.
    ENDDO.
  ENDMETHOD.

  METHOD yeah.
    WRITE 'yeah'.
  ENDMETHOD.

  METHOD hey_jude.
    WRITE 'hey jude'.
  ENDMETHOD.
ENDCLASS.

CLASS song_hey_jude_verse IMPLEMENTATION.
  METHOD constructor.
    me->verse_number = verse_number.
  ENDMETHOD.
  METHOD sing.
    CASE verse_number.
      WHEN 1.

        WRITE / 'And anytime you feel the pain, hey Jude, refrain'.
        WRITE / 'Don''t carry the world upon your shoulders'.
        WRITE / 'For well you know that it''s a fool who plays it cool'.
        WRITE / 'By making his world a little colder'.

      WHEN 2.
        WRITE / 'So let it out and let it in, hey Jude, begin'.
        WRITE / 'You''re waiting for someone to perform with'.
        WRITE / 'And don''t you know that it''s just you, hey Jude, you''ll do'.
        WRITE / 'The movement you need is on your shoulder'.

    ENDCASE.

  ENDMETHOD.
ENDCLASS.

CLASS song_hey_jude_remember IMPLEMENTATION.
  METHOD constructor.
    IF minute IS INITIAL.
      WRITE: / 'remember to'.
    ELSE.
      WRITE: / 'the minute you'.
    ENDIF.
  ENDMETHOD.

  METHOD let_her.
    WRITE: 'let her'.
    obj = me.
  ENDMETHOD.

  METHOD into_your_heart.
    WRITE 'into your heart'.
    obj = NEW song_hey_jude_then( ).
  ENDMETHOD.
  METHOD under_your_skin.
    WRITE: 'under your skin'.
    obj = NEW song_hey_jude_then( ).
  ENDMETHOD.
ENDCLASS.

CLASS song_hey_jude_then IMPLEMENTATION.
  METHOD constructor.
  ENDMETHOD.
  METHOD then.
    WRITE / 'then'.
    obj = NEW #( ).
  ENDMETHOD.

  METHOD you.
    WRITE 'you'.
    obj = NEW #( ).
  ENDMETHOD.
  METHOD can_start.
    WRITE 'can start'.
    obj = NEW #( ).
  ENDMETHOD.
  METHOD begin.
    WRITE 'begin'.
    obj = NEW #( ).

  ENDMETHOD.
  METHOD to.
    WRITE : 'to', text.
  ENDMETHOD.
ENDCLASS.


START-OF-SELECTION.

  DATA(hey_jude1) = NEW song_hey_jude( ).
  hey_jude1->dont( )->make_it_bad( 'take a sad song and make it better' ).
  hey_jude1->remember_to( )->let_her( )->into_your_heart(
         )->then( )->you( )->can_start( )->to( 'make it better' ).

  SKIP 1.

  DATA(hey_jude2) = NEW song_hey_jude( ).
  hey_jude2->dont( )->be_afraid( 'You were made to go out and get her' ).
  hey_jude2->the_minute_you( )->let_her( )->under_your_skin(
         )->then( )->you( )->begin( )->to( 'make it better' ).

  SKIP 1.

  NEW song_hey_jude_verse( 1 )->sing( ).

  SKIP 1.

  song_hey_jude_choir=>nah( ).

  SKIP 1.

  DATA(hey_jude3) = NEW song_hey_jude( ).
  hey_jude3->dont( )->let_me_down( 'You have found her, now go and get her' ).
  hey_jude3->remember_to( )->let_her( )->into_your_heart(
         )->then( )->you( )->can_start( )->to( 'make it better' ).

  SKIP 1.

  NEW song_hey_jude_verse( 1 )->sing( ).

  SKIP 1.

  song_hey_jude_choir=>nah( ).

  skip 1.

  DATA(hey_jude4) = NEW song_hey_jude( ).
  hey_jude4->dont( )->make_it_bad( 'take a sad song and make it better' ).
  hey_jude4->remember_to( )->let_her( )->under_your_skin(
         )->then( )->you( )->begin( )->to( 'make it better' ).

  WRITE: / 'better better better better better, oh'.


  SKIP 1.

  DO 16 TIMES.

    song_hey_jude_choir=>nah( ).
    song_hey_jude_choir=>yeah( ).
  ENDDO.

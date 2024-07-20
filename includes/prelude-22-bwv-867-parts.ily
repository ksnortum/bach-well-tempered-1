%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'(
                       ((-1 . 2) (0 . 2) (0 . 2) (0 . 1))
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
tieShapeB = \shape #'(
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ((0 . -0.5) (0 . -0.5) (-1.25 . -0.5) (-1.25 . -0.5))
                       ) \etc

forceHShiftA = \tweak NoteColumn.force-hshift -0.5 \etc
forceHShiftB = \tweak NoteColumn.force-hshift 0.5 \etc
forceHShiftC = \tweak NoteColumn.force-hshift -1 \etc
forceHShiftD = \tweak NoteColumn.force-hshift 0 \etc

moveRestA = \tweak Rest.X-offset 1.25 \etc
moveRestB = \tweak Rest.X-offset 1.5 \etc

%%% Music %%%

global = {
  \time 4/4
  \key bf \minor
}

rightHandUpper = \relative {
  r8 \voiceOne bf'16( c <bf df>8 q)  q( <a c>16 <bf df> <c ef>8 q) |
  q8( <bf df>16 <c ef>  <df f>8 q)  q( <c ef>16 <df f> <ef gf>8 q) |
  \forceHShiftC gf8 f16 ef  f8 f~  f ef16 df  c8 df16 ef |
  a,8 f'~  f g16 a  bf4.  a16 bf |
  c4. c16 bf  a4. a16 c |
  f,1-\tieShapeA ~ |
  f8 f16 ef  df8 ef16 c  df8 bf16 c  df8 df |
  df8 c16 bf  c8 c  c bf16 af  bf8 bf |
  
  \barNumberCheck 9
  bf af16 g  af8 af  af g16 af  bf8 g |
  e8 c'~  c bf16 af  bf8 bf~  bf af16 g |
  af8 af~  af gf!16 f  gf8 df'~  df c16 bf |
  e8 c f2 e4 |
  f4 r8 f16( ef!  d4) r8 ef16( f |
  gf4) r8 ef16 df!  c4 r8 df16 ef |
  f4 r8 df16 c  bf8 bf  gf' gf16 f |
  ef8 ef(  c' c16 bf  a8 a  bf bf16 af |
  
  \barNumberCheck 17
  gf8 gf <ef gf>[ q])  gf f  f gf16 f |
  ef8 ef16 df  c8 c16 df  ef8 c16 df  ef8 df16 c |
  df2~  df8 gf16 f  ef df c bf |
  a8 f16 g  a8 <f a>  q <e g>16 <f a>  <g bf>8 q |
  <g bf>8 a16 <g bf>  <a c>8 q  q <g bf>16 <a c>  <bf df>8 q |
  q8 <a c>16 <bf df>  <a c ef>8 q16 <df f>  <a c ef gf>4\fermata 
    b8\rest\fermata f' |
  df8 ef16 c  df8 c16 bf  bf2~ |
  bf1 |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour s8 r r f'  gf4 r8 a |
  r4 r8 bf r2 |
  \voiceTwo ef8 df \voiceFour r \once \omit Flag df  bf4 r8 bf |
  f8 bf16 c  df4~  df8 c16 df ef4~ |
  \voiceThree ef8 gf16 f  ef4_~  \voiceFour \omit Beam ef8 ef16 df
    \undo \omit Beam c4~
  \voiceThree c8 a16 bf  c8 c16 df  ef8 c16 df  ef4-\tieShapeB ~ |
  \voiceFour ef8 df16 c  bf8 a  bf4 r8 bf |
  bf8 af r af  af g r g |
  
  \barNumberCheck 9
  g8 f r f  f df r df |
  c8 f16 e  f8 f~  f e16 d  e8 e~ |
  e8 f16 ef  df!8 df  df bf'16 a  bf4 |
  c8 f,16 g 
    << 
      { af8 af  af g16 af  bf8 bf~ | bf8 af16 g af4 } 
      \new Voice { 
        \voiceThree \moveRestA d8\rest c  df bf \moveRestB d\rest c | 
        c8 c16 bf c4 
      } 
    >> r8 <af cf>16( <gf! bf>  <f af>4) |
  r8 <ef gf>16( <f af>  <gf bf>4)  r8 ef16 f gf4 |
  r8 af16 gf  f8 f  gf gf bf[ bf] |
  bf8 a16 bf  c8 c  <c f> q <bf f'> q |
  
  \barNumberCheck 17
  q8 <bf ef>  bf a16 bf  <c ef>8 <f, df'>16 <ef c'>  <df bf'>8 q |
  bf'8 a16 bf  bf8 a16 bf  a8 a16 bf  c8 bf16 a |
  bf4 r8 <f bf>  <gf bf>4 r8 gf |
  f4 r8 ef  df4 r8 e |
  e8 f r f  f4 r8 f |
  gf!8 gf gf[ gf]  gf4 s8 c |
  bf8 bf bf[ a]  bf\noBeam <d, f>16 <ef gf>  <f af>8 q |
  q8 <ef gf>~  q <d f>16 <c ef>  <d f>2 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree <df' f>8 r r df^\<  ef4\! r8 <c gf'> |
  <df f>4 r8 q  <c a'>4 r8 q |
  \clef bass \voiceUp bf'4 s8 bf  \voiceDown g gf r gf |
  f4 r8 f  gf!2~ |
  gf8 \voiceUp ef'16 df  c4~  c8 c16 bf  a4~ |
  \forceHShiftB a8 f16 g  a4~  a8 a16 bf  c8 bf16 a |
  \voiceDown f4. gf16 ef  f4 r8 f-> |
  ef8-> ef r f->  f-> f r f-> |
  
  \barNumberCheck9
  e8-> c r c  df bf r bf |
  g8 af~  af g16 f  g8 g~ g[ c]~ |
  c8 c~  c bf16 af  bf8 gf!16 f  gf4 |
  g8 af16 g  f4~  f8 e16 f  g8 g |
  f4 s2. |
  s2 r8 c'16 df ef4 |
  r8 f16 ef df8 df  df df  ef ef16 f |
  gf8 gf gf[ f]  s2 |
  
  \barNumberCheck 17
  s1 |
  df8 c16 df  ef8 f  gf! gf f[ f] |
  f4 s2  r8 ef16 df |
  c8 a16 bf  c8 c  bf4 r8 df |
  c8 c16 df  ef!8 ef  df df16 c  bf8 bf16 af! |
  gf8 gf16 f  gf8 gf  gf4 s8 f' |
  f8 bf,16 gf'  \voiceOne f8 ef  \forceHShiftA d8 s4. |
  \voiceThree d,8 ef16 f  gf8 gf  f2 |
}

leftHandLower = \relative {
  \voiceTwo bf8 bf bf bf  bf bf bf bf |
  bf8 bf bf bf  bf bf bf bf |
  \clef bass 
  << { bf8 } \new Voice { \voiceThree bf8 } >> bf16 c  df8 df  df c16 df
    ef8 ef |
  ef8 df16 ef  f8 f~  f ef16 df  c8 bf |
  a4. a16 bf  c4. c16 df |
  ef4. ef16 df  c8 c16 bf  a8 g16 f |
  \clef bass bf2~ bf8 df16 c  bf8 af! |
  g8 af16 g  f8 ef  d g16 f  e8 g |
  
  \barNumberCheck 9
  c,8 f16 ef!  df!8 c  bf bf bf bf |
  bf8 af df df~  df c16 bf  c8 c |
  c8 f, bf[ bf]  bf bf bf[ bf] |
  bf8 af df[ c]  bf df c c |
  f,4 \oneVoice r8 f'  bf4 r8 bf |
  ef,4 r8 ef  \voiceTwo af4 r8 af |
  df,4 r8 df  gf gf16 f  ef8 ef |
  c'8 c16 bf  a8 a  ef' f16 ef  d8 d |
  
  \barNumberCheck 17
  ef8 ef16 df!  c8 c16 bf  a8 a  bf bf16 af |
  gf8 gf16 f  ef8 ef16 df  c8 c16 bf  a8 f |
  bf8 bf16 af!  gf8 gf16 f  ef8 ef ef ef |
  f8 f' f f  f f f f |
  f8 f f[ f]  f f f[ f]~ |
  f8 ef16 df  <c ef>8 q16 <bf df>  <a c ef gf>4\fermata d8\rest\fermata a'
  bf8 gf16 ef 
    << 
      { f8 f,  bf bf bf[ bf] } 
      \new Voice { \voiceThree \forceHShiftD f'4~  f8 f16 ef  d c ef d } 
    >> |
  bf8 bf bf[ bf]  bf2 |
}

leftHand = {
  \global
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \tag layout { s2..^\pDolceEspressivo } \tag midi { s2..\p } s8\< |
  s16 s\! s4 s8\cresc s2 |
  s2-\tweak Y-offset 0.5 \f s8-\tweak Y-offset 2 \> s\! 
    s4-\tweak Y-offset 2 \p |
  s16 s\cresc s8 s2. |
  s4-\tweak X-offset -1 \f s-\tweak Y-offset -1 \< s8-\tweak Y-offset -1.5 \sf
    \tag layout { s8 } \tag midi { s8\f } s8.-\tweak Y-offset -1 \< s16\! |
  s8-\tweak Y-offset -1.5 \sf \tag layout { s8 } \tag midi { s8\f } s4
    s2-\tweak Y-offset -1 \dim |
  s1\p |
  s1 |
    
  \barNumberCheck 9
  s8 s\cresc s2. |
  s2\f s8 s\< s4\! |
  s2 s8 s-\tweak Y-offset 1 \< s4\! |
  s16 s8\< s16\! s4\fz s8 s4.\dim |
  s8 s-\tweak Y-offset -1 \p s2. |
  s2. s16 s8.-\tweak Y-offset -5 \cresc |
  s1 |
  s4 s2-\tweak Y-offset 1 \f s8\fz s\dim |
  
  \barNumberCheck 17
  s2 s4.\p s8\cresc |
  s1 |
  s4.\f\< s8\! s8\sf\> \tag layout { s } \tag midi { s\f } s16 s\! s8 |
  s4.\p s8\< s4.\! s8\< |
  s16 s\! s8\cresc s2. |
  s4.\f\< s8\! s4\ff s8 s-\tweak Y-offset 1 \fz |
  s2-\tweak Y-offset 2 \dim s8-\tweak Y-offset 1 \p s4.^\dimERall |
  s2 s\pp |
}

tempi = {
  \tempo "Andante sostenuto" 8 = 92
  s1 * 21
  \set Score.tempoHideNote = ##t
  s2 \tempo 8 = 72 s4 s8 \tempo 8 = 92 s |
  s2 \tempo 8 = 88 s4 \tempo 8 = 84 s |
  \tempo 8 = 82
  s4 \tempo 8 = 80 s8 \tempo 8 = 76 s \tempo 8 = 69 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  % page 2
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
}

preludeTwentyTwoNotes =
\score {
  \header {
    title = "Prelude 22"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Score
      \override Stem.details.beamed-lengths = #'(3.5 3.9)
    }
  }
}

\include "articulate.ly"

preludeTwentyTwoMidi =
\book {
  \bookOutputName "prelude-22-bwv-867"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

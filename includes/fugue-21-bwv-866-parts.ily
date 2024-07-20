%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . -1.5) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key bf \major
}

rightHandUpper = \relative {
  r8 f'-. g-. f-. bf-. d,( |
  c8-.) a'16( g  bf a g f  c'8-.) ef,( |
  d8-.) bf'16( c  a bf c d  ef d c ef) |
  d16( c bf c  a bf c d  ef d c ef) |
  d8.( c16  bf a bf c)  d8-. f~ |
  f8 bf,-. a-.[ bf-.] e-. g~ |
  g8 a,16( bf  c8-.) c-. c-.[ c-.] |
  c16( bf a bf  c8-.) c-. c-.[ c-.] |
  
  \barNumberCheck 9
  \voiceOne c4 r  r16 d bf d |
  ef8 r r4  r16 ef c ef |
  f8 r r a,16( bf  c bf a c |
  bf4)  r8 a16( bf  c bf a c) |
  bf8 bf-. d-. bf-. f'-. a,( |
  \oneVoice g8-.) e'16( d  f e d c  g'8-.) bf,( |
  a8-.) f'16( g  e f g a  bf a g bf) |
  a16 g f g  e f g a  bf a g bf |
  
  \barNumberCheck 17
  a16 bf a g  fs g a bf  c bf a c |
  bf16 a g a  fs g a bf  c bf a c |
  bf16 a g f!  ef f g a  bf a g bf |
  a16 g f ef  d ef f g  a g f a |
  g16 f ef d  c d ef f  g fs e g |
  fs16 e d c  bf a bf c  d8 g~ |
  \voiceOne g8 c, bf c  fs[ a]~ |
  a8 bf,16 c  d8 d d[ d] |
  
  \barNumberCheck 25
  d16 c bf c  d8 d d[ d] |
  d8 r r4  r16 ef c ef |
  f8 r r4  r16 f d f |
  g8 r r b,16 c  d c b d |
  c8 r r b16 c  d c b d |
  c8 ef-. d-. ef-. c-. a'-.( |
  bf8-.) d,-. c-. d-. bf-. g'-.( |
  a8-.) c,-. bf-. c-. a-. fs'-.( |
  
  \barNumberCheck 33
  g16) f! e d  \oneVoice cs d e f  g f e g |
  f16 ef! d c!  b c d ef  f ef d f |
  ef16 c b a  g f g c  ef4~ |
  ef8[ af,]( g-.) af-. d-. f~ |
  \voiceOne f8-. bf,-. c-. bf-. ef-. g,( |
  f8) d'16( c  ef d c bf  f'8-.) af,( |
  g8) ef'16 f  \oneVoice d ef f g  af g f af |
  g16 f ef f  d ef f g  af g f af |
  
  \barNumberCheck 41
  \voiceOne g8. f16  ef d ef f  g8 bf~ |
  bf8 ef,-. d-. ef-. a-. c~ |
  c8 d,16 ef  f8 f f f |
  f16 ef d ef  f8 f f f |
  f8 \oneVoice r  r a,16 bf  c bf a c |
  bf8 r  r a16 bf  c bf a c |
  \voiceOne bf8 g'  d4-\slurShapeA (  c8.-\insideSlur \trill bf16) |
  bf2. |
  \bar "|."
} 


rightHandLower = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  \voiceFour a'8. g16  f ef! d ef  f8 bf~ |
  bf8 ef,  d[ ef]  a c~ |
  c8 d,16( ef  f8-.) f-.  f-.[ f-.] |
  f16( ef d ef  f8-.) f-.  f-.[ f-.] |
  f4 r \voiceDown r16 a,( f a |
  bf8-.) r r4  r16 bf( g bf |
  c8-.) r r e,16( f  g f e g) |
  f8 r  r e16 f  g f e g |
  
  \barNumberCheck 17
  f16 a bf c  d8 d d d |
  d16 c bf c  d8 d d d |
  d8 r r4 r |
  s2. * 2 |
  r8 d-. ef-. d-.  g-.[ bf,]( |
  a8) \voiceUp fs'16( e  g fs e d)  a'8-. c,( |
  bf8) g'16 a  fs g a bf  c bf a c |
  
  \barNumberCheck 25
  bf16 a g a  fs g a bf  c bf a c |
  % second beat, fourth 16th, af, SrcB, SrcC
  bf16 c d ef  d c bf af  g8 c~ |
  c8 f, ef f b d~ |
  d8 ef,16 f  g8 g g g |
  g16 f ef f  g8 g g g |
  g8 r r4 r8 ef' |
  f8 r r4 r8 d |
  ef8 r r4 r8 c |
  
  \barNumberCheck 33
  d8 \voiceDown bf,-. a-. bf-. g-. cs-.->( |
  d8-.) af-. g-. af-. f-.[ b-.]-> |
  c8 c-. ef-. c-. g'-. bf,!( |
  af8) d16( c  ef d c bf)  f'8-. af,( |
  g16) bf c d  \voiceUp ef d ef f  g8 ef~ |
  ef8 af, g af d f~ |
  f8 \voiceDown g,16 af  bf8 bf bf bf |
  bf16 af g af  bf8 bf bf bf |
  
  \barNumberCheck 41
  bf8 \voiceUp ef g ef bf' d, |
  c8 a'!16 g  bf a g f  c'8 ef, |
  d8 bf'16 c  a bf c d  ef d c ef |
  d16 c bf c  a bf c d  ef d c ef |
  d8 \voiceDown f,,16 g  a bf c d  ef d c ef |
  d16 c bf c  a bf c d  ef d c ef |
  \voiceUp d8 bf'  bf4  a8 ef |
  d2. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  R2. * 4 |
  \clef treble r8 bf8-. d-. bf-. f'-. a,-.( |
  g8-.) e'16( d  f e d c  g'8-.) bf,( |
  a8-.) f'16( g  e f g a  bf a g bf) |
  a16 g f g  e f g a  bf a g bf |
  
  \barNumberCheck 9
  \clef bass r8 f,-. g-. f-. bf-. d,( |
  c8-.) a'16( g  bf a g f  c'8-.) ef,( |
  d8-.) bf'16( c  a bf c d  ef d c ef |
  d16 c bf c  a bf c d  ef d c ef) |
  d8 d,16 c  bf a bf c  \voiceTwo d8 f~ |
  f8 bf,-. a-. bf-.  e[ g]~ |
  g8 a,16 bf  c8 c c c |
  c16 bf a bf  c8 c c[ c] |
  
  \barNumberCheck 17
  f,8 r  r fs'16 g  a g fs a |
  g8 r  r fs16 g  a g fs a |
  g8 d-. c-. d-. g,-. ef'^( |
  \oneVoice f8-.) c-. bf-. c-. f,-. d'( |
  ef8-.) bf-. a-. bf-. ef,-. c'( |
  \voiceTwo d8-.) r r4  r16 g ef-> g |
  c,8 \oneVoice r r4  r16 a' fs-> a |
  d,8 r r fs,16-> g  a g fs a |
  
  \barNumberCheck 25
  g8 r r fs16(-> g  a g fs a |
  g8-.) g'-. bf-. g-. c-. ef,( |
  d8) b'16( a  c b a! g  d'8-.) f,( |
  ef8-.) c'16 d b c d ef  f ef d f |
  ef16 d c d  b c d ef  f ef d f |
  ef16 d c bf! a bf c d  ef d c ef |
  d16 c bf a  g a bf c  d c bf d |
  c16 bf a g  fs g a bf  c bf a c |
  
  \barNumberCheck 33
  \voiceTwo bf8 g-. f-. g-. e4( |
  d8-.) f-. ef!-. f-.  d4(
  c8) r r4  r16 c ef c |
  f8 r r4  r16 bf, d bf |
  ef8 r \oneVoice r4  r16 ef g ef |
  bf'8 r r4  r16 bf d bf |
  ef8 \voiceTwo r r d,16 ef  f ef d f |
  ef8  r r d16 ef  f ef d f |
  
  \barNumberCheck 41
  ef8 \oneVoice r r4  r16 ef g ef |
  f8 r r4  r16 f a f |
  bf8 r  r a16 bf  c bf a c |
  bf8 r  r a16 bf  c bf a c |
  \voiceTwo bf16 f d ef  f8 f f f |
  f16 ef d ef  f8 f f f |
  \oneVoice f16-\slurShapeB ( ef d ef  f8 ef f f,) |
  bf2. |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \tag layout { s2.^\pScherzondo } \tag midi { s2.\p } |
  s2. * 7 |
  
  \barNumberCheck 9
  s4. s-\tweak Y-offset -7 \cresc |
  s2. * 3 |
  s2.-\tweak Y-offset -6 \f |
  s2. * 3 |
  
  \barNumberCheck 17
  s4 s8\sf \tag layout { s4. } \tag midi { s4.\f } |
  s4 s8\sf \tag layout { s4. } \tag midi { s4.\f } |
  s4 s2-\tweak Y-offset -1 \dim |
  s2. * 2 |
  s2.-\tweak Y-offset -5.5 \p |
  s2. * 2 |
  
  \barNumberCheck 25
  s2. |
  s2.-\tweak Y-offset -6 \cresc |
  s2. * 3 |
  s2\fp s8 s\f |
  s8 s\p s4. s8\f  
  s8 s\p s4. s8\f 
  
  \barNumberCheck 33
  s2. * 6 |
  s4 s\< s\! |
  s4 s\< s\! |
  
  \barNumberCheck 41
  s2. * 2 |
  s4. s8\sf \tag layout { s4 } \tag midi { s4\f } |
  s4. s8\sf \tag layout { s4 } \tag midi { s4\f } |
  s2.-\tweak Y-offset -6 \ff |
  s2. * 2 |
}

tempi = {
  \tempo "Allegro vivace" 4 = 116
  s2. * 46 |
  \set Score.tempoHideNote = ##t
  \tempo 4 = 100
  s4 \tempo 4 = 92 s \tempo 4 = 84 s |
  \tempo 4 = 60
  s2. |
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
}

fugueTwentyOneNotes =
\score {
  \header {
    title = "Fugue 21"
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

fugueTwentyOneMidi =
\book {
  \bookOutputName "fugue-21-bwv-866"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

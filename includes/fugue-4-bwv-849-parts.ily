%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0.5) (0 . 0.4) (0 . 0.4) (0 . 0.5)) \etc
tieShapeB = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) \etc
tieShapeC = \shape #'((0.5 . 0.5) (0 . 0.7) (0 . 0.7) (-0.75 . 0.5)) \etc
tieShapeD = \shape #'((0.5 . 0.5) (0 . 0.7) (0 . 0.7) (-0.75 . 0.5)) \etc
tieShapeE = \shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 2)) \etc
tieShapeF = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 2)) \etc
tieShapeG = \shape #'((0.5 . 0.5) (0 . 0.7) (0 . 0.7) (-0.75 . 0.5)) \etc
tieShapeH = \shape #'((0 . 2) (0 . 2) (1 . 2) (1 . 2)) \etc
tieShapeI = \shape #'((0 . 0) (0 . -2) (0 . -2) (0 . 0)) \etc
tieShapeJ = \shape #'((0.5 . 0.5) (0 . 0.7) (0 . 0.7) (-0.75 . 0.5)) \etc
tieShapeK = \shape #'((0.5 . 0.5) (0 . 0.7) (0 . 0.7) (-0.75 . 0.5)) \etc
tieShapeL = \shape #'(
                       ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                       ((0 . 2) (0 . 2) (1 . 2) (1 . 2))
                       ) \etc
tieShapeM = \shape #'((0 . 0) (0 . 1) (-0.75 . 1) (-0.75 . 0)) \etc

forceHShiftA = \tweak NoteColumn.force-hshift 0.7 \etc
forceHShiftB = \tweak NoteColumn.force-hshift 0.2 \etc

moveRestA = \tweak X-offset 1.4 \etc
moveAccentA = -\offset Y-offset 0.25 \etc

stemLengthA = \tweak Stem.length 5 \etc

%%% Music %%%

global = {
  \time 4/4
  \key cs \minor
}

rightHandUpper = \relative {
  \voiceOne 
  R1 * 8 |
  
  \barNumberCheck 9
  R1 * 5 |
  s2 cs'' |
  bs2 e |
  \voiceThree ds1 |
  
  \barNumberCheck 17
  \voiceOne cs2 a |
  e'4 ds cs2 |
  b2 cs |
  ds2 s |
  r4 e ds cs |
  b4 ds gs2~ |
  gs4 fs gs a |
  b1~ |
  
  \barNumberCheck 25
  b4 a gs fs |
  gs8 fs e ds cs2-\tieShapeE ~ |
  cs2 b-\tieShapeE ~ |
  b4 cs b a |
  gs2 as4 b |
  cs2 b~ |
  b2 as |
  b1-\tieShapeF ~ |
  
  \barNumberCheck 33
  b4 cs ds e~ |
  e2 ds |
  e4 ds e fs |
  \oneVoice gs8 fs gs a  gs fs e gs |
  fs8 e fs gs  fs e ds fs |
  \voiceOne e8 ds e fs  e ds cs e |
  ds8 cs ds e  ds cs b ds |
  cs8 b cs ds  cs b as cs |
  
  \barNumberCheck 41
  b2~ b8 cs ds b |
  cs2~ cs8 ds e cs |
  ds2~ ds8 e fs ds |
  e1~ |
  e4 ds-\tieShapeH ~ ds cs-\tieShapeE ~ |
  cs4 s2. |
  gs'8 fs gs a  gs fs e gs |
  fs8 e fs gs  fs e ds fs |
  
  \barNumberCheck 49
  es2-> a-> |
  gs1->~ |
  gs4 fs8 e d2 |
  r4 cs fs fs |
  fs4 e8 d e2~ |
  e4 d8 cs d2~ |
  d2 cs |
  fs2 e~ |
  
  \barNumberCheck 57
  e4. fs8  e d cs e |
  d8 cs d e  d cs b d |
  cs1-> |
  bs2-> e-> |
  ds1->~ |
  ds4 gs, cs cs |
  cs4 b8 a b2~ |
  b2 a |
  
  \barNumberCheck 65
  gs2 r |
  ds'1-> |
  css2-> fs-> |
  es2-> e |
  ds8 cs ds e  ds cs b ds |
  cs8 b cs ds  cs e ds cs |
  bs2 b |
  as2 a |
  
  \barNumberCheck 73
  gs2 r |
  R1 * 2 |
  cs1-> |
  bs2-> e-> |
  ds1->~ |
  ds2 cs~ |
  cs2 bs |
  
  \barNumberCheck 81
  r4 cs8 ds e4 fs |
  gs8 fs gs a  gs fs e gs |
  fs8 e fs gs  fs e ds fs |
  e8 ds e fs  e d cs e |
  d8 cs d e  d cs b d |
  cs8 b cs d  cs b a cs |
  b8 a b cs  b a gs b |
  a2 r |
  
  \barNumberCheck 89
  cs1-> |
  bs2-> e-> |
  ds1->~ |
  ds4 cs8 bs gs'4 gs |
  gs4 fs8 e fs2 |
  e1-> |
  ds2-> g-> |
  fs1-> |
  
  \barNumberCheck 97
  cs1 |
  R1 |
  a'4\rest bs, fs' fs |
  fs4 <cs e>8 <bs ds> e4 ds8 cs |
  ds4 bs <gs cs>2~ |
  q2 cs2 |
  bs2 b |
  as2 a |
  
  \barNumberCheck 105
  gs1 |
  as2 bs |
  cs1-> |
  bs2-> e->-\tieShapeL ~ |
  e2 ds4 cs |
  bs2 cs~ |
  cs2 bs |
  cs1~ |
  
  \barNumberCheck 113
  cs1~ |
  cs1~ |
  cs1 |
  \bar "|."
}

rightHandMiddle = \relative {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 3 |
  s2 \voiceOne gs' |
  es a |
  gs2 fs-\tieShapeA _~ |
  \voiceTwo fs2 \voiceOne cs'-\tieShapeB _~ |
  cs2 b-\tieShapeC _~ |
  
  \barNumberCheck 17
  \voiceThree \forceHShiftA b2. ds4 |
  \forceHShiftB gs,2 \voiceOne a-\tieShapeD _~ |
  \voiceThree a4 gs fs e |
  \voiceOne as2 gs~ |
  \voiceTwo gs2 fss |
  gs2 b, |
  cs2. cs4 |
  ds4 cs ds es |
  
  \barNumberCheck 25
  \voiceThree fs2 \forceHShiftB a |
  \forceHShiftB gs2 g8\rest b a gs |
  fs4 a gs fs |
  \forceHShiftB es2 \forceHShiftB fs2_~ |
  \forceHShiftA fs4 e \voiceTwo e2~ |
  e2 ds |
  e1~ |
  \voiceThree e4 ds e fs8 gs |
  
  \barNumberCheck 33
  \voiceTwo fs2 b-\tieShapeG ~ |
  \voiceThree b4 cs b a |
  \voiceTwo gs2 r2 |
  s1 * 2 |
  r2 gs-> |
  fss2-> b-> |
  as1->~ |
  
  \barNumberCheck 41
  as4 ds, gs2~ |
  gs4 fs8 e fs2~ |
  fs4 e8 fs gs2~ |
  gs1~ |
  gs1 |
  s4 bs8 as bs4 ds4~ |
  ds2 cs~ |
  cs2 bs4 b~ |
  
  \barNumberCheck 49
  b8 b cs d  cs b a cs |
  b8 a b cs  b a gs b |
  a2~ a8 cs b a |
  gs2 r |
  R1 |
  r2 a-> |
  gs2-> cs->
  b1->~ |
  
  \barNumberCheck 57
  b4 e, a a |
  a4 gs8 fs gs2~ |
  gs4 cs,8 ds! e4 fs |
  gs8 fs gs a  gs fs e gs |
  fs8 e fs gs  fs e ds fs |
  e8 ds e fs  e ds cs e |
  ds8 cs ds e  d cs b d |
  cs8 b cs d  cs e ds cs |
  
  \barNumberCheck 65
  bs2 cs |
  ds4 ds gs8 as b4~ |
  b4 as ds ds |
  ds4 cs8 b cs2~ |
  cs2 b |
  as2 a~ |
  a4 ds, gs gs |
  gs4 fs8 es fs2~ |
  
  \barNumberCheck 73
  fs2 e! |
  gs8 fs gs a  gs fs e gs |
  fs8 e fs gs  fs e ds fs |
  e8 ds e fs  e ds cs e |
  \moveRestA g4\rest gs cs cs |
  cs4 bs8 as  bs cs ds bs |
  gs8 fs gs a  gs fs e gs |
  fs8 e fs gs  fs e ds fs |
  
  \barNumberCheck 81
  e8 gs a b  cs ds bs cs |
  ds4 r r2 |
  R1 * 2 |
  r4 fs, b b~ |
  b4 a8 gs a2 |
  gs1~ |
  gs8 gs fs es fs2 |
  
  \barNumberCheck 89
  gs2~ gs8 gs fs e! |
  ds8 a' gs fs  e gs cs b |
  a8 gs a fs gs2~ |
  gs4 cs cs2~ |
  cs4 as ds ds~ |
  ds4 cs8 b cs2 |
  b2 b |
  as2 <fs d'> |
  
  \barNumberCheck 97
  \voiceOne \forceHShiftB es2-> a-> |
  gs4 gs cs cs |
  cs4 \voiceTwo bs8 as bs cs ds4-\tieShapeJ ~ |
  \voiceThree ds4 s4 cs2 |
  s1 |
  s2 \voiceOne fs,-\tieShapeK _~ |
  \voiceThree fs4 b\rest gs gs |
  gs fs8 e! ds4 cs |
  
  \barNumberCheck 105
  fs4 e8 ds e2~ |
  e4 fs8 gs a4 gs_~ |
  gs4 e a a |
  a4 gs8 fs gs4 as8 bs |
  \voiceOne cs2 \voiceThree as |
  \voiceOne gs2 gs |
  \voiceThree gs1-\tieShapeM ~ |
  gs2 fs-\moveAccentA -> |
  
  \barNumberCheck 113
  es2-> a-> |
  gs1~ |
  gs1 |
}

rightHandLower = \relative {
  \voiceTwo 
  R1 * 6 |
  r2 \voiceOne cs' |
  bs2 e |
  
  \barNumberCheck 9
  ds1 |
  cs2 fs2~ |
  fs4 e ds cs |
  cs2 \voiceTwo b |
  cs2 fs~ |
  fs4 e ds cs |
  ds2 gs |
  r4 a gs fs |
  
  \barNumberCheck 17
  es4 cs fs2 |
  e!1~ |
  e2 gs |
  ds2 r |
  s1 * 4 |
  
  \barNumberCheck 25
  r2 \forceHShiftB cs-> |
  \forceHShiftB bs2-> e-> |
  ds1-> |
  cs1~ |
  cs1
  s1 |
  cs1 |
  r2 e-> |
  
  \barNumberCheck 33
  ds2-> gs-> |
  fs1-> |
  e2 s |
  s1 * 5 |
  
  \barNumberCheck 41
  s1 * 3 |
  b'2\rest cs-> |
  bs2-> e-> |
  ds1^> |
  s1 * 2 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 3 |
  \staffDown \voiceOne c,4\rest gs cs cs |
  \oneVoice cs4 bs8 as bs2 |
  cs2 a |
  fs2 gs |
  \voiceOne es2 fs |
  
  \barNumberCheck 65
  gs1 |
  fss2 ds |
  s1 * 6 |
  
  \barNumberCheck 73
  s1 |
  \staffUp ds'2 cs |
  ds2 \staffDown gs,~ |
  gs8 r r4 r2 |
  \staffUp \voiceTwo ds'2 r |
  s1 * 3 |
  
  \barNumberCheck 81
  s1 |
  \staffDown \voiceOne r4 gs, cs cs |
  cs4 bs8 as bs2 |
  cs1 |
  b2. fs'4 |
  es2 fs |
  b,2 cs~ |
  cs2~ cs8 cs b a |
  
  \barNumberCheck 89
  s1 * 6 |
  r4 b e e |
  e4 d8 cs b4 r |
  
  \barNumberCheck 97
  \staffUp \voiceTwo r4 cs fs fs |
  fs4 e!8 ds e2 |
  fs2.-\tieShapeI ~ \forceHShiftB fs8 gs|
  a4 gs8 fs gs4 fs8 e |
  <ds fs>2 e->~ |
  e2 ds4 cs |
  ds4 es8 fs r2 |
  r4 cs fs fs |
  
  \barNumberCheck 105
  bs,2 cs~ |
  cs2 ds |
  cs4 cs fs fs |
  fs4 e8 ds e4 fs8 gs |
  as2 ds,~ |
  ds2 e |
  ds2. e8 fs |
  es4 cs4~ cs2 |
  
  \barNumberCheck 113
  cs4 cs fs fs |
  fs2 es4 ds |
  es1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandMiddle
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 3 |
  \voiceOne gs1 |
  fss2 b |
  as1 |
  gs2 a!~ |
  a4 gs8 fs gs4 cs |
  
  \barNumberCheck 9
  fs,4 gs8 a b2~ |
  b4 a gs fs |
  gs2 fs4 e |
  ds2. d4 |
  cs2 cs |
  cs2 r |
  s1 * 2 |
  
  \barNumberCheck 17
  s1 * 2 |
  r2 gs'-> |
  fss2-> b-> |
  as1-> |
  gs4 a! gs fs |
  \oneVoice es2 a |
  gs1 |
  
  \barNumberCheck 25
  fs1~ |
  fs4 gs8 fs e4 fs8 gs |
  a4 fs gs2 |
  cs,1~ |
  cs1 |
  \voiceOne fs4 gs as b |
  e,4 ds e fs |
  gs4 fs gs a! |
  
  \barNumberCheck 33
  b1~ |
  b1~ |
  b2 cs-> |
  bs2-> e-> |
  ds1-> |
  cs2 \oneVoice cs~ |
  cs4 b as gs~ |
  gs4 fss8 es fss2 |
  
  \barNumberCheck 41
  gs8 as gs fss  gs as b gs |
  a!8 b a gs  as b cs as |
  b8 cs b as  bs cs ds bs |
  \voiceOne cs1 |
  s1 * 4 |
  
  \barNumberCheck 49
  r4 cs fs fs |
  fs4 es8 ds es2 |
  fs4 fs,8 gs a4 b |
  cs8 b cs d  cs b a cs |
  b8 a b cs  b a gs b |
  a8 gs a b  a b cs d |
  e8 d e fs  e d cs e |
  d8 cs d e  d cs b d |
  
  \barNumberCheck 57
  cs8 b cs d  cs b a cs |
  b1 |
  a8 gs fs e  ds cs bs cs |
  ds2 s |
  s1 * 3 |
  \voiceTwo r4 cs fs fs |
  
  \barNumberCheck 65
  fs4 \voiceOne e8 ds e2-> |
  ds2-> gs-> |
  es4 r r2 |
  R1 |
  r4 ds gs gs |
  gs4 fs!8 e fs2~ |
  fs8 a gs fs  es ds es cs |
  fs8 es fs gs  a gs a b |
  
  \barNumberCheck 73
  cs bs cs ds  e ds e fs |
  r4 gs,, cs cs |
  cs4 bs8 as \stemLengthA \forceHShiftB bs2 |
  \stemLengthA \forceHShiftB cs2 s |
  s1 * 4 |
  
  \barNumberCheck 81
  cs1-> |
  bs2-> \forceHShiftB e_> |
  ds1_> |
  \voiceTwo cs4 e a a |
  a4 gs8 fs gs2~ |
  \voiceOne gs2 \stemLengthA fs |
  gs1 |
  a2 s |
  
  \barNumberCheck 89
  gs1 |
  gs1 |
  fs2 ds |
  e8 ds e fs  e ds cs e |
  ds8 cs ds e  ds cs bs ds |
  cs4 e a a |
  \voiceTwo a4 g8 fs e2 |
  r4 fs b b |
  
  \barNumberCheck 97
  \voiceOne b4 a8 gs  a gs fs e |
  ds2 r4 gs |
  ds'4 ds ds cs8 bs |
  cs1-> |
  bs2-> s |
  r4 cs, fs fs |
  fs4 es8 ds cs2~ |
  cs2 ds~ |
  
  \barNumberCheck 105
  ds4 ds gs gs |
  gs4 fs8 e fs4 fs~ |
  fs4 e8 ds e4 ds8 cs |
  ds4 gs, cs cs |
  cs4 b!8 as ds2~ |
  ds8 e fs4~ fs8 e ds cs |
  gs'1 |
  a2. gs8 a |
  
  \barNumberCheck 113
  b!4 a gs fs |
  cs'4 b8 a gs4 fs |
  gs1 |
}

leftHandLower = \relative {
  cs1 |
  bs2 e |
  ds1 |
  \voiceTwo cs4 ds e2~ |
  e4 ds8 cs ds4 gs |
  cs,4 ds8 e fs2~ |
  fs4 e ds cs |
  ds2 cs~ |
  
  \barNumberCheck 9
  cs4 b a gs |
  a2 as |
  bs2 cs |
  gs4 a b!2~ |
  b4 a gs fs |
  cs'2 a~ |
  \oneVoice a4 gs fs e |
  fs2 gs |
  
  \barNumberCheck 17
  a4 gs a b |
  cs4 b cs ds |
  \voiceTwo e2 cs~ |
  cs4 b as gs |
  cs2 ds |
  gs,2 r |
  s1 * 2 |
  
  \barNumberCheck 25
  s1 * 4 |
  r2 b |
  <as cs>2 <ds fs> |
  cs1 |
  b1~ |
  
  \barNumberCheck 33
  b4 gs' fs e |
  b'2 b, |
  e2 a |
  gs2 cs~ |
  cs2 bs2 |
  cs2 s |
  s1 * 2 |
  
  \barNumberCheck 41
  s1 * 3 |
  r4 cs,8 ds e4 fs |
  gs8 fs gs a  gs fs e gs |
  fs8 e fs gs  fs e ds fs |
  e8 ds e fs  e a gs a |
  ds,8 cs ds e  ds gs fs gs |
  
  \barNumberCheck 49
  cs,2 r |
  R1 |
  r2 fs-> |
  es2-> a-> |
  gs1-> |
  fs2 s |
  r4 e a a |
  a4 gs8 fs gs2 |
  
  \barNumberCheck 57
  a2 fs |
  b,2 e |
  a,1 |
  gs2 r |
  s1 * 4 |
  
  \barNumberCheck 65
  e4\rest gs cs cs |
  cs4 b8 as  b as gs b |
  as8 gs as b  as gs fs as |
  gs8 fs gs as  gs b as gs |
  fss2 gs |
  as2 ds |
  gs,2 r |
  R1 |
  
  \barNumberCheck 73
  cs,1->\ff |
  bs2-> e-> |
  ds1-> |
  cs4 cs8 ds e4 fs |
  \oneVoice gs8 fs gs a  gs fs e gs |
  fs8 e fs gs  fs ds e fs |
  e4 e' a a |
  a4 gs8 fs gs4 gs, |
  
  \barNumberCheck 81
  \voiceTwo cs4 b a2 |
  gs4 r r2 |
  s1 * 3 |
  r4 cs fs fs |
  fs4 es8 ds! es2 |
  fs2 fs~ |
  
  \barNumberCheck 89
  fs8 fs e ds e4 cs |
  r4 gs cs cs |
  cs4 bs8 as  bs cs ds bs |
  e,2 r4 a |
  ds,2 r4 gs |
  cs,4 r r2 |
  s1 * 2 |
  
  \barNumberCheck 97
  r2 cs'-> |
  bs2-> e-> |
  ds1-> |
  cs4 e a a |
  a4 gs8 fs  e ds cs b! |
  as2 a2~ |
  a4  gs8 fs es2 |
  fs1 |
  
  \barNumberCheck 105
  gs1~ |
  gs1~ |
  gs1~ |
  gs1 |
  fss1 |
  gs1 |
  gs1 |
  cs1~ |
  
  \barNumberCheck 113
  cs1~ |
  cs1~ |
  cs1 |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1\p |
  s1 * 5 |
  s4 s2.\cresc |
  s1 |
  
  \barNumberCheck 9
  s1 * 5 |
  s1\f |
  s1 |
  s4 s2.\dim |
  
  \barNumberCheck 17
  s1 |
  s1\cresc |
  s2 s-\tweak X-offset -1 \f |
  s1 * 2 |
  s1-\tweak Y-offset 1 \dim |
  s1 * 2 |
  
  \barNumberCheck 25
  s1\p |
  s1 |
  s4 s2.\cresc |
  s1 * 4 |
  s1\f |
  
  \barNumberCheck 33
  s1 |
  s4 s2.\dim |
  s2 s-\tweak Y-offset 1 \p |
  s1 * 5 |
  
  \barNumberCheck 41
  s2 s\cresc |
  s1 * 2 |
  s1\f |
  s1 * 4 |
  
  \barNumberCheck 49
  s1 * 2 |
  s2 s\dim |
  s4 s2.-\tweak Y-offset 2 \p |
  s1 * 4 |
  
  \barNumberCheck 57
  s2 s\cresc |
  s1 |
  s1\f |
  s1 * 5 |
  
  \barNumberCheck 65
  s1 * 2 |
  s4 s2.\p |
  s1 |
  s2 s8 s4.\cresc |
  s1 |
  s2. s4^\piuCresc |
  s1 |
  
  \barNumberCheck 73
  s1 * 6 |
  s2. s4\dim |
  s1 |
  
  \barNumberCheck 81
  s4.\< s8\! s4.\> s8\! |
  s4 s2.\p |
  s1 * 2 |
  s4. s8\cresc s2 |
  s1 * 3 |
  
  \barNumberCheck 89
  s1 |
  s4 s2.\f |
  s1 * 3 |
  s4 s2.\dim |
  s1 * 2 |
  
  \barNumberCheck 97
  s1 |
  s2 s-\tweak X-offset -1 \p |
  s1 * 2 |
  s4 s2\< s4\! |
  s2.\> s4\! |
  s1 |
  s4 s2.\cresc |
  
  \barNumberCheck 105
  s1 * 2 |
  s1\f |
  s1 |
  s1\fz |
  s4 s2.\dim |
  s1 |
  s2.\p \tag layout { s4^\dimERall } \tag midi { s4\dim } |
  
  \barNumberCheck 113
  s1 * 2 |
  s1\pp |
}

tempi = {
  \tempo "Moderato e maestoso" 4 = 112
  s1 |
  \set Score.tempoHideNote = ##t
  s1 * 110 |
  s2. \tempo 4 = 104 s4 |
  s2 \tempo 4 = 96 s |
  s2 \tempo 4 = 88 s |
  s1 |
}

forceBreaks = {
  % page 1
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  
  % page 3
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  
  % page 4
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
}

fugueFourNotes =
\score {
  \header {
    title = "Fugue 4"
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

fugueFourMidi =
\book {
  \bookOutputName "fugue-4-bwv-849"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

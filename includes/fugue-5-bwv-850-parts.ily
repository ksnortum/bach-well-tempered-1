%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key d \major
}

rightHandUpper = \relative {
  s1 * 3 |
  \voiceOne r4 d'32 e fs g fs e fs d  b'8. b16 a8. g16 |
  r4 a32 b cs d cs b cs a  fs'8. fs16 e8. d16 |
  cs8~ cs32 e fs g!  a8. a16  a8~ a32 d, e fs  g8. g16 |
  g4 <d fs>8. <cs e>16  d8. e16 cs8. cs16 |
  cs4 b32 cs d e d cs d b  g'8. g16 fs8. e16 |
  
  \barNumberCheck 9
  d4 b'16 a b gs  gs fs gs e  e d e cs |
  cs4  a'16 g! a fs  fs e fs d  d c d b |
  b4 g32 a b c b a b g  e'8._\sf e16 d8. c16 |
  b8. cs!16 d2 cs4 |
  d4 d32 e fs g fs e fs d  b'8.^\sf b16 a8. g16 |
  fs8~ fs32 d e fs  g8. g16  g8. a16 fs8. fs16 |
  fs8. e32 ds e4~  e8. ds16 e8. fs16 |
  b,8. c32 a <g b>8. <e c'>16  <e g>4 <ds fs> |
  
  \barNumberCheck 17
  e32 fs g a g fs g e  g'8 r r2 |
  a,32 b cs d cs b cs a  fs'8 r r2 |
  g,32 a b c b a b g  e'8 r r2 |
  fs,32 g a b a g a fs  d'8. d16  d8. e16 \tag layout { cs8.\prallprall } 
    \tag midi { cs8.\prall } d32 e |
  fs4  b16 a b g  g fs g e  e d e cs |
  cs4 d8. d16 d8. e16 cs8.\trill d16 |
  d4  b32 cs d e d cs d b  e4  a,32 b cs d cs b cs a |
  d4  g,32 a b c b a b g  \oneVoice cs d e fs e d e cs  fs g a b a g a fs |
  
  \barNumberCheck 25
  \voiceOne b8. cs,16 d8. e16 fs8. fs,16 g8. a16 |
  b8. b16 cs!8. d16 fs,4 e |
  d1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  R1 |
  r4 a32( b cs d cs b cs a  fs'8. fs16 e8. d16 |
  cs4) fs8. fs16  b,8~ b32 b cs d  e16 d e cs |
  a4 \voiceFour d4~ d cs |
  \voiceThree fs8. gs16 \voiceFour a4~ a gs |
  a4 \voiceThree cs4 d2 |
  cs8~ cs32 e d cs s4  b4 e, |
  s4 \voiceFour b'~ b as |
  
  \barNumberCheck 9
  b4 r  <b d>8. <gs b>16 q8. <e a>16 |
  q4 r <a c>8. <fs a>16 q8. <d g!>16 |
  q4 r r2 |
  r4 d32 e fs g fs e fs d  b'8. b16 a8. g16 |
  fs8. a16 d4~  d c~ |
  c4 b a2 |
  g4 <g b> <fs a>2~ |
  q4 s2. |
  
  \barNumberCheck 17
  s4 \voiceThree g\rest e8. cs16 cs8. a16 |
  \voiceFour a4 \voiceThree g'\rest d8. b16 b8. g16 |
  \voiceFour g4 \voiceThree e'\rest cs8. a16 a8. fs16 |
  \voiceDown fs4 b32 cs d e d cs d b \voiceUp g'2 |
  fs4 r <b d>8. <g b>16 q8. <e a>16 |
  q4 <fs a>8. q16 <fs b>8. <g b>16 <e a>4 |
  <fs a>4 r <e b'>\sf r |
  <d a'>4 r s2 |
  
  \barNumberCheck 25
  r8. <e a>16 <fs a>8. <g cs>16 <a d>8. <a, d>16 <b d>8. <c fs>16 |
  <d g>8. q16 <e g>8. <fs a>16 d4 cs |
  s1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 4 |
  \voiceUp d'4 \voiceDown cs4 b2 |
  a4 \voiceUp fs'32 g! a b a g a fs  b4  e,32 fs g a g fs g e |
  a4 a8. g16  fs8. g16 a4 |
  <d, a'>4 \voiceDown d cs2 |
  
  \barNumberCheck 9
  b4 s2. |
  s1 * 4 |
  r4 g32 a b c b a b g  e'8. e16 d8. c16 |
  b4 s2.  |
  s4 \voiceUp e8. \voiceDown fs,16  g8. a16 b8. a16 |
  
  \barNumberCheck 17
  g4 r b8. g16 g8. e16 |
  e4 r a8. fs16 fs8. d16 |
  d4 r g8. e16 e8. cs16 |
  cs4 s r a'32 b cs d cs b cs a |
  d4 s2. |
  s1 *3 |
  
  \barNumberCheck 25
  s1 |
  s2 a4 << { a } \\ { g } >> |
  <fs a>1 |
}

leftHandLower = \relative {
  r4 d32( e fs g fs e fs d  b'8.\sf b16 a8. g16) |
  fs8.( g16 fs8. e16  d4 e) |
  a,8~ a32 e' fs g a2\sf g4~\sf |
  g8. fs32 e fs8.( d16  g8. e16 a8. a,16) |
  d8. e16 \voiceTwo fs8. e16  d8. b16 e4 |
  a,4 r r2 |
  \oneVoice r4 d,32 e fs g fs e fs d  b'8. b16 a8. g16 |
  fs8~ fs32 d' e fs  \voiceTwo g8. fs16 e8. cs16 fs4 |
  
  \barNumberCheck 9
  b,32 cs d e d cs d b \oneVoice gs'8 r r2 |
  a,32 b cs d cs b cs a  fs'8 r r2 |
  g,32 a b c b a b g  e'8.^\sf d16 c4 d |
  g8. a16 b8. a16  g8. e16 a8. a,16 |
  d32 e fs g fs e fs d  b'8. a16 g8. e16 a8. a,16 |
  \voiceTwo d4 e c'8. c16 d8. d,16 |
  g4 \oneVoice e,32 fs g a g fs g e  c'8.\sf c16 b8. a16 |
  g8. fs16 \voiceTwo g8. a16 b2 |
  
  \barNumberCheck 17
  e4  b'16 a b g  g fs g e  e d! e cs! |
  cs4  a'16 g a fs  fs e fs d  d cs d b |
  b4  g'16 fs g e  e d e cs  cs b cs a |
  a4 r  e'32 fs g a g fs g e  a4 |
  d,32 e fs g fs e fs d  g8 r r2 |
  \oneVoice <g, g'>4  fs'32 g a g fs e d cs  b cs d cs b a b g  a8. a16 |
  d,8~ d32 d' e fs  g4\sf  cs,32 d e fs e d e cs  fs4\sf |
  b,32 cs d e d cs d b  e fs g a g fs g e  a b cs d cs b cs a
    d e fs g fs e fs d |
    
  \barNumberCheck 25
  g8. <\snh g,, g'>16 <\snh fs fs'>8. <\snh e e'>16 <\snh d d'>8. <\snh c c'>16
    <\snh b b'>8. <\snh a a'>16 |
  <\snh g g'>8. <\snh fs fs'>16 <\snh e e'>8. <\snh d d'>16 \voiceTwo 
    <\snh a' a'>2 |
  <\snh d, d'>1\fermata |
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
  s1^\fMarcato |
  s2 s\sf |
  s4 s2.\sf |
  s2 s\sf |
  s2 s\sf |
  s8 s4.\p s2 |
  s4\cresc s2.\f |
  s4 s\sf s2\sf |
  
  \barNumberCheck 9
  s4 s-\tweak Y-offset -2 \fp s2-\tweak Y-offset -2 \cresc |
  s4\f s\fp s2\cresc |
  s1\f  |
  s2 s\sf |
  s4 s2.\sf |
  s4 s\sf s2\sf |
  s4 s2.-\tweak Y-offset -2 \ff |
  s1 |
  
  \barNumberCheck 17
  s4\> s\p s2-\tweak Y-offset -1 \cresc |
  s4-\tweak Y-offset -4 \f\> s\p s2-\tweak Y-offset -1 \cresc |
  s4-\tweak Y-offset -4 \f\> s\p s2-\tweak Y-offset -1 \cresc |
  s4-\tweak Y-offset -2 \f s\sf s\sf s\sf |
  s2 s4-\tweak Y-offset -2 \sfp s-\tweak Y-offset -2 \cresc |
  s1\f |
  s1 |
  s4\sf s\sf s\sf s\sf |
  
  \barNumberCheck 25
  s1\ff |
  s1 * 2 |
}

tempi = {
  \tempo "Allegro moderato" 4 = 76
  s1 * 25
  \set Score.tempoHideNote = ##t
  \tempo 4 = 69
  s2 \tempo 4 = 63 s |
  \tempo 4 = 60
  s1 |
}

forceBreaks = {
  % page 1
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
}

fugueFiveNotes =
\score {
  \header {
    title = "Fugue 5"
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

fugueFiveMidi =
\book {
  \bookOutputName "fugue-5-bwv-850"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

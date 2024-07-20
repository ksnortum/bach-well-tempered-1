%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key e \minor
}

rightHandUpper = \relative {
  \voiceOne e''2~ e8 fs32 e ds e  e8.\trill ds32 e |
  fs1~ |
  fs16( e ds e  fs e g fs)  a4(~ a32 c b a  g16[ a32 fs]) |
  g2~ g8 c16( b  c8 e,) |
  fs2~ fs8 b16( a  b g a b) |
  e,2~ e16 c( a b  c e d e32 c) |
  d2~ d8 g16( f  e d c d32 b) |
  c2~ c16 d e fs  g fs a c, |
  
  \barNumberCheck 9
  c8 b4.~ b8 b  a16 fs g e |
  e'4 \grace { fs32 e ds } e8.  fs16 \afterGrace 15/16 fs2\trill { e32 fs } |
  g2~ g8 b,( g e) |
  c'8~ c32 b a b  c[ d c b] c16 d \afterGrace 15/16 d2\trill { c32 d } |
  e2~ e8 d16 c  d b gs a |
  d2~ d16 f e d  c8.\trill d32 b |
  c1~ |
  c4~ c16 a gs a  c a gs a  e a gs a |
  
  \barNumberCheck 17
  c2~ c8 b  cs e16 ds |
  e1~ |
  e8 ds16 fs  a c b ds,  e2~ |
  e4~ e16 fs32 e ds e cs ds  \afterGrace 15/16 
    { \slashedGrace { e8 } ds4.\trill } { cs32 ds } e8 |
  e1~ |
  e1~ |
  \oneVoice <c e>16 a' b c  b c b a  e a b c  b c b a |
  b16 a gs a  b a gs a  d,8 b'->~  b16 a gs a |
  
  \barNumberCheck 25
  f16 b, c d  c d c b  e d e f  e f e d |
  c16 gs a b  a gs a b  c a' g! f  e f e d |
  cs16-> e fs! g  fs g fs e  ds-> fs g a  g a g fs |
  g16-> g, a b  a b a g  f'-> gs, a b  a b a gs! |
  e'16-> a, b c  b c b a  d-> b c d  c d c b |
  c16-> a gs a  e a gs a  c2->~ |
  c16 a gs a  ds, a' gs a  c a gs a  e a gs a |
  c16 fs, g! a  g fs es fs  b e, fs g  fs e ds e |
  
  \barNumberCheck 33
  a16 g' a b  a b a g  a, fs' g a  g a g fs |
  as,16 e' fs g  fs g fs e  \voiceOne ds2-> |
  r16 b c d  c d c b  a2-> |
  r16 g a b  a b a g  r fs g a  g a g fs |
  r16 e fs g  fs g fs e  ds2-> |
  \oneVoice b16 cs ds e  fs g a b  \voiceOne c!2 |
  cs2 ds |
  e16 d! c b  a g fs e  c' b a g  fs e ds cs |
  ds16 b fs'8~  fs16 e8 ds16  <b e>2\arpeggio\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour <g' b>8 r r4 q8 r r4 |
  <a c>8 r r4 q8 r r4 |
  q8 r r4*3/4 \hideNoteHead fs'16~ <b, fs'>8 r r4 |
  <b e>8 r r4 q8 r r4 |
  <a c>8 r r4 <b d>8 r r4 |
  <g b>8 r r4 <a c>8 r r4 |
  <fs a>8 r r4 < g b>8 r r4 |
  <e g>8 r8 r4 <fs! a>8 r r4 |
  
  \barNumberCheck 9
  <d g>8 r r4 q8 r r4 |
  <a' cs>8 r r4 <a ds>8 r r4 |
  <b e>8 r r4 <g b>8 r r4 |
  <f a>8 r r4 <f b>8 r r4 |
  <g c>8 r r4 <e g>8 r r4 |
  <fs! a>8 r r4 <gs b>8 r r4 |
  <e a>8 r r4 q8 r r4 |
  <ds a'>8 r r4 <e a>8 r r4 |
  
  \barNumberCheck 17
  <fs a>8 r r4 q8 r r4 |
  <gs b>8 r r4 <as cs>8 r r4 |
  <fs a!>8 r r4 <g b>8 r r4 |
  <g cs>8 r r4 <fs b>8 r r4 |
  <g b>8 r r4 <gs b>8 r r4 |
  <a c>8 r r4 <b d>8 r r4 |
  s1 * 2 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 |
  s2 r16 a b c!  b c b a |
  g2->  r16 fs g a  g a g fs |
  e2-> ds-> |
  cs2->  r16 a b c b c b a |
  s2  r16 fs' g a  g a g fs |
  r16 g a b  a b a g  r a b c  b c b a |
  g8 r r4 s2 |
  % final gs in SrcB
  s16 b,8.~ b8 a  gs2 |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  e16 g a b  a b a g  e g a b  a b a g |
  e16 a b c  b c b a  e a b c  b c b a |
  ds,16 a' b c  b c b a  ds, a' b c b c b a |
  e16 g a b  a b a g  e g a b  a b a g |
  e16 fs g a  g a g fs  d! fs g a  g a g fs |
  d16 e fs g  fs g fs e  c e fs g  fs g fs e |
  c16 fs g a  g a g fs  b, g' a b  a b a g |
  b,16 e fs! g  fs g fs e  a, fs' g a  g a g fs |
  
  \barNumberCheck 9
  g,16 a' b c  b c b a  g b c d  c d c b |
  g16 cs d e  d e d cs  fs, ds' e fs  e fs e ds |
  e,16 fs g a  g a g fs  e g a b  a b a g |
  e16 a b c  b c b a  d, b' c d  c d c b |
  c,16 d e f  e f e d  c e f g  f g f e |
  c16 fs! g a  g a g fs  b, gs' a b a b a gs |
  <a, a'>16 b' c d  c d c b  g! a b c  b c b a |
  fs!16 a b c  b c b a  e a b c  b c b a |
  
  \barNumberCheck 17
  ds,16 a' b c  b c b a  ds, fs g! a  g a g fs |
  d!16 gs a b  a b a gs  cs, e fs g  fs g fs e |
  c!16 fs g a  g a g fs  b, e fs g  fs g fs e |
  as,16 e' fs g  fs g fs e  b fs' g a!  g a g fs |
  e16 g a b  a b a g  d gs a b  a b a gs |
  c,16  a' b c  b c b a  gs b c d  c d c b |
  a16 c d e  d e d c  a c d e  d e d c |
  a16 d e f  e f e d  a d e f  e f e d |
  
  \barNumberCheck 25
  gs,16 d' e f  e f e d  gs, b c d  c d c b |
  a16 b c d  c d c b  a b c d  c d c b |
  g!16 cs d e  d e d cs  fs, ds' e fs  e fs e ds |
  e16 e, fs g  fs g fs e  d! e f g!  fs g fs e |
  c16 fs! gs a  gs a gs fs  b, gs' a b  a b a gs |
  a16 a, b c  b c b a  g! a b c  b c b a |
  fs16 a b c  b c b a  e a b c  b c b a |
  ds,16 a' b c  b c b a  e! g a b  a b a g |
  
  \barNumberCheck 33
  c,4 r r16 a'' b c  b c b a |
  cs,4 r  b16 fs' g a  g a g fs |
  b,16 g' a b  a b a g  b, a' b c  b c b a |
  b,16 b' c d  c d c b  b, a' b c  b c b a |
  b,16 g' a b  a b a g  b, fs' g a  g a g fs |
  g16 b a g  fs e ds fs  << { r16 ds e fs  e fs e ds } \\ { b2 } >> |
  <<
    { r16 e fs g  fs g fs e  r fs g a  g a g fs | }
    \\
    { b,2 b | }
  >> 
  <<
    { e8 \oneVoice r r4 a,16 b c d  e fs g a~ | \voiceThree a8. a16 g8 fs }
    \\
    { c8 s4. s2 | b2 }
  >> \voiceTwo <e, e'>2\arpeggio\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s2\sf s\sf |
  s2\sf s\sf |
  s2\sf s\sf |
  s2\sf s\sf |
  s2\sf s\sf |
  s2\sf s\sf |
  s2\sf s\sf |
  s2\sf s4\sf s\dim |
  
  \barNumberCheck 9
  s8-\tweak Y-offset -1 \p s^\dolce s2. |
  s1\cresc |
  s1\fp |
  s16 s8.\cresc s2. |
  s1\fp |
  s16 s8.\cresc s2. |
  s1 * 2 |
  
  \barNumberCheck 17
  s2\f s\sf |
  s2\sf s\sf |
  s2\sf s\sf |
  s2\sf s\sf |
  s16 s8.\dim s2. |
  s1 |
  s1\f |
  s1 |
  
  \barNumberCheck 25
  s1 * 5 |
  s2 s\dim |
  s2\p s\cresc |
  s1 |
  
  \barNumberCheck 33
  s1\f |
  s1\sf |
  s1 * 3 |
  s1\ff |
  s1 |
  s4 s2.^\dimERall |
  s2 s-\tweak Y-offset -2 \p |
}

tempi = {
  \tempo "Allegro molto moderato" 4 = 84
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 6 |
  \tempo "Presto" 2 = 80
  s1 * 2 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 7 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 2 = 72 s \tempo 2 = 66 s \tempo 2 = 60 s |
  \tempo 2 = 56
  s4 \tempo 2 = 52 s \tempo 2 = 40 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 3
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

preludeTenNotes =
\score {
  \header {
    title = "Prelude 10"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
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

preludeTenMidi =
\book {
  \bookOutputName "prelude-10-bwv-855"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

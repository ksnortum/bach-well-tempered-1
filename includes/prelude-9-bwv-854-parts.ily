%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 12/8
  \key e \major
  \set Staff.connectArpeggios = ##t
}

rightHandUpper = \relative {
  e'8 gs b  e ds e  cs\prall b cs  e4.-> |
  b8\prall a b  e4.->  a,8 b cs  b cs a |
  gs8 b e  gs4.~  gs8 fs e  ds e cs |
  ds2.~ ds8 e fs  gs cs, e |
  fs,8 as cs  fs es fs  gs, b ds  e4. |
  fs,8 as cs  e ds e  fs, as cs  d4.~ |
  d8 e d  cs d b  as gs fs  g' fs es | 
  e!8 ds! d  cs16 ds e8 as,  b2.~ |
  
  \barNumberCheck 9
  b8 ds fs  b as b  cs, es gs  b4.~ |
  b8 gs a~  a fs gs~  gs es fs  es16 fs gs8 cs, |
  \voiceOne d2.~ d4.~ d8 d cs |
  cs4.~ cs8 b a  gs a b~  b a gs |
  a4.~ a8 b gs  a4.~ a8 b16 a gs fs |
  \oneVoice gs16 fs e fs gs a  b a gs a b cs  d cs b a gs fs  e8 r r |
  a8 cs e  a gs a  fs\prall e fs  a4. |
  e8\prall d e  a4. d,8 e fs  e fs d |
  
  \barNumberCheck 17
  cs8 a b  cs4.~ cs8 b a  gs a fs |
  gs8 e fs  gs4.~ gs8 a b  cs fs, a |
  b,8 ds fs  b a b  cs, e gs  a4. |
  b,8 ds fs  a gs a  b, ds fs  g4.~ |
  g8 a \once \omit Accidental g  fs g e  ds cs b  c' b as |
  a!8 gs g  fs16 gs a8 ds,  e2.~ |
  e2.~^\rall e4.~ e4 ds!8 |
  e1. |
  \bar "|."
}

rightHandLower = \relative {
  s1. * 8 |
  
  \barNumberCheck 9
  s1. * 2 |
  \voiceFour r8 b' gs  es gs fs  gs b a  b4.~ |
  b8 a gs  fs4.~ fs es |
  fs4.~ fs4 e!8  ds4. r4 r8 |
  s1. * 3 |
  
  \barNumberCheck 17
  s1. * 6 |
  \voiceDown r8 gs,8 b  d cs d  cs4.~ cs4 c8 |
  b1. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree r4 r8 gs4. a~ a8 gs fs |
  gs4.~ gs8 a gs  fs2. |
  e8 s4 s4. r4 cs'8 fs4.->~ |
  fs2. r4 b,8 e4.~ |
  e4. ds2.~ ds8 cs b |
  as2.~ as4. b~ |
  b8 cs d  e2.~ e8 ds cs |
  b4.~ b8 as e'!  ds2. |
  
  \barNumberCheck 9
  s2. r8 gs, b  d b cs~ |
  cs4. b bs cs |
  r8 d, es  gs b a  b gs fs  gs16 a b8 es, |
  s1. * 3 |
  r4 r8 cs'4. d~ d8 cs b |
  cs4.~ cs8 d cs  b2. |
  
  \barNumberCheck 17
  s2. r4 fs8\< b4.~\! |
  b2. r4 e,8 a4.~ |
  a4. gs2.~ gs8 fs e |
  ds2.~ ds4. e~ |
  e8 fs g  a2.~ a8 g fs |
  e4.~ e8 ds a'!  gs e gs  a gs a |
  \voiceTwo e2. \voiceThree a,8 cs e \voiceTwo a gs a |
  gs1. |
}

leftHandLower = \relative {
  \voiceTwo e1.~ |
  e2.~ e4. ds |
  e8 gs b  e ds e  as,2. |
  b,8 ds fs  b as b  e,2. |
  fs1.~ |
  fs4.~ fs4 cs8  d4.~ d8 e fs |
  g2. fs4.~ fs8 gs as |
  b4 es,8 fs4.  b,8 ds fs  b a b |
  
  \barNumberCheck 9
  gs4.~ gs8 fs gs  es2. |
  fs4. d ds cs |
  b1. |
  \oneVoice fs'4. a, b cs |
  fs,8 a cs  fs e! fs  b, ds fs  b a b |
  e,8 gs b  e d cs  b4 a8  gs16 d' cs b a gs |
  \voiceTwo a1.~ |
  a2.~ a4. gs |
  
  \barNumberCheck 17
  \oneVoice a,8 cs e  a gs a \voiceTwo ds,!2. |
  e,8 gs b  e ds e  a,2. |
  b1.~ |
  b4. b4 fs8  g4.~ g8 a b |
  c2. b4.~ b8 cs ds! |
  e4 as,8 b4.  cs2. |
  gs2. a |
  e1. |
}

leftHand = {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s1.\p |
  s1. |
  s4\< s8\! s4. s2. |
  s4 s8\cresc s4. s2. |
  s2. s4\< s8\! s4. |
  s2. s4\< s8\! s4. |
  s1.\f |
  s1.\dim |
  
  \barNumberCheck 9
  s1.\p |
  s4. s4\cresc s8 s2. |
  s1.\f |
  s1.\dim |
  s2.\p s4.\< s\! |
  s8 s4\< s4. s\> s4 s8\! |
  s1.-\tweak X-offset 2 \p |
  s1. |
  
  \barNumberCheck 17
  s1.\cresc |
  s1.\f |
  s1. |
  s2.\< s2\sf\> s8 s\! |
  s1.\dim |
  s1.\p |
}

tempi = {
  \tempo "Allegretto" 4. = 84
  s1. * 22 |
  \set Score.tempoHideNote = ##t
  \tempo 4. = 80
  s4. \tempo 4. = 76 s \tempo 4. = 72 s \tempo 4. = 69 s |
  s1. |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.
}

preludeNineNotes =
\score {
  \header {
    title = "Prelude 9"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
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
      \Staff
      \consists Span_arpeggio_engraver
    }
    \context {
      \Score
      \override Stem.details.beamed-lengths = #'(3.5 3.9)
    }
  }
}

\include "articulate.ly"

preludeNineMidi =
\book {
  \bookOutputName "prelude-9-bwv-854"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

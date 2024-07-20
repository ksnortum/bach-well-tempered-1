%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 1) (0 . 0) (0 . 0) (0 . 0)) \etc

tieShapeA = \shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 2)) \etc
tieShapeB = \shape #'((0 . 0) (0 . 0) (-1 . 0) (-1 . 0)) \etc
tieShapeC = \shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 2)) \etc

%%% Music %%%

global = {
  \time 9/8
  \key a \minor
}

rightHandUpper = \relative {
  a'16( b c8 e  c a e  a c e) |
  b16( c d8 f  d b gs  b d f) |
  d16( e f8 gs  f d b  d f gs) |
  a8 g!16 f e d  c8 r r  r4 r8 |
  <b e g>4.~  e16 ds e ds e ds  e b a g fs e |
  <ds a' c>4.~  c'16 b c b c b  c g' fs e ds e |
  <fs, a c ds>4.~  ds'16 e fs e fs e  fs e ds fs b, a |
  g4.~  g8 e g  b e as, |
  
  \barNumberCheck 9
  <b e g>4.~  g'16 fs g fs g fs  g f e d! cs b |
  <a d f>4.~  f'16 e f e f e  f e d c! b a |
  <g c e>4.~  e'16 d e d e d  c g' f e d c |
  b16 e d c b a  g c b a g f  e a g f e d |
  e16 f g8 c  g e c  e g c |
  f,16 g a8 c  a f c  f a c |
  b!16 c d8 f  d b g  b d f |
  \voiceOne e4.-\tieShapeA ~ <c e>2. |
  
  \barNumberCheck 17
  ef4.( d a'8) r r |
  bf,2.-\tieShapeC ~ <g bf>4. |
  bf4.( a e'8) r r |
  \oneVoice f,4.~  f16 e f a d a  f' e d c! b! a |
  gs'4.~  gs16 a b a gs fs  e f e d c b |
  a16 b c8 e  c a e  e'16 d c b a gs |
  a16 b c8 a'  e c a  a'16-> g! f e d c |
  f16-> e d c b a  d-> c b a gs fs  b-> a gs fs e d |
  
  \barNumberCheck 25
  e16 a g! f! e d  c f e d c b  a d c b a gs |
  a16 b cs d f e  g!8 e c  bf'16 c, a' c, g' c, |
  f16 a b! cs d e  \voiceOne f8 d b  a'16 gs a gs a gs |
  a2.
  \bar "|."
}

rightHandLower = \relative {
  s1*9/8 * 8 |
  
  \barNumberCheck 9
  s1*9/8 * 7 |
  \voiceFour 
  << 
    { r16 d'' c b c g~ g2. | } 
    \new Voice { \voiceOne s4 c8-\tieShapeB ~ \hideNoteHead c2. | } 
  >>
  
  \barNumberCheck 17
  r16 a bf c bf a  r a bf c bf a  r a bf c bf a |
  << 
    { r16 a g fs g d~  d4.~  d4. | } 
    \new Voice { \voiceOne s4 g8~  g4.~ \hideNoteHead g4. | } 
  >>
  r16 e f! g f e  r e f g f e  r e f g f e |
  s1*9/8 * 5 |
  
  \barNumberCheck 25
  s1*9/8 * 2 |
  s4. s4 \hideNoteHead b'8~  b4. |
  cs2.
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  a,4.-\slurShapeA (  a'16 gs a gs a gs  a8 e c) |
  a4.-\slurShapeB (  a'16 gs a gs a gs  a8 f d) |
  a4.-\slurShapeB (  a'16 gs a gs a gs  a8 f d) |
  a4.  r8 a'' e  c a ds |
  e,16( fs g8 b  g e b  e g b) |
  fs16( g a8 c  a fs ds  fs a c) |
  a16 b c8 ds  c a fs  a c ds |
  e8 e,16 fs g a  b8 r r  r4 r8 |
  
  \barNumberCheck 9
  \clef treble e16 fs g8 b  g e b  cs e a |
  d,16 e f8 a  f d a  b d g |
  c,16 d e8 g  e c g  a c f |
  \clef bass g,8 b d  f d b  g a b |
  \voiceThree c4.~  c16 a g f e d  c8 d16 e f g |
  a4.~  a16 bf a g f e  f g f e d c |
  d4.~  d16 e d c b! a  g a g f e d |
  \oneVoice c8 r r  e''16 d c b c g  e g f e d c |
  
  \barNumberCheck 17
  fs8 fs fs  fs fs fs  fs fs fs |
  g8 r r  bf16 a g fs g d  bf d c bf a g |
  cs8 cs cs  cs cs cs  cs cs cs |
  d16 e f8 a  f d a  d f a |
  d,16 e f8 gs  f d b  d f gs |
  c,4.  a'16 gs a gs a gs  a8 e c |
  f,4.  a'16 gs a gs a gs  a8-> b c |
  d,8-> e f  b,-> c d  gs,-> a b |
  
  \barNumberCheck 25
  c,4.~  c8 c' d  e d e |
  \voiceThree a,4.~  a16 b cs d e f  g8 f e |
  d4.~  d16 a' b cs d e  f8 e d |
  e2.
}

leftHandLower = \relative {
  s1*9/8 * 8 |
  
  \barNumberCheck 9
  s1*9/8 * 4 |
  \voiceTwo c2. c4.~ |
  c4.~ 
    << 
      { c2. | s4. } 
      \new Voice { \voiceTwo s4. s4 s16 \hideNoteHead c~ | c4. } 
    >>
    b8 r r  s4. |
  s2. s4. |
  
  \barNumberCheck 17
  s1*9/8 * 8 |
  
  \barNumberCheck 25
  s2. s4. |
  a4.~ a~ a~ |
  a4.~  a16 a'~ a4~  a4.~ |
  a2.
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
  s2.-\tweak Y-offset -1 \fp s4. |
  s2.\fp s4. |
  s2.\fp s4. |
  s2. s4. |
  s2.\fp s4. |
  s2.\fp s4. |
  s2.\fp s4. |
  s2. s4. |
  
  \barNumberCheck 9
  s2.-\tweak Y-offset -0.5 ^\pDolce 4. |
  s2.\cresc s4. |
  s1*9/8 * 2 |
  s2.\f s4. |
  s1*9/8 * 2 |
  s4. s4 s8\dim s4. |
  
  \barNumberCheck 17
  s2.\p s4. |
  s2.\f s4.\dim |
  s2.\p s4. |
  s2.\fp s4. |
  s2.\fp s4. |
  s2.-\tweak Y-offset -1 \fp s4. |
  s2.-\tweak Y-offset -1 \f s4. |
  s2. s4. |
  
  \barNumberCheck 25
  s16\sf \tag layout { s8. } \tag midi { s8.\f } s8 s2. |
  s4.\fp s2.-\tweak Y-offset 1 \cresc |
  s8.\fp s\cresc s4. s-\tweak Y-offset 3 ^\rit |
  s2.-\tweak Y-offset 2 \fz
}

tempi = {
  \tempo "Vivace" 4. = 84
  s1*9/8 * 26 |
  \set Score.tempoHideNote = ##t
  s4. \tempo 4. = 76 s \tempo 4. = 69 s |
  \tempo 4. = 40
  s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\pageBreak
  
  % page 2
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 1 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 1 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
}

preludeTwentyNotes =
\score {
  \header {
    title = "Prelude 20"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 11)
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

preludeTwentyMidi =
\book {
  \bookOutputName "prelude-20-bwv-865"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

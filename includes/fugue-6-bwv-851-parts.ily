%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key d \minor
}

rightHandUpper = \relative {
  \voiceOne r8 d'-\slurShapeA ( e f g e |
  f16 d cs d bf'4 g)\trill |
  a4~ a16 g f e  g f e d |
  e8 c'~ c16 b a b  b a gs a |
  a16 g! fs g  e'4 g, |
  f8 d'~ d16 c! bf! a  c bf a g |
  a4 g2~ |
  g8( e f[ g] a f) |
  
  \barNumberCheck 9
  bf16 g fs g  ef'4 cs\trill |
  d4 d b\trill |
  c!4 c a\trill |
  bf2.~ |
  bf8 a b![ cs] d b |
  cs16 a gs a  f'4 d\trill |
  \oneVoice e8 a~ a16 g fs e  g fs e d |
  ef16 c' bf8  r16 a gs fs  a gs fs e! |
  
  \barNumberCheck 17
  d16 c b c  c b a b  b a gs a |
  \voiceOne g!4~ g16 f e f  f e d a' |
  a2.~ |
  a4~ a16 ds e a,  c b a gs |
  \oneVoice a4~ a16 g! f e  g f e d |
  e8 e' d[ cs] b d |
  cs16 e f e  g,!4 bf!~\trill |
  bf16 a g a  a g f g  g f e f |
  
  \barNumberCheck 25
  f4~ f16 e fs g  fs g a g |
  g16 a bf a  a b c b  b cs d cs |
  cs8 a' g[ f] e g |
  f16 a bf a  \voiceOne cs,4 e~ |
  e8 a, d4 c!~ |
  c8 ef~ \oneVoice ef16 d c d  d c bf c |
  c16 bf a bf  d c bf c  c bf a bf |
  bf16 a g a  c bf a bf  bf a g a |
  
  \barNumberCheck 33
  a16 g f g  e'4 cs\trill |
  d4~ d16 c! bf a  c bf a g |
  a8 fs g[ a] bf g |
  a16 c ef8->~ ef16 d c bf  d c bf a |
  bf16 d f8->~ f16 e! d cs  e d cs b |
  cs16 e bf'!8->~ bf16 a g f  a g f e |
  g16 f e f  f e d e  e d cs d |
  \voiceOne c!4~ c16 bf a bf  bf a g d' |
  
  \barNumberCheck 41
  d2.~ |
  d4~ d16 gs a d,  f e d cs |
  d2~ d8 cs |
  d2. |
}

rightHandLower = \relative {
  \voiceDown R2. * 2 |
  r8 a-\slurShapeB ( b c! d b |
  c16 a gs a f'4 d)\trill |
  e4~ e16 d cs b  d cs b a |
  \voiceUp d4 r r |
  r8 f~ f16 e d e  e d cs d |
  cs4 d8 e cs[ d] |
  
  \barNumberCheck 9
  ef8 d g4 e! |
  r16 a g a  f4 d |
  r16 g f g  ef4 c |
  r8 a' g f e! g |
  cs,4 d8 e \voiceDown a,4 |
  \voiceUp r8 e' \voiceDown d[ cs] b d |
  cs16 e f e  a,4 c |
  bf16 d ef d  b4 e~ |
  
  \barNumberCheck 17
  e8 r r4 r |
  \voiceUp r8 a, b cs d b |
  c16 \voiceDown a gs a  \voiceUp f'4 d\trill |
  e8 f \voiceDown b,2\trill |
  a4 r r |
  s2. * 3 |
  
  \barNumberCheck 25
  r8 d c! bf a c |
  bf4 d2 |
  g,4 r r |
  r8 d' e f g e |
  f16 d cs d \voiceUp bf'4 g\trill |
  a4 \voiceDown fs, a |
  r16 g fs g  e4 g |
  r16 f! e f  d4 f |
  
  \barNumberCheck 33
  r8 f g a bf g |
  a8 f g[ a] g4 |
  r8 a g[ f!] e g |
  fs8 bf a[ g] fs a |
  g8 c b[ a] gs b |
  a8 f' e[ d] cs e |
  d8 r r4 r |
  \voiceUp r8 d e fs g[ e] |
  
  \barNumberCheck 41
  f!16 \voiceDown d cs d  \voiceUp bf'4 g\trill |
  a8 bf \voiceDown e,2\trill |
  \voiceUp r8 <a c!>^\rall <g bf> <fs a> <e g> <g bf> |
  <fs a>2. |
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
  \voiceTwo R2. * 5 |
  \oneVoice r8 d( e f g e |
  f16 d cs d  bf'4 g)\trill |
  a4~ a16 g f e  g f e d |
  
  \barNumberCheck 9
  g8 bf~ bf16 a g a  a g f! g |
  g16 f e f  a g f g  g f e f |
  f16 e d e  g f ef f  f ef d ef |
  ef16 d cs d  bf'4 g\trill |
  a4~ a16 g f e!  g f e d |
  e8 cs \voiceTwo d[ e] f d |
  a'4 fs8 e d[ fs] |
  g4 gs8 fs e[ gs] |
  
  \barNumberCheck 17
  a8 a, b[ c] d b |
  \oneVoice cs16 a gs a  f'4 d\trill |
  e8 f  e16 d c d  d c b c |
  \voiceTwo c8 d e[ d] e4 |
  a8 a, b[ cs] d b |
  \oneVoice cs16 a gs a  f'4 d\trill |
  a'8 f e[ d] cs e |
  d16 f g f  a,4 cs\trill |
  
  \barNumberCheck 25
  \voiceTwo d2. |
  r8 g8 fs e d f |
  e4~ e16 d cs b  d cs b a |
  d4 r r |
  r8 a' g f e g |
  fs16 a bf a  d,4 fs |
  g,4 c e |
  f,! bf d |
  
  \barNumberCheck 33
  e2. |
  f8 d e[ fs] g e |
  fs16 d cs d  bf'4 g\trill |
  a8 g fs[ e] d fs |
  g,8 a' gs[ fs] e gs |
  a,8 d' cs[ b] a cs |
  d8 d, e[ f] g e |
  \oneVoice fs16 d cs d  bf'4 g\trill |
  
  \barNumberCheck 41
  a8 bf  a16 g f g  g f e f 
  f8 g a[ g] a4 |
  <<
    { r8 <d, fs> <e g> <fs a> <g bf> <e g> | <fs a>2. | }
    \\
    { d2. | d2. | }
  >> 
  \bar "|."
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \tag layout { s2.-\tweak Y-offset -6 ^\pLegato } \tag midi { s2.\p } |
  s2. * 4 |
  s4 s2-\tweak extra-offset #'(0 . -2) \cresc |
  s2. |
  s2.-\tweak Y-offset -3 \f |
  
  \barNumberCheck 9
  s2. |
  s4 s2\dim |
  s2. |
  s2.\p |
  s2 s8 \tag layout { s-\tweak Y-offset -1 ^\crescWO } \tag midi { s\cresc } |
  s2. * 2 |
  s2.-\tweak X-offset -1 \f |
  
  \barNumberCheck 17
  s8 s-\tweak Y-offset 1 \dim s2 |
  s4.-\tweak Y-offset 1 \p s4\< s16 s\! |
  s4 s\> s8. s16\! |
  s2.\p |
  s2. |
  s2.\cresc |
  s2 s4\sf |
  s2. |
  
  \barNumberCheck 25
  s2\fp s4\cresc |
  s2. * 2 |
  s2.\f |
  s2. * 2 |
  s4 s2\dim |
  s2. |
  
  \barNumberCheck 33
  s8\p s\< s4. s8\! |
  s4.\> s8\! s4 |
  s2. |
  s2.\cresc |
  s2. |
  s2.-\tweak X-offset -1 \f |
  s2. * 2 |
  
  \barNumberCheck 41
  s2. |
  s4 s16 s8.\> s s16\! |
  s8\sf s\dim s2 |
  s2.\p |
}

tempi = {
  \tempo "Andante" 4 = 66
  s2. * 42 |
  \set Score.tempoHideNote = ##t
  \tempo 4 = 60
  s4 \tempo 4 = 56 s \tempo 4 = 52 s |
  \tempo 4 = 40
  s2. |
}

forceBreaks = {
  % page 1
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

fugueSixNotes =
\score {
  \header {
    title = "Fugue 6"
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

fugueSixMidi =
\book {
  \bookOutputName "fugue-6-bwv-851"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

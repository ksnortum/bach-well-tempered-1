%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 3/4
  \key e \minor
}

rightHand = \relative {
  \global
  \beamQuarterNotes.34
  e'16 g b e  ds e d e  cs e c e |
  b16 e ds e  as, cs g fs  g as fs e |
  d!8( b'-.) r16 fs' g fs  e d cs e |
  d4~ d16 cs b as  b cs as b |
  cs16 fs, as cs  e as, cs e  g fs e g |
  fs16 e d cs  b as gs fs  d'4->~ |
  d16 e, gs b  d gs, b d  f e d f |
  e16 d c b  a gs fs e  c'4->~ |
  
  \barNumberCheck 9
  c16 a d, e  fs g a b  c d e fs |
  g16 fs a g  fs e d c  b g' a, fs' |
  g,16 b d g  fs g f g  e g ef g |
  d16 g fs! g  cs, e! bf a  bf c a g |
  fs8( d'-.) r16 a' b! a  g fs e g |
  fs4~ fs16 e d cs  d e cs d |
  e16 d cs b  a gs e' d  cs b a g |
  fs8( d fs a d-> fs,) |
  
  \barNumberCheck 17
  d'16 c! b a  g fs d' c  b a g f |
  e8( c e g c-> e,) |
  e'16 d c b  a gs e' d  c b a gs |
  a16 c e a  r e f e  d c b d |
  c4~ c16 b a gs  a fs ds b' |
  e,16 g! b e  ds e d e  cs e c e |
  b16 e ds e  as, cs g fs  g as fs e |
  ds8( b'-.) r16 b' c! b  a g fs a |
  
  \barNumberCheck 25
  g4->~ g16 fs e ds  e fs d e |
  cs8( a'-.) r16 a bf a  g f e g |
  f4->~ f16 e d cs  d e c d |
  b!8( g'-.) r16 a, b c  d e f d |
  e16 d g f  e d cs bf  a bf g a |
  f8( d'-.) r16 a' bf a  g f e g |
  f4~ f16 e d c  d c d e |
  a,16 c e a  gs a g a  fs a f a |
  
  \barNumberCheck 33
  e16 a gs a  ds, fs c b  c ds b a |
  gs8( e gs b e gs,) |
  e'16 d c b  a gs e' d  c b a g |
  fs8( d fs a d fs,) |
  d'16 c b a  g fs d' c  b a g fs |
  b16 a g fs  e ds b' a  g fs e ds |
  e16 g b e  ds e d e  cs e c e |
  b16 a g c  b-> a b gs  a-> g a fs |
  
  \barNumberCheck 41
  g16 fs g a  ds, fs c b  c ds b a |
  % gs in SrcB
  <gs b e>2. |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \beamQuarterNotes.34
  R2. * 2 |
  b,16 d fs b  as b a b  gs b g b |
  fs16 b as b  es, gs d cs  d es cs b |
  as8( fs'-.) r16 fs' g fs  e d cs e |
  d4->~ d16 cs b as  b cs a b |
  gs,8( e'-.) r16 e' f e  d c! b d |
  c4->~ c16 b a gs  a b g a |
  
  \barNumberCheck 9
  fs,8( d'-.) r16 e fs g  a b c a |
  b16 a c b  a g fs e  d e c d |
  b8 g' r16 d' e d  c b a c |
  b4~ b16 a g fs  g fs g a |
  d,16 fs a d  cs d c d  b d bf d |
  a16 d cs d  gs, b f e  f gs e d |
  cs8( a cs e a-> cs,) |
  a'16 g fs e  d cs a' g  fs e d c |
  
  \barNumberCheck 17
  b8( g b d g-> b,) |
  g'16 f e d  c b g' f  e d c b |
  e16 d c b  a gs e' d  c b a gs |
  a16 c e a  gs a g a  fs! a f a |
  e16 a gs a  ds, fs c b  c ds b a |
  g!8( e'-.) r16 b' c b  a g fs a |
  g4~ g16 fs e ds e  fs ds e |
  fs16 b, ds fs  a ds, fs a  c b a c |
  
  \barNumberCheck 25
  b16 a g fs  e ds cs b  g'4->~ |
  g16 a, cs e  g cs, e g  bf a g bf |
  a16 g f e  d cs b! a  f'4->~ |
  f16 d g, a  b c! d e  f g a b |
  c16 b e d  cs bf a g  f d' e, cs' |
  d,16 f a d  cs d c d  b! d bf d |
  a16 d cs d  gs, b! f e  f gs e d |
  c8( a'-.) r16 e' f e  d c b d |
  
  \barNumberCheck 33
  c4~ c16 b a gs  a fs ds fs |
  b16 a gs fs  e ds b' a  gs fs e d |
  c8( a c e a c,) |
  a'16 g fs e  d cs a' g fs e d c |
  b8( g b d g b,) |
  b'16 a g fs  e ds b' a  g fs e ds |
  e16 g b e  r b c b  a g a fs |
  g16 fs e e'  ds e d e  cs e c e |
  
  \barNumberCheck 41
  b8-. a-. b-. r b,-. r |
  e,2. |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s4\p s\< s8. s16\! |
  s2\sf\> s4\! |
  s4 s4..\< s16\! |
  s8\sf s8\> s4. s8\! |
  s2.\cresc |
  s2. * 3 |
  
  \barNumberCheck 9
  s2.\f |
  s2\sf\> s8 s\! |
  s4\p s4..\< s16\! |
  s8\sf s\> s4. s8\! |
  s8 s\< s4.. s16\! |
  s8\sf s\> s4.. s16\!
  s2.\cresc |
  s2. |
  
  \barNumberCheck 17
  s2. * 2 |
  s2.\ff |
  s4\sf\> s4..\p\< s16\!
  s8\sf s\> s4. s8\! |
  s4 s4..\< s16\! |
  s8\sf s\> s4. s8\! |
  s2.\cresc |
  
  \barNumberCheck 25
  s2. * 3 |
  s2.\f |
  s2.\ff |
  s4\sf\> s4..\p\< s16\!
  s4\sf s4.\> s8\! |
  s8 s\< s4.. s16\! |
  
  \barNumberCheck 33
  s4\sf s4..\> s16\!
  s2.\cresc |
  s2. * 3 |
  s2.\f |
  s2.\ff |
}

tempi = {
  \tempo "Allegro" 4 = 126
  s2. * 40 |
  \set Score.tempoHideNote = ##t
  \tempo 4 = 116
  s4 \tempo 4 = 108 s \tempo 4 = 100 s |
  s2. |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
}

fugueTenNotes =
\score {
  \header {
    title = "Fugue 10"
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

fugueTenMidi =
\book {
  \bookOutputName "fugue-10-bwv-855"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

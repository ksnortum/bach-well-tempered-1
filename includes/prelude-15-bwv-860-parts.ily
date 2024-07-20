%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 24/16
  \key g \major
}

rightHand = \relative {
  \global
  \tupletOff
  g'16 b d  g d b  d b g  b g d  e g c  e c g  c g e  g e c |
  a16 c fs  a fs c  fs c a  c a fs  g b d  g d b  d b g  \staffDown \voiceOne
    b g d |
  \staffUp a' cs e  a e cs  e cs a  \staffDown cs a e  \staffUp
    \tuplet 2/3 { \oneVoice d'8 r r d } |
  d16 cs d  e cs d  fs cs d  g cs, d  a' cs, d  b' cs, d  a' cs, d  g ds e |
  \tuplet 2/3 { fs8-.[ g-.] a-.[ b-.]  a-.[ g-.] fs-.[ a-.] } |
  gs16 b d  f d b  d b gs  b gs f  d f gs  b gs f  gs f d  f d b |
  \tuplet 2/3 { c8-.[ e'-.] c-.[ a-.]  e-.[ e'-.] c-.[ a-.] } |
  ds16 fs a  c a fs  a fs ds  fs ds c  a c ds  fs ds c  ds c a  c a fs |
  
  \barNumberCheck 9
  \tuplet 2/3 { g8-.[ a-.] b-.[ c-.]  b-.[ a-.] g-.[ b-.] } |
  a16 gs a  b gs a  cs gs  a d gs, a  e' gs, a  fs' gs, a  g'! e cs  a cs e |
  \tuplet 2/3 { fs8 r }  a16 fs d  c! d fs  \tuplet 2/3 { a8[( g]) }
    g16 e cs  a cs e |
  \tuplet 2/3 { g8[( fs]) }  fs16 d b  g b d  \tuplet 2/3 { fs8[( e]) }
    e16 cs a  g a cs |
  \tuplet 2/3 { e8[( d]) r d }  d16 c b  b a g  g b d  f e d |
  d16 e f  \tuplet 2/3 { e8 r e }  e16 d cs  cs b a  a cs e  g fs e |
  e16 fs g  \tuplet 2/3 { fs8 r a }  a16 g fs  fs e d  d fs a  c! b a |
  a16 b c  \tuplet 2/3 { b8~ } b16 a g  f e d  c e g  a fs d  b d fs  g e c |
  
  \barNumberCheck 17
  a16 c e  fs d b  g b d  e c a  fs a c  d b g  e g b  c a fs |
  d16 fs a  b g e  c e g  a fs d  b d fs  g e b  a e' g  fs d c |
  \tuplet 2/3 { <b d g>1\fermata } |
  \bar "|."
}

leftHand = \relative {
  \global
  \set Staff.timeSignatureFraction = 4/4
  \clef bass
  \tupletOff
  \tuplet 2/3 {
    g8-.[ g,-.] r g'-.  g8-.[ g,-.] r g'-. |
    g8-.[ g,-.] r g'-.  g8-.[ g,-.] r g'_. |
    g8-.[ g,-.] r g'-.
  } fs16 a cs  d a fs  a fs d  fs d b |
  \tuplet 2/3 { e8-.[ e,] r e'-.  cs-.[ a-.] b-.[ cs-.] | }
  d16 cs' d  e, cs' d  fs, cs' d  g, cs d  fs, cs' d  e, cs' d  d, cs' d  
    fs, cs' d |
  \tuplet 2/3 { b,8-.[ b'-.] r a-.  gs-.[ gs,-.] r gs'-. } |
  a16 c e  a e c  e c a  c a e  c e a  c a e  a e c  e c a |
  \tuplet 2/3 { fs8-.[ fs'-.] r e-.  ds-.[ ds,-.] r ds'-. } |
  
  \barNumberCheck 9
  e16 ds' e  fs, ds' e  g, ds' e  a, ds e  g, ds' e  fs, ds' e  e, ds' e
    g, ds' e |
  \tuplet 2/3 { cs,8-.[ d-.] e-.[ fs-.]  cs-.[ b-.] a-.[ cs-.] } |
  d16 fs a  d a fs  \tuplet 2/3 { d8-.[ d'-.] }  d,16 g b  d b g
    \tuplet 2/3 { d8[-. d']-. } |
  d,16 a' cs  d a fs  \tuplet 2/3 { d8-.[ d'-.] }  d,16 e g  b g e
    \tuplet 2/3 { d8[-. d']-. } |
  d,16 fs a  d a fs  a fs d  fs d c!  b d fs  g d b  d b g  b g f |
  e16 g b  c e g  c g e  g e d  cs e g  a e cs  e cs a cs a g |
  fs16 a cs  d fs a  d a fs a fs d  fs d a  d a fs
    \tuplet 2/3 { d8[-. d']-. } |
  \tuplet 2/3 { g,8~ } g16 b d  g a b  b c d  \tuplet 2/3 { e8-> }  c16( a fs!
    \tuplet 2/3 { d'8-.->) }  b16( g e |
    
  \barNumberCheck 17
  \tuplet 2/3 { c'8-.->) } a16( fs d  \tuplet 2/3 { b'8-.->) }  g16( e c 
    \tuplet 2/3 { a'8-.->) }  fs16( d b  \tuplet 2/3 { g'8-.->) }  e16( c a |
  \tuplet 2/3 { fs'8-.->) }  d16 b g  e' c a  fs' d b
    \tuplet 2/3 { g'8-.[ e-.] c-.[ d]-. } |
  \tuplet 2/3 { g,1_\fermata } |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s1.\f |
  s1. |
  s8. s\dim s4. s2. |
  s1.\p |
  s1.\cresc |
  s2.-\tweak Y-offset -1 \f s\dim |
  s2.\p s\cresc |
  s2.\f s\dim |
  
  \barNumberCheck 9
  s1.-\tweak Y-offset 0.5 \p |
  s1.\cresc |
  s1.\f |
  s1. * 2 |
  s4.\< s\sf \tag layout { s2. } \tag midi { s2.\f } |
  s4.\< s\sf \tag layout { s2. } \tag midi { s2.\f } |
  s4.\sf \tag layout { s } \tag midi { s\f } s2. |
  
  \barNumberCheck 17
  s1. |
  s8. s\ff s4. s2. |
  s1. |
}

tempi = {
  \tempo "Allegro" 4 = 100
  s1. * 17 |
  \set Score.tempoHideNote = ##t
  s2. s4. \tempo 4 = 92 s8. \tempo 4 = 84 s |
  s1. |
}

forceBreaks = {
  % page 1
  s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\pageBreak
  
  % page 2
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
}

preludeFifteenNotes =
\score {
  \header {
    title = "Prelude 15"
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

preludeFifteenMidi =
\book {
  \bookOutputName "prelude-15-bwv-860"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

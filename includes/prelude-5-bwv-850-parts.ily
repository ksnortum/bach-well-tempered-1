%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

forceHShiftA = \tweak NoteColumn.force-hshift 0.9 \etc

%%% Music %%%

global = {
  \time 4/4
  \key d \major
}

rightHand = \relative {
  \global
  r16 d'' e fs  a, fs' e d  a' d, e fs  a, fs' e d |
  g16 e fs g  b, d cs b  cs e fs g  a, g' fs e |
  fs16 d e fs  a, cs b a  b d e fs  b, a' gs fs |
  gs16 e fs gs  b, d cs b  a cs d e  fs, e' d cs |
  d16 b cs d  fs, a gs fs  gs b cs d  e, d' cs b |
  cs16 a b cs  e, g! fs e  fs a b cs  fs, e' ds cs |
  ds16 b cs ds  fs, a g fs  e g a b  cs, d' cs b |
  as16 e fs g  cs, g' fs e  d b' cs d  fs, a gs fs |
  
  \barNumberCheck 9
  es16 gs a b  es, d' cs b  gs' es fs gs  cs, b' a gs |
  a16 fs gs a  cs, e! ds cs  ds fs g a  b, a' g fs |
  g16 e fs g  b, d! c b  c ds e fs  a, c b a |
  g16 e' fs g  b, d! cs! b  cs e fs g  a, g' fs e |
  fs16 d e fs  a, c b a  b g a b  cs,! b' a g |
  fs16 d e fs  a, c b a  b d e fs  b, a' gs fs |
  gs16 e fs gs  b, d c b  a c d e  a, g' fs e |
  ds16 a b c  fs, c' b a  g e' fs g  b, d cs b |
  
  \barNumberCheck 17
  as16 cs d e  as, g' fs e  cs' as b cs  fs, e' d cs |
  d16 b cs d  fs, a! gs fs  gs b c d  e, d' c b |
  c16 a b c  e, g fs e  fs a b c  d, c' b a |
  b16 g a b  d, b' a g  d' g, a b  d, b' a g |
  c16 a b c  e, g fs e  fs a b c  d, c' b a |
  b16 g a b  d, fs e d  e g a b  e, d' cs! b |
  cs16 a b cs  e, g fs e  d fs g a  b, a' g fs |
  g16 e fs g  b, d cs b  cs e fs g  a, g' fs e |
  
  \barNumberCheck 25
  fs16 d e fs  a, fs' e d  a' fs g a  d, c' b a |
  b16 g a b  d, b' a g  d' b cs! d gs, f' e d |
  cs16 a b cs  e, g fs e  a d e fs  b, a' g fs |
  g16 cs, d e  a, g' fs e  fs b, cs d  gs, f' e d |
  cs16 g! a bf  e, g f e  f d' e f  cs e d cs |
  d16 bf' a g  f e d cs!  d f e d  b' gs a b |
  f16  d e f  b, gs a b  e, fs! gs a  b cs d e |
  \mergeDifferentlyDottedOn
  <<
    { f4. e8~ e d~ d[ cs] | }
    \\
    { f16 cs d a  bf g e' g,  a f d' f,  g e cs' e, | }
  >> 
  
  \barNumberCheck 33
  <d f gs b d>4^~\arpeggio d'32 cs b a gs fs! e fs  s4  \voiceOne 
    d'32 cs b a gs s16. |
  <cs e g bf>8 r <d f gs b> r << { d4 cs } \\ { <e, a>2 } >> |
  <fs! a d>1\fermata |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  d8-. r d'-. r  fs,-. r d'-. r |
  e,8-. r d'-. r a-. r cs-. r |
  d,8 r d' r d, r d' r |
  d,8 r gs r cs, r a' r |
  b,8 r a' r e r gs r |
  a,8 r a' r a, r a' r |
  a,8 r ds r g, r e' r |
  fs, r fs' r fs, r fs' r |
  
  \barNumberCheck 9
  fs, r fs' r fs, r fs' r |
  fs,8 r fs' r b, r ds r |
  e,8 r e' r e, r ds' r |
  e,8 r e' r a, r cs r |
  d,8 r d' r d, r d' r |
  d,8 r d' r d, r d' r |
  d,8 r d' r c r fs r |
  b,8 r ds r e r g r |
  
  \barNumberCheck 17
  b,8 r e r g r as r |
  b,8 r b' r e, r gs r |
  a,8 r a' r d, r fs r |
  g,8 r g' r b, r g' r |
  a,8 r g' r d r fs r |
  g,8 r g' r g, r g' r |
  g,8 r cs r fs, r d' r |
  e,8 r d' r a r cs r |
  
  \barNumberCheck 25
  d,8 r d' r fs, r a' r |
  g,8 r g' r b, r d' r |
  << { a,8 r g' r fs r d r } \\ { a1 } >> |
  << { a8 r cs r d r b r } \\ { a1 } >> |
  <<
    { r16 e' f g  cs, e d cs  d f g a  e g f e | f d e f }
    \\
    { a,1~ | a4 } 
  >> a16 c bf a  gs2~ |
  gs1 |
  << { r8 a' g! cs,  f d e g } \\ { a,1 } >> |
  
  
  \barNumberCheck 33
  <b d f gs b>4\arpeggio r \staffUp \voiceTwo gs''32 a b cs d e f e  s8
    s32 fs,! e d |
  <cs e g bf>8 r \forceHShiftA <d f gs b> r \staffDown 
    << { a2 } \\ { a, } \\ { e'4 g! } >> |
  \oneVoice <d fs! a >1\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1^\pLeggiermente |
  s1 |
  s4. s8\cresc s2 |
  s1 * 2 |
  s1\fp |
  s1 |
  s1\cresc |
  
  \barNumberCheck 9
  s1 |
  s1\f |
  s1 |
  s8 s2..\dim |
  s1 |
  s1\p |
  s1 |
  s4 s2.\cresc |
  
  \barNumberCheck 17
  s1 |
  s1\f |
  s1 |
  s1\fp |
  s1 |
  s2 s\cresc |
  s1 * 2 |
  
  \barNumberCheck 25
  s1 * 2 |
  s1\f |
  s1 |
  s1\ff |
  s1 * 3 |
  
  \barNumberCheck 33
  s1 |
  s4-\tweak Y-offset -2 \sf s-\tweak Y-offset -2 \sf s\sf\> s\! |
  s1-\tweak Y-offset 0.75 \p |
}

tempi = {
  \tempo "Allegro vivace" 4 = 132
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  \set Score.tempoHideNote = ##t
  s4 \tempo "meno Allegro" 4 = 80 s2. |
}

forceBreaks = {
  % page 1
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

preludeFiveNotes =
\score {
  \header {
    title = "Prelude 5"
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

preludeFiveMidi =
\book {
  \bookOutputName "prelude-5-bwv-850"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

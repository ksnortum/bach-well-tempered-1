%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key c \major
}

rightHandUpper = \relative {
  \voiceOne 
  r8 g'16 c  e g, c e  r8 g,16 c  e g, c e |
  r8 a,16 d  f a, d f  r8 a,16 d  f a, d f |
  r8 g,16 d'  f g, d' f  r8 g,16 d'  f g, d' f |
  r8 g,16 c  e g, c e  r8 g,16 c  e g, c e |
  r8 a,16 e'  a a, e' a  r8 a,16 e'  a a, e' a |
  r8 fs,16 a  d fs, a d  r8 fs,16 a  d fs, a d |
  r8 g,16 d'  g g, d' g  r8 g,16 d'  g g, d' g |
  \oneVoice r8 e,16 g  c e, g c  r8 e,16 g  c e, g c |
  
  \barNumberCheck 9
  r8 e,16 g  c e, g c  r8 e,16 g  c e, g c |
  r8 d,16 fs  c' d, fs c'  r8 d,16 fs  c' d, fs c' |
  r8 d,16 g  b d, g b  r8 d,16 g  b d, g b |
  r8 e,16 g  cs e, g cs  r8 e,16 g  cs e, g cs |
  r8 d,16 a'  d d, a' d  r8 d,16 a'  d d, a' d |
  r8 d,16 f  b d, f b  r8 d,16 f  b d, f b |
  r8 c,16 g'  c c, g' c  r8 c,16 g'  c c, g' c |
  r8 a,16 c  f a, c f  r8 a,16 c  f a, c f |
  
  \barNumberCheck 17
  r8 a,16 c  f a, c f  r8 a,16 c  f a, c f |
  r8 g,16 b  f' g, b f'  r8 g,16 b  f' g, b f' |
  r8 g,16 c  e g, c e  r8 g,16 c  e g, c e |
  r8 bf16 c  e bf c e  r8 bf16 c  e bf c e |
  r8 a,16 c  e a, c e  r8 a,16 c  e a, c e |
  r8 a,16 c  ef a, c ef  r8 a,16 c  ef a, c ef |
  r8 b16 c  ef b c ef  r8 b16 c  ef b c ef |
  r8 b16 c  d b c d  r8 b16 c  d b c d |
  
  \barNumberCheck 25
  r8 g,16 b  d g, b d  r8 g,16 b  d g, b d |
  r8 g,16 c  e g, c e  r8 g,16 c  e g, c e |
  r8 g,16 c  f g, c f  r8 g,16 c  f g, c f |
  r8 g,16 b  f' g, b f'  r8 g,16 b  f' g, b f' |
  r8 a,16 c  fs a, c fs  r8 a,16 c  fs a, c fs |
  r8 g,16 c  g' g, c g'  r8 g,16 c  g' g, c g' |
  r8 g,16 c  f g, c f  r8 g,16 c  f g, c f |
  r8 g,16 b  f' g, b f'  r8 g,16 b  f' g, b f' |
  
  \barNumberCheck 33
  r8 g,16 bf  e g, bf e  r8 g,16 bf  e g, bf e |
  \calando r8\startTextSpan \staffDown \voiceOne f,16 a  \staffUp c f c a
    \staffDown c a f a  f d f d |
  \staffUp \oneVoice r8 g'16 b  d f d b  d b g b  d, f e d\stopTextSpan |
  <e g c>1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  r16 e'8.~ e4 r16 e8.~ e4 |
  r16 d8.~ d4 r16 d8.~ d4 |
  r16 d8.~ d4 r16 d8.~ d4 |
  r16 e8.~ e4 r16 e8.~ e4 |
  r16 e8.~ e4 r16 e8.~ e4 |
  r16 d8.~ d4 r16 d8.~ d4 |
  r16 d8.~ d4 r16 d8.~ d4 |
  s1 |
  
  \barNumberCheck 9
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree 
  s1 * 7 |
  r16 c'8.~ c4 r16 c8.~ c4 |
  
  \barNumberCheck 9
  r16 c8.~ c4 r16 c8.~ c4 |
  r16 a8.~ a4 r16 a8.~ a4 |
  r16 b8.~ b4 r16 b8.~ b4 |
  r16 bf8.~ bf4 r16 bf8.~ bf4 |
  r16 a8.~ a4 r16 a8.~ a4 |
  r16 af8.~ af4 r16 af8.~ af4 |
  r16 g8.~ g4 r16 g8.~ g4 |
  r16 f8.~ f4 r16 f8.~ f4 |
  
  \barNumberCheck 17
  r16 f8.~ f4 r16 f8.~ f4 |
  r16 d8.~ d4 r16 d8.~ d4 |
  r16 e8.~ e4 r16 e8.~ e4 |
  r16 g8.~ g4 r16 g8.~ g4 |
  r16 f8.~ f4 r16 f8.~ f4 |
  r16 c8.~ c4 r16 c8.~ c4 |
  r16 ef8.~ ef4 r16 ef8.~ ef4 |
  r16 f8.~ f4 r16 f8.~ f4 |
  
  \barNumberCheck 25
  r16 f8.~ f4 r16 f8.~ f4 |
  r16 e8.~ e4 r16 e8.~ e4 |
  r16 d8.~ d4 r16 d8.~ d4 |
  r16 d8.~ d4 r16 d8.~ d4 |
  r16 ef8.~ ef4 r16 ef8.~ ef4 |
  r16 e!8.~ e4 r16 e8.~ e4 |
  r16 d8.~ d4 r16 d8.~ d4 |
  r16 d8.~ d4 r16 d8.~ d4 |
  
  \barNumberCheck 33
  r16 c8.~ c4 r16 c8.~ c4 |
  r16 c8._~ c4_~ \stemDown c2 |
  \stemUp r16 b8.~ b4~ b2 |
  c1 |
}

leftHandLower = \relative {
  \voiceTwo 
  c'2 c |
  c2 c |
  b2 b
  c2 c |
  c2 c |
  c2 c |
  b2 b |
  b2 b |
  
  \barNumberCheck 9
  a2 a |
  d,2 d |
  g2 g |
  g2 g |
  f2 f |
  f2 f |
  e2 e |
  e2 e |
  
  \barNumberCheck 17
  d2 d |
  g,2 g |
  c2 c |
  c2 c |
  f,2 f |
  fs2 fs |
  g2 g |
  af2 af |
  
  \barNumberCheck 25
  g2 g |
  g2 g |
  g2 g |
  g2 g |
  g2 g |
  g2 g |
  g2 g |
  g2 g |
  
  \barNumberCheck 33
  c,2 c |
  c2~ c |
  c2~ c |
  c1 |
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
  s4\p s2.^\spLegato |
  s1 |
  s4 s2.\cresc |
  s1 |
  s1\f |
  s1\p |
  s1-\tweak Y-offset -3.5 \f |
  s1\p |
  
  \barNumberCheck 9
  s1\pp |
  s1 |
  s2. s4\cresc |
  s1 * 2 |
  s2 s\dim |
  s1 |
  s1\p |
  
  \barNumberCheck 17
  s1 |
  s1\pp |
  s2 s\cresc |
  s1 |
  s2 s\dim |
  s1 |
  s1\pp |
  s1 |
  
  \barNumberCheck 25
  s1\cresc |
  s1 * 3 |
  s1\f |
  s2\ff s\dim |
  s1 |
  s1\p |
  
  \barNumberCheck 33
  s1\pp |
  s1 |
  r8 s\< s4\> s2\! |
  s1 |
}

tempi = {
  \tempo "Allegro" 4 = 112
  s1
  \set Score.tempoHideNote = ##t
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 |
  s2 \tempo 4 = 104 s |
  \tempo 4 = 96
  s2 \tempo 4 = 88 s4 \tempo 4 = 80 s |
  s1 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
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

preludeOneNotes =
\score {
  \header {
    title = "Prelude 1"
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

preludeOneMidi =
\book {
  \bookOutputName "prelude-1-bwv-846"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

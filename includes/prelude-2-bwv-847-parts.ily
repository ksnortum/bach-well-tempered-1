%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key c \minor
}

rightHand = \relative {
  \global
  c''16-> ef, d ef  c ef d ef  c'-> ef, d ef  c ef d ef |
  af16-> f e f  c f e f  af-> f e f  c f e f |
  b16 f ef! f  d f ef f  b f ef f  d f ef f |
  c'16 g f g  ef g f g  c g f g  ef g f g |
  ef'16 af, g af  ef af g af  ef' af, g af  ef af g af |
  d16 fs, e fs  d fs e fs  d' fs, e fs  d fs e fs |
  d'16 g, fs g  d g fs g  d' g, fs g  d g fs g |
  c16 e, d e  c e d e  c' e, d e  c e d e |
  
  \barNumberCheck 9
  c'16 f, e f  c f e f  c' f, e f  c f e f |
  bf16 f ef! f  d f ef f  bf f ef f  d f ef f |
  bf16 g f g  ef g f g  bf g f g  ef g f g |
  af16 g f g  ef g f g  af g f g  ef g f g |
  af16 d, c d  bf d c d  af' d, c d  bf d c d |
  g16 bf, af bf  ef bf af bf  g' bf, af bf  ef bf af bf |
  f'16 c bf c  a c bf c  f c bf c  a c bf c |
  f16 d c d  b d c d  f d c d  b d c d |
  
  \barNumberCheck 17
  f16 d c d  b d c d  f d c d  b d c d |
  ef!16 c b c  g c b c  ef c b c  g c b c |
  f,16 ef' d ef  f ef d ef  f, ef' d ef  f ef d ef |
  fs,16 c' b c  ef c b c  fs, c' b c  ef c b c |
  ef16 c b c  g c b c  ef c b c  g c b c |
  fs16 c b c  a c b c  fs c b c  a c b c |
  g'16 c, b c  d c b c  g' c, b c  d c b c |
  af'!16 c, b c  d c b c  af' c, b c  d c b c |
  
  \barNumberCheck 25
  s8. \staffDown \voiceOne f,16  af f e f  b f d' b  af f e f |
  s8. g16  c g fs g  \staffUp ef' c g' ef  \staffDown c af g af |
  s8. \staffUp c16  ef c b c  fs c a' fs  es c b c |
  \oneVoice r16 d' c d  ef c b c  a c b c  d b a b |
  g16 b a b  c a g a  fs a g a  b g fs g |
  d16 g' f g  af! f ef f  d f ef f  g ef d ef |
  \voiceOne c16 ef d ef  f d c d  b d c d  ef c b c |
  g16 c b c  af f' ef f  \oneVoice g, ef' d ef  f, d' c d |
  
  \barNumberCheck 33
  ef,16 c' b c  af f ef f  g ef d ef  f d c d |
  <c e>8\arpeggio\fermata e32( c d e  f64 g af bf c bf af g  f16[ g32 e])
    <c f>8->\arpeggio\fermata  f32( g f e  f[ g af g]  f64 ef d ef f d ef f) |
  \staffDown \voiceOne b,8. d,16  f( af g f  b f d' f,  b af g f |
  e16 df' bf g  c af f af  g bf g ef  af f d! f) |
  e16( g e c  f d b d) r8 r16 d(  e g bf! g |
  \staffUp af16 c f d  f af c b  c g f d)  <g, c e>4\fermata |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  c16 g' f g  ef g f g  c, g' f g  ef g f g |
  c,16 af' g af  f af g af  c, af' g af  f af g af |
  c,16 af' g af  f af g af  c, af' g af  f af g af |
  c,16 ef d ef  g ef d ef  c ef d ef  g ef d ef |
  c16 c' bf c  af c bf c  c, c' bf c  af c bf c |
  c,16 a' g a  fs a g a  c, a' g a  fs a g a |
  bf,16 bf' a bf  g bf a bf  bf, bf' a bf  g bf a bf |
  bf,16 g' f! g  e g f g  bf, g' f g  e g f g |
  
  \barNumberCheck 9
  af,16 af' g af  f af g af  af, af' g af  f af g af |
  af,16 d c d  f d c d  af d c d  f d c d |
  g,16 ef' d ef  g ef d ef  g, ef' d ef  g ef d ef |
  c16 ef d ef  af ef d ef  c ef d ef  af ef d ef |
  d16 f ef f  af f ef f  d f ef f  af f ef f |
  ef16 g f g  af g f g  ef g f g  af g f g |
  ef16 a g a  f a g a  ef a g a  f a g a |
  d,16 f ef f  af! f ef f  d f ef f  af f ef f |
  
  \barNumberCheck 17
  c16 f e f  af f e f  c f e f  af f e f |
  c16 ef! d ef  f ef d ef  c ef d ef  f ef d ef |
  af,16 c b c  d c b c  af c b c  d c b c |
  a16 ef' d ef  c ef d ef  a, ef' d ef  c ef d ef |
  g,16 ef' d ef  f ef d ef  g, ef' d ef  f ef d ef |
  g,16 ef' d ef  c ef d ef  g, ef' d ef  c ef d ef |
  g,16 ef' d ef  f ef d ef  g, ef' d ef  f ef d ef |
  g,16 ef' d ef  f ef d ef  g, ef' d ef  f ef d ef |
  
  \barNumberCheck 25
  \voiceTwo g,16 b d s s2. |
  g,16 c ef s s2. |
  g,16 a fs' s s2. |
  \oneVoice g,1_~ |
  g16 d'' c d  ef c b c  a c b c  d b a b |
  g16 b a b  c af g af  f a g a  b g f g |
  ef16 \staffUp \voiceTwo g' f g  af f ef f  d f ef f  g ef d ef |
  c16 ef d ef  f d c d  \staffDown \oneVoice ef c b c  d b a b |
  
  \barNumberCheck 33
  c16 ef d ef  f, d' c d  ef, c' b c  d, b' a b |
  <c, g' bf!>4\arpeggio r <c f af>\arpeggio r |
  \mergeDifferentlyDottedOn
  <<
    { s16 c,16 b'8_~ \hideNoteHead b2 }
    \\
    { r16 c,8.~ <c b'>2. }
  >> |
  <c c'>1_~ |
  \voiceTwo c2 
  <<
    { d'16\rest g, c8_~ \voiceTwo c4~ | c1 }
    \\
    { c,2~ | c1 }
  >> |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1\f |
  s1 * 3 |
  s2\sf\> s8. s16\! s4 |
  s1\p |
  s2\sf\> s8. s16\! s4 |
  s1\p |
  
  \barNumberCheck 9
  s1\f |
  s1 |
  s4 s2.\dim |
  s1 |
  s1\p |
  s1 |
  s1\cresc
  s1 |
  
  \barNumberCheck 17
  s1 * 2 |
  s1\f |
  s1 * 5 |
  
  \barNumberCheck 25
  s8\fz\> s16\! s s2. |
  s8\fz\> s16\! s s2. |
  s8\fz\> s16\! s s2. |
  s1\ff |
  s1 * 4 |
  
  \barNumberCheck 33
  s1 |
  s8\sf s4.\p s2 |
  s1 |
  s2 s^\rall |
  s1 |
  s4 s8. s16-\tweak Y-offset -2 ^\rit s2 |
}

tempi = {
  \tempo "Allegro vivace" 4 = 144
  s1
  \set Score.tempoHideNote = ##t
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 3 |
  \tempo "Presto" 4 = 160
  s1 * 5 |
  
  \barNumberCheck 33
  s1 |
  \tempo 4 = 20
  s8 \tempo "Adagio" 4 = 60 s4. \tempo 4 = 20 s8 \tempo 4 = 60 s4. |
  \tempo "Allegro" 4 = 144
  s1 * 2 |
  s2 \tempo "Lento" 4 = 120 s|
  \tempo 4 = 112
  s4 \tempo 4 = 104 s \tempo 4 = 96 s \tempo 4 = 20 s | 
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
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
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
}

preludeTwoNotes =
\score {
  \header {
    title = "Prelude 2"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
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
      \Score
      \override Stem.details.beamed-lengths = #'(3.5 3.9)
    }
  }
}

\include "articulate.ly"

preludeTwoMidi =
\book {
  \bookOutputName "prelude-2-bwv-847"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

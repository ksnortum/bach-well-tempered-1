%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Shapes and Positions %%%

beamPositionsA = \once \override Beam.positions = #'(-1.5 . -1)
beamPositionsB = \once \override Beam.positions = #'(-1 . -1.5)

%%% Music %%%

global = {
  \time 4/4
  \key g \minor
}

rightHandUpper = \relative {
  R1 |
  r2 r8 g'8( bf-.) d,-. |
  cs4( d)  r8 e16( f  g8 f16 e) |
  \voiceOne f8( g16 a  bf8 a16 g  a8 bf16 c  d8 c16 bf) |
  c4( bf  a8 d16 c!  bf8 c16 d) |
  ef8-. c-. a-.[ fs'-.]  g4 r |
  \oneVoice r8 e,^( a f!  d4 cs8 e~) |
  e8 d g4~  g16 fs g a  bf4~ |
  
  \barNumberCheck 9
  bf4 a~  a16 d, e fs  g4~ |
  g8 fs16 g  a8 g16 fs  g4. c8 |
  f,!8 g16 a  bf2 a4 |
  \voiceOne bf4 r r2 |
  s1 * 2 |
  r8 c d f,  e4 f |
  r8 g16 a  bf8 a16 g  a8 bf16 c  d8 c16 bf |
  
  \barNumberCheck 17
  c8 d16 c  bf8 c16 d  ef8 f16 ef  d8 ef16 f |
  g8 ef c[ a']  bf r r4 |
  r8 g16 af  bf8 af16 g  af8 af16 g  f8 g16 af |
  d,8 g4 f16 ef  d4. c16 b |
  c4 b8 d  g, g' af[ c,] |
  b4 c  r8 d16 ef  f8 ef16 d |
  ef16 d ef f  g8 r  r d16 c  bf!8 c16 d |
  ef16 d c bf  a8 fs'  g r r16 d c bf |
  
  \barNumberCheck 25
  a4~ a16 bf c d  g,4~ g16 bf af g |
  f4~ f16 g af bf  ef,4~ ef16 g f ef |
  d4~ d16 d e fs  g4~ g16 bf a g |
  fs8 d' ef! g,  r d'16 c  bf8 c16 d |
  ef8 d c[ ef]  d r r4 |
  r2  r8 d16 ef  f!8 ef16 d |
  ef4~ ef16 d c bf  a4 r8 ef'16 d |
  c8 d16 ef  d8 e16 fs  g8 fs16 g  a4~ |
  
  \barNumberCheck 33
  a8 d, g f!  ef! d c[ bf!] |
  a2 g |
  \bar "|."
}

rightHandLower = \relative {
  s1 * 4 |
  \voiceFour a'8 g16 fs  g8 cs,  d a'4 g16 fs |
  g4( fs8 a)  d4 r |
  s1 * 2 |
  
  \barNumberCheck 9
  s1 * 3 |
  e,8\rest f g bf,  a4 bf |
  \oneVoice r8 c16 d  ef8 d16 c  d e d e  f8 e16 d |
  g4. f16 e  f4 e8 bf'~ |
  \voiceFour bf8 a4 g16 a  bf8 a16 g a4~ |
  a8 g16 f  e8 c~  c8 d16 ef  f8. g16 |
  
  \barNumberCheck 17
  a4 g  r8 c d f, |
  ef4 f  r8 f16 g  af8 g16 f |
  g8 r r4  r8 f'16 ef  d8 ef16 f |
  b,8 ef16 d  c8 d16 ef  f,8 g16 f  ef8 f16 g |
  af8 f d[ b'] c4 r8 ef, |
  d8 ef16 f  g8 a!16 b  c8 b16 c  d8 g,~ |
  g8 c16 d  ef8 g,  fs4 g~ |
  g8 a16 bf  c8 bf16 a  bf d, e fs  g4~ |
  
  \barNumberCheck 25
  g16 g f! ef! d4~  d16 bf c d  ef4~ |
  ef16 ef d c bf4~  bf16 g a! b  c4~ |
  c16 c bf! a g4~  g16 g a bf  c8 cs |
  d4 r fs g |
  r8 a16 bf  c8 bf16 a  a8 r r4 |
  r8 fs16 g  a8 g16 fs  g2~ |
  g2 r8 d' ef g, |
  fs4 g  r8 a16 bf  c8 bf16 a |
  
  \barNumberCheck 33
  bf4. <g b>8  <a c> r <d, g> r |
  <ef g>4 <d fs> d2 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 5 |
  \voiceThree r2 r8 g( bf-.) d,-. |
  cs4( d)  r8 e16 f  g8 f16 e |
  f8 g16 a  bf8 a16 g  a8 bf16 c  d8 c16 bf |
  
  \barNumberCheck 9
  c2. bf8 ef! |
  a,16 bf a bf  c8 bf16 a  bf8 c16 d  ef4~ |
  ef4 d c2 |
  d4 r  \oneVoice r8 f,16 ef  d8 ef16 f |
  g8 ef c[ a']  \voiceThree bf2~ |
  bf8 c16 bf  a8 bf16 c  d8 bf g[ e'] |
  f8. ef!16 d4  c4. d16 c |
  bf2 a4  r16 bf c d |
  
  \barNumberCheck 17
  ef!8 f16 ef  d8 g,~  g f bf af |
  g4 a!8 c  f, r r4 |
  s1 * 6 |
  
  \barNumberCheck 25
  s1 * 3 |
  s2 r8 d' ef g, |
  fs4 g  r8 a16 bf  c8 bf16 a |
  bf2~  bf8 b16 a  g8 a16 b |
  c4 r s2 |
  s1 |
  
  \barNumberCheck 33
  r8 d ef g,  fs4 g |
  % final b-natural, SrcB
  r8 a16 bf  c8 bf16 a  b2 |
}

leftHandLower = \relative {
  r8 d'( ef-.) g,-.  fs4( g) |
  r8 \beamPositionsA a16( bf  \beamPositionsB c8 bf16 a  bf4 g) |
  r8 a16( g  f8 g16 a)  bf8-. g-. e-.[ cs'-.] |
  d4.( e8  f e f g) |
  r8 d,( ef!) g,-.  fs4( g) |
  \voiceTwo r8 a16( bf  c8 bf16 a  bf4 g) |
  r8 a16( g  f!8 g16 a)  bf8-. g-. e-.[ cs'-.] |
  d1 |
  
  \barNumberCheck 9
  e8 a16 g  fs8 g16 a  bf,8 c16 d  ef8 d16 c |
  d2 g,4. a8 |
  bf8 f' g[ d]  ef8 d16 ef  f8 f, |
  bf4 r s2 |
  s2 r8 bf d f, |
  e4 f r8 g16 a  bf8 a16 g |
  a4 bf  r8 c16 bf  a8 bf16 c |
  d8 bf g[ e']  f2~ |
  
  \barNumberCheck 17
  f8 f g[ bf,]  a4 bf |
  r8 c16 d  ef8 d16 c  d8 c16 bf  c8 d |
  \oneVoice ef8 d16 c  d8 e  f f,16 g  af8 g16 f |
  g8 g' af c,  b4 c |
  r8 d16 ef  f8 ef16 d  ef8 e f[ fs] |
  g16 af g f!  ef8 f16 g  af8 f d[ b'] |
  c4~ c16 d c bf!  a! d, c d  ef d c bf |
  a8 c d[ d,]  g g'16 a  bf8 a16 g |
  
  \barNumberCheck 25
  d'8 d,16 ef  f8 ef16 d  ef,8 ef'16 f  g8 f16 ef |
  bf'8 bf,16 c  d8 c16 bf  c,8 c'16 d  ef8 d16 c |
  g'8 g,16 a  bf8 a16 g  ef'2 |
  d4 r \voiceTwo r2 |
  r8 d ef g,  fs4 a |
  d,8 d'16 c  bf8 c16 d  ef2~ |
  ef8 ef16 d  c8 d16 ef  \oneVoice fs,8 a16 g  fs8 g16 a |
  d,8 d'16 c  bf8 c16 d  ef8 c a[ fs'] |
  
  \barNumberCheck 33
  \voiceTwo g f! ef d  c bf a[ g] |
  c8 a d[ d,]  g2 |
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
  s1\mf |
  s1 * 3 |
  s1\f |
  s1 * 3 |
  
  \barNumberCheck 9
  s1 * 3 |
  s1\p |
  s4 s2.-\tweak Y-offset -6 \cresc |
  s1 * 2 |
  s2 s\f |
  
  \barNumberCheck 17
  s1 * 7 |
  s2 s\fp |
  
  \barNumberCheck 25
  s4 s2.\cresc |
  s1 |
  s1-\tweak Y-offset -1.5 \f |
  s8 s4.\p s2 |
  s1 |
  s4 s2.\cresc |
  s2 s-\tweak Y-offset -1.5 \f |
  s1 |
  
  \barNumberCheck 33
  s2\ff s-\tweak Y-offset -1 ^\rall |
  s1 |
}

tempi = {
  \tempo "Andante con moto" 4 = 80
  s1 * 32 |
  \set Score.tempoHideNote = ##t
  s2 \tempo  4 = 76 s4 \tempo 4 = 72 s |
  \tempo 4 = 69
  s4 \tempo 4 = 66 s \tempo 4 = 40 s2 |
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
}

fugueSixteenNotes =
\score {
  \header {
    title = "Fugue 16"
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

fugueSixteenMidi =
\book {
  \bookOutputName "fugue-16-bwv-861"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

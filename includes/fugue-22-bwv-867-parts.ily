%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 2)) \etc

tieShapeA = \shape #'((0 . -0.75) (0 . -0.75) (0 . -0.75) (-0.5 . -0.75)) \etc
tieShapeB = \shape #'((0 . 0.25) (0 . 0.25) (0 . 0.25) (0 . 0.25)) \etc
tieShapeC = 
  \shape #'((1 . -0.6) (0 . -0.8) (0 . -0.8) (-1 . -0.6)) \etc

forceHShiftA = \tweak NoteColumn.force-hshift 0.4 \etc

moveCrescA = \once \override DynamicTextSpanner.bound-details.left.padding = 0

%%% Music %%%

global = {
  \time 4/4
  \key bf \minor
}

rightHandUpper = \relative {
  \voiceOne bf'2-> f->  |
  r4 gf'( f ef |
  df c df ef |
  f4)-\slurShapeA ( e8 f g2~ |
  g4) af8 g f2~ |
  f4 ef8 df ef4 f |
  gf!2. f8 ef |
  f4 g af2~ |
  
  \barNumberCheck 9
  af4 g8 f g4 a |
  bf2. a8 g |
  a4 bf c2~ |
  c4 bf8 a bf4 af |
  gf4 f ef2~ |
  ef4 f8 gf f4 ef |
  df1 |
  c1 |
  
  \barNumberCheck 17
  bf1~ |
  bf2. ef4 |
  af,1~ |
  af2 df |
  c2 f2~ |
  f2 ef4 df |
  c2 df~ |
  df2 c |
  
  \barNumberCheck 25
  df2-> af-> |
  b'4\rest cf bf af |
  gf4 f gf af |
  bf4 a8 bf c2~ |
  c4 bf2 a4 |
  bf1~ |
  bf2 af! |
  gf1 |
  
  \barNumberCheck 33
  f2 ff |
  ef1-\tieShapeB ~ |
  ef2 af~ |
  af2 g2 |
  af2 r |
  s1 * 3 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 |
  f2-> bf,-> |
  r4 cf' bf af |
  gf2 ff4 ef |
  d2 ef~ |
  ef2 d |
  ef2 r |
  s1 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 * 2 |
  r2 bf-> |
  f2-> r4 gf' |
  f4 ef df c |
  df4 ef f ef |
  df4 c bf2~ |
  bf4 c df2~ |
  
  \barNumberCheck 73
  df4 df c bf |
  bf2 a |
  bf1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour R1 * 2 |
  f'2-> bf,-> |
  r4 df' c bf |
  af4 g af bf |
  c2. bf8 a |
  bf4 c df2~ |
  df4 c8 bf c4 d |
  
  \barNumberCheck 9
  ef2. df!8 c |
  df4 ef f2~ |
  f4 ef8 df ef2~ |
  ef4 f8 ef df4 c |
  bf2. a8 bf |
  c4 a bf c~ |
  c4 bf8 a bf2~ |
  bf2 af!~ |
  
  \barNumberCheck 17
  \forceHShiftA af1 |
  gf1~ |
  gf1 |
  \voiceOne f2 bf |
  af2 df-\tieShapeA ~ |
  \voiceThree df4 c bf2 |
  \voiceFour af1_~ |
  af4 bf af gf |
  
  \barNumberCheck 25
  f4 ef f gf |
  af2 f |
  bf2_> ef,_> |
  r4 \voiceFour gf' f ef |
  \voiceThree df2 c |
  \voiceFour d2 ef |
  f1~ |
  \voiceThree f4 ef8 d ef2~ |
  
  \barNumberCheck 33
  \voiceFour ef2 df!~ |
  df4 ef8 ff ef4 df |
  \voiceOne cf2 ff2~ |
  \voiceFour ff8 ef df4~  df8 ff ef df |
  \voiceTwo c!2 b\rest |
  s1 |
  s4 \voiceOne af bf c |
  df1~ |
  
  \barNumberCheck41
  df2 c |
  df4 cf8 bf cf2~ |
  cf4 bf8 af bf4 c! |
  df2. c8 bf |
  c4 d ef2~ |
  ef4 df!8 c  df ef df ef |
  f2 ef~ |
  ef4 ef df c |
  
  \barNumberCheck 49
  bf8 c df bf  gf2\trill |
  f2 f |
  ef2 d'4\rest \voiceFour f |
  ef4 \voiceTwo df! \voiceThree cf2 |
  bf1-\tieShapeC ~ |
  bf1 |
  bf2 ef, |
  r4 f' ef df |
  
  \barNumberCheck 57
  c4 bf c df |
  ef4 gf! f ef |
  d4 f ef df |
  c2 df~ |
  df4 c2 bf4 |
  a4 gf' f ef |
  df2 c |
  bf1 |
  
  \barNumberCheck 65  
  af1 |
  gf1
  f1 |
  \voiceFour f2 \voiceThree bf,2 |
  \voiceFour b'4\rest c bf a |
  bf4 a bf c |
  bf4 a bf2 |
  af!4 gf f2 |
  
  \barNumberCheck 73
  g2 g |
  \voiceThree f4 gf! f ef |
  d1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  R1 * 8 |
  
  \barNumberCheck 9
  R1 |
  \voiceThree bf2-> f-> |
  r4 gf'! f ef |
  df4 c bf c8 df |
  ef4 f gf2-> |
  f4 ef df c |
  df4 ef f gf! |
  c,2 f~ |
  
  \barNumberCheck 17
  f4 d ef f~ |
  f4 ef8 d ef2~ |
  ef1 |
  \voiceUp df2 f2~ |
  f1 |
  bf4 af gf f |
  \voiceDown ef2 f |
  ef1 |
  
  \barNumberCheck 25
  df4 c df ef |
  f2 d |
  ef2. f4 |
  gf4 ef a g8 f |
  \staffUp \voiceTwo bf4 f' ef2 |
  bf1~ |
  bf1~ |
  bf1~ |
  
  \barNumberCheck 33
  bf1~ |
  bf1 |
  af4 bf cf2 |
  bf1 |
  af2 df, |
  b'4\rest f'4 ef df |
  c4 gf f ef |
  df4 gf2 f4 |
  
  \barNumberCheck 41
  ef1 |
  af,2 af'4 gf8 f |
  gf4 df2 ef4 |
  af,4 af'8 gf af4 ef~ |
  ef4 f bf,2~ |
  bf4 f'2 bf,4 |
  r4 df' c bf |
  a8 bf c a  f4 af |
  
  \barNumberCheck 49
  gf4 f ef2~ |
  ef4 d8 c d2 |
  ef2 d |
  ef4 bf' af gf |
  f2 gf |
  f1 |
  ef2 bf |
  r4 df' c bf |
  
  \barNumberCheck 57
  a4 g a bf |
  c4 ef df c |
  bf4 d c bf |
  a2 bf |
  ef,2 e |
  f4 a bf c~ |
  c4 bf2 a4 |
  bf4 af! gf f |
  
  \barNumberCheck 65
  ef4 d8 ef f2~ |
  f4 f ef df |
  c4 ef2 df4 |
  \voiceFour c2 bf |
  r2 r4 \voiceTwo gf'4 |
  f4 ef df c |
  df8 ef f2 g4 |
  \voiceFour f4 ef df2 |
  
  \barNumberCheck 73
  bf2 c2~ |
  c1 |
  bf1 |
}

leftHandMiddle = \relative {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 |
  \voiceTwo R1 * 2 |
  f2-> bf,-> |
  d4\rest df' c bf |
  a4 f g a |
  \voiceThree bf4 c, df ef |
  \voiceFive f4 gf af2 |
    
  \barNumberCheck 17
  bf1 |
  bf1 |
  \voiceFour c4 \voiceThree c, df ef |
  f4 ef f gf |
  af4 bf8 c bf4 af |
  gf4 af bf c8 df |
  af1~ |
  af1~ |
  
  \barNumberCheck 25
  \voiceFour af2 f\rest |
  R1 * 3 |
  \voiceThree bf2-> f-> |
  r4 gf' f ef |
  d4 bf c d |
  ef4 f, gf af |
  
  \barNumberCheck 33
  bf4 cf df2 |
  ef4 g, af bf |
  cf4 bf af gf |
  ff2 ef~ |
  ef4 af gf f! |
  ef4 df bf'2 |
  af4 s2. |
  s1 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 4 |
  f!2-> bf,-> |
  r4 cf' bf af |
  gf4 f gf af |
  bf4 c8 df ef2~ |
  
  \barNumberCheck 57
  ef4 df c bf |
  a2 af2~ |
  af2 gf~ |
  gf4 f ef df |
  bf'2. c4 |
  df4 c df ef |
  f1~ |
  f2 ef4 df |
  
  \barNumberCheck 65
  cf1 |
  bf4 df! c! bf |
  a2 bf |
  a2 r |
  f2-> bf,-> |
  r4 c' bf a |
  bf4 c df ef |
  bf1 |
  
  \barNumberCheck 73
  R1 |
  c2 f,~ |
  f1 |
}

leftHandLower = \relative {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 3 |
  \voiceTwo R1 * 3
  bf,2-> f-> |
  r4 gf' f ef |
  
  \barNumberCheck 17
  d4 bf c d |
  ef4 f ef df! |
  c4 af bf c |
  df2 bf |
  f'2 df |
  ef4 f gf2~ |
  gf4 f ef df |
  af'2 af, |
  
  \barNumberCheck 25
  df2 r |
  R1 * 6 |
  ef2-> bf-> |
  
  \barNumberCheck 33
  r4 cf' bf af |
  g4 ef f! gf |
  af4 gf! ff ef |
  df4 bf ef ef, |
  af2 bf4 af |
  gf2 gf'~ |
  gf4 f gf af |
  bf2 gf |
  
  \barNumberCheck 41
  af4 bf af gf |
  f2. ef8 df |
  ef4 f gf2~ |
  gf4 f8 ef f4 g |
  af2. g8 f |
  g4 a  bf8 c bf c |
  df8 c bf af!  gf! f gf ef |
  f2-> bf,-> |
  
  \barNumberCheck 49
  r4 df' c bf |
  a4 af2 gf8 f |
  gf4 af bf2 |
  ef,2-> af,->~ |
  af4 gf f ef |
  bf'1 |
  ef2. f4 |
  gf1~ |
  
  \barNumberCheck 57
  gf4 f ef df |
  c2 f |
  bf,2 ef~ |
  ef4 df c bf |
  gf'2 g |
  f1~ |
  f2 f, |
  gf1~ |
  
  \barNumberCheck 65
  gf4 f ef d |
  ef2 ef'~ |
  ef4 df8 c df4 ef |
  f4 ef df c |
  df4 a bf2 |
  f2-> r4 gf' |
  f4 ef df c |
  d4 ef  f8 gf! e f |
  
  \barNumberCheck 73
  e,1 |
  f1 |
  bf1\fermata |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandMiddle
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1\mf |
  s4 s2.\p |
  s1-\tweak Y-offset -1.5 \mf |
  s4 s2.\p |
  s1 |
  s2 s\cresc |
  s1 |
  s2 s4-\tweak Y-offset -2 \sf \tag layout { s } \tag midi { s\f } |
  
  \barNumberCheck 9
  s4-\tweak Y-offset -2 \sf-\tweak Y-offset -1.5 \< \tag layout { s2 }
    \tag midi { s2\mf } s8 s\! |
  s2.\f\> s4\! |
  s4.\p s8\< s4 s\! |
  s4\sf \tag layout { s } \tag midi { s\f } s\sf\> s8 s\! |
  s1\p |
  s8 s4.\cresc s2 |
  s1\f |
  s1 |
  
  \barNumberCheck 17
  s1 * 3 |
  s4 s2.-\tweak Y-offset -1 \< |
  s8 s4.\! s2\fz |
  s2.-\tweak Y-offset -1 \> s4\! |
  s2-\tweak Y-offset 1 \< s\! |
  s1-\tweak Y-offset -0.5 \dim |
  
  \barNumberCheck 25
  s1\p |
  s1 * 2 |
  s4 s2.-\tweak Y-offset 1 \cresc |
  s1 * 4 |
  
  \barNumberCheck 33
  s1\cresc |
  s1 |
  s2 s4\sf \tag layout { s } \tag midi { s\f } |
  s1\f |
  s1 * 3 |
  s1\dim |
  
  \barNumberCheck 41
  s1 |
  s1-\tweak Y-offset -1.5 \p |
  s2.\< s4\! |
  s4 s2.\< |
  s8 s\! s2 \moveCrescA s4-\tweak Y-offset -1 \cresc |
  s1 |
  s2.\< s8 s\! |
  s1\f |
  
  \barNumberCheck 49
  s1 * 5 |
  s1\dim |
  s1-\tweak Y-offset -1 \p |
  s2-\tweak Y-offset 1 \< s\! |
  
  \barNumberCheck 57
  s1 * 2 |
  s1\cresc |
  s2 s4\sf \tag layout { s } \tag midi { s\f } |
  s1\dim |
  s4 s2.\p |
  s4 s2.\cresc |
  s1\f |
  
  \barNumberCheck 65
  s1-\tweak Y-offset -1.5 \ff |
  s1 * 6 |
  s2\< s4\sf s |
  
  \barNumberCheck 73
  s4\sf\> \tag layout { s2 } \tag midi { s2\f } s4\! |
  s8 \tag layout { s4.^\dimERall } \tag midi { s4.\dim } s2 |
  s1\p |
}

tempi = {
  \tempo "Lento" 2 = 60
  s1 * 73 |
  \set Score.tempoHideNote = ##t
  \tempo 2 = 56
  s2 \tempo 2 = 52 s |
  \tempo 2 = 40
  s1 |
}

forceBreaks = {
  % page 1
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\pageBreak

  % page 2
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
}

fugueTwentyTwoNotes =
\score {
  \header {
    title = "Fugue 22"
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
    \context {}
  }
}

\include "articulate.ly"

fugueTwentyTwoMidi =
\book {
  \bookOutputName "fugue-22-bwv-867"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

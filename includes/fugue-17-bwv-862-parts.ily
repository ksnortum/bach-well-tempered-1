%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key af \major
}

rightHandUpper = \relative {
  s1 * 4 |
  \beamQuarterNotes.44
  \voiceOne r4 af'8 ef'  c af f' df |
  ef2. af4~ |
  af4 g f2~ |
  f16 bf, c d  ef4~  ef8 af df, bf' |
  
  \barNumberCheck 9
  df,4 c bf2 |
  af2~  af16 af bf c  df4~ |
  df16 bf c ef  \oneVoice af g af bf  c bf af g  f g af c |
  bf af g f  ef f g bf  af g f ef  d ef f af |
  \voiceOne g f e g  f e f g  c,8 f~  f g16 e |
  f16 e f g  af2 g4~ |
  g4 f2-> e4 |
  f4~  f16 ef! df! c  bf af g af  bf df c bf |
  
  \barNumberCheck 17
  a16 c df ef  f ef df c  bf df gf f  ef df c bf |
  a4 bf16 c df8~  df c16 df ef4~ |
  ef16 c df f  bf8 f  gf ef af ef |
  f8 df16 f  gf8 df  ef c f c |
  df2. c8 f |
  d8 bf ef2 d4 |
  ef4 r r2 |
  r4 af,8 ef'  c af gf' ef |
  
  \barNumberCheck 25
  f4~ f8 g!  ef4~ ef8 f |
  df4~ df8 bf'  c, df16 bf c8 af' |
  bf,4  r16 ef f g  af4~  af16 g f af |
  % fourth beat, SrcB
  g2.~ g16 c, f8~ |
  % first beat, third sixteenth, df SrcB
  f16 ef df! f  ef2 df4~ |
  df16 c bf df  c8 f  df bf gf' ef8 |
  f4 af8 f  g!4 bf8 g |
  af8 f df!4~  df8 ef c f |
  
  \barNumberCheck 33
  c4 bf~  bf8 af16 g  af8 ef' |
  c8 af f' df  ef g, af4~ |
  af4 g af2 |
  \bar "|."
}

rightHandLower = \relative {
  r4 af8( ef'  c af f' df) |
  ef4~  ef16 df c df  ef f g ef  af bf c bf |
  af16 g f af  g2-> f4~ |
  f16 ef d f  ef4~  ef8 df16 c  df f bf af |
  \beamQuarterNotes.44
  \voiceFour g16 f ef df  c bf c df  ef4 s4 |
  r4 ef8 af  g ef c' af |
  bf4~  bf16 ef, f g  af bf c bf  af g f af |
  g2 f |
  
  \barNumberCheck 9
  r16 ef f g  af2 g4 |
  af8 g16 f  ef df c ef~  ef8 df16 ef  f8 af, |
  af'8 s s2. |
  s1 |
  r4 f8 c'  af f df'! bf |
  c8 d16 e  f8 c  df bf ef bf |
  c8 af df af  bf16 c df c  bf af g bf |
  af4 r r2 |
  
  \barNumberCheck 17
  r4 bf,8 f'  d bf gf' ef |
  r4 f8 bf  gf ef c' a |
  bf4  r16 f gf af!  bf af gf f  ef f gf bf |
  af16 gf f ef  df ef f af  gf f ef df  c df ef gf |
  f4 f8 bf  g! ef~ ef af |
  f8 d r g  af16 bf c bf  af bf g af |
  g16 af bf g  ef8 bf'  g ef df'! bf |
  \voiceFour c4 r r c8 ef~ |
  
  \barNumberCheck 25
  ef8 af, bf df~  df g, a c~ |
  c8 f, bf2 af!4~ |
  af16 g af bf c4~  c16 df ef c df4~ |
  df16 c bf df c4~  c16 bf af g  af8. af16 |
  g8 r ef af  f df! bf' g |
  af4 r r b8\rest \voiceTwo <c ef>~ |
  ef8 df d\rest <d f>~  f ef d\rest <e g> |
  <c f>8 b\rest g\rest bf  g <g bf> <af c> <f af> |
  
  \barNumberCheck 33
  af4. g8 f4 r8 bf |
  af8 r r bf  bf r r f |
  bf,16 c df f  ef df c df  c2 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 4 |
  s2. \voiceThree af4 |
  g4  af16 bf c8  bf8. bf16  af8 c |
  f,8 r r4  s2 |
  s1 |
  
  \barNumberCheck 9
  s1 |
  \beamQuarterNotes.44
  r4 af8 ef'  c af f' df |
  ef4 ef2 df4->~ |
  df4 c2-> bf4->~ |
  bf4 af8 g~  g16 bf af g  f e f g |
  af16 bf af g  f8 r r2 |
  s1 * 2 |
  
  \barNumberCheck 17
  s1 |
  f'4 bf,2  a16 bf c a |
  f8 bf16 c  df2 c4~ |
  c4 bf2 a4 |
  \oneVoice bf16 ef df c  bf af! g! f  ef df' c bf  af g f g |
  af16 c bf af  g f ef df!  ef8 af bf bf, |
  ef4~  ef16 f g af  bf c df! c  bf af g bf |
  af16 ef f g  af bf c df  ef f gf f  ef df c ef |
  
  \barNumberCheck 25
  df16 ef f ef  df c bf df  c df ef df  c bf a c |
  bf c df c bf  af! g bf  af bf af g  f ef f df |
  \voiceThree ef16 df c bf  af8 r r2 |
  r4 g'8 c  af f d' b |
  c16 ef,! f g  af bf! c bf  af g f g  af g f ef |
  f16 ef df f  ef8 r  r4 \voiceUp e'8\rest s | 
  af4 e8\rest s  bf'4 e,8\rest s |
  s8 e\rest b4\rest  f8\rest s4. |
  
  \barNumberCheck 33
  \voiceDown ef'4 df c r8 ef |
  ef8 r r f  ef r r bf~ |
  bf4 ef, ef2 |
}

leftHandLower = \relative {
  R1 |
  \beamQuarterNotes.44
  r4 ef8( af  g ef c' af) |
  bf8 ef, bf' g  af ef af f |
  g4~  g16 c, df! ef  f g af f  bf c df c |
  bf16 af g bf  af4~  af16 af, bf c  \voiceTwo df ef f ef |
  df16 c bf df  c8. d16  ef f g8~  g16 g f ef |
  d16 bf c d  ef4~ \oneVoice ef8 af d, bf' |
  ef,4~  ef16 ef f g  af bf c bf  af g f af |
  
  \barNumberCheck 9
  g8 ef  r16 af, bf c  df ef f ef  df c bf df |
  \voiceTwo c4~  c16 df ef c  f4~  f16 ef f df |
  af'16 g af bf  c8 g  af f bf f |
  g8 ef af ef  f d g d |
  e8 c d e  f4 bf,8 df |
  c4  r16 f, g af  bf af g f  ef f g bf |
  \oneVoice af16 g f ef  df ef f af  g8[ bf c c,] |
  f16 c' d e  f4~  f8[ bf e, c'] |
  
  \barNumberCheck 17
  ef,!8 a df,!4  gf4 r8 gf16 f |
  \voiceTwo ef16 gf f ef  df c bf ef  ef f gf ef  f4 |
  bf,4 r r2 |
  R1 |
  s1 * 4 |
  
  \barNumberCheck 25
  s1 * 2 |
  r4 af8 ef'  c af f' df |
  ef4  e16 bf' af g  f2 |
  c2 df! |
  af4~ af16 f g af  bf c df ef  df c bf af |
  df16 c df f  ef d c bf  ef d ef g  f e d c |
  f16 g af f  bf af g f  ef! df! c bf  af bf c df |
  
  \barNumberCheck 33
  ef16 df c df  ef8 ef,  f4 r16 ef f g |
  af16 bf c ef  df c bf af  g f ef df  c ef df f |
  ef2 af |
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
  s4 s2.^\pSempreLegatoEPesante
  s1 * 3 |
  s1\cresc |
  s1 |
  s2 s-\tweak extra-offset #'(0 . -1) \dim |
  s1 |
  
  \barNumberCheck 9
  s8\p s4.\< s4..\> s16\! |
  s1-\tweak extra-offset #'(0 . -1) \cresc |
  s4 s2.\f |
  s1 * 2 |
  s4 s8\sf \tag layout { s } \tag midi { s\f } s4 s\dim |
  s2 s\p |
  s1 |
  
  \barNumberCheck 17
  s1 |
  s16 s8.\cresc s2. |
  s4 s\f s2-\tweak Y-offset -1 \dim |
  s1 |
  s4 s2.\p |
  s2\< s4..\> s16\! |
  s1\p |
  s4 s2.\cresc |
  
  \barNumberCheck 25
  s1 * 2 |
  s4 s2.-\tweak Y-offset -6 \f |
  s1 * 2 |
  s4 s2.\p |
  s1\cresc |
  s2 s8 s4.\f |
  
  \barNumberCheck 33
  s1 |
  s8 s4.^\rit s8 s4.\dim |
  s2 s\! |
}

tempi = {
  \tempo "Andante" 4 = 60
  s1 * 33 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 4 = 58 s \tempo 4 = 56 s \tempo 4 = 54 s |
  \tempo 4 = 52
  s \tempo 4 = 50 s \tempo 4 = 40 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak

  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

fugueSeventeenNotes =
\score {
  \header {
    title = "Fugue 17"
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

fugueSeventeenMidi =
\book {
  \bookOutputName "fugue-17-bwv-862"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

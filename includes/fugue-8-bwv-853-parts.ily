%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key ef \minor
}

rightHandUpper = \relative {
  \voiceOne R1 * 2 |
  r2 bf'4 ef4->~ |
  ef8 gf f ef  df ef f4 |
  bf,4 ef~ ef8 df c4 |
  bf8 c df4~ df4. cf8 |
  bf4 ef4~ ef8 d ef f |
  gf4 f8 gf  af f gf af |
  
  \barNumberCheck 9
  bf8 af gf f  gf4 f8 ef |
  d8 ef4 d8  ef df cf4~ |
  cf8 bf16 af  bf8 cf16 df  ef8 f16 gf  f8 ef |
  d4 ef8 df  cf bf af gf |
  f8 gf af4~  af8 gf16 f  gf8 af |
  bf4 cf!8 df16 ef  af,4 r8 bf |
  cf8 df ef f  gf af bf cf~ |
  cf8 df, gf2 f4~ |
  
  \barNumberCheck 17
  f4 ef8 df  c d ef f |
  gf4 f8 ef  df ef f gf |
  df4 c bf r |
  bf4 f'4. gf8 f ef |
  df8 ef f4 bf, r8 ef~ |
  ef8 df c4  bf r8 af'~ |
  af8 gf f4~  f16 ef f gf  ef8.\trill f16 |
  f4 bf4. cf8 bf af! |
  
  \barNumberCheck 25
  g8 af bf4  ef, af~ |
  af8 gf! f2 ef4~ |
  ef4 af4.-> bf8 af gf |
  f8 gf af4  df, gf~ |
  gf8 ff ef af  df,8 gf4 f8 |
  gf4 df4.-> c8 df ef |
  f8 ef df4  af' df,~ |
  df8 ef f4 gf2~ |
  
  \barNumberCheck 33
  gf8 f ef df  c4 d |
  ef2 df |
  cf8 df ef ff  bf, cf df ef |
  cf8 bf af gf  f4 gf8 af |
  bf4 c8 d ef4. df8 |
  c8 d ef2 d4 |
  ef4 d8 ef  f af gf f |
  ef8 df! cf! bf16 cf  bf8 c d ef |
  
  \barNumberCheck 41
  f8 bf, bf' af  gf af bf cf |
  f,4 g af8 gf f ef |
  d4 ef4. df8 cf bf |
  cf8 bf af4~  af8 gf16 f gf8 af |
  bf4 ef,4_~ ef8 d ef f |
  gf8 f ef4  bf' ef,~ |
  ef8 f g4 af \oneVoice af' |
  ef4. df8 ef4. f8 |
  
  \barNumberCheck 49
  gf4. f8 ef4 bf' |
  \voiceOne ef,4. ef8  d ef f d |
  ef8 f gf af  bf bf, ef f |
  d4 r bf ef->~ |
  ef8 ff ef df  cf df ef4 |
  \oneVoice af,8 bf16 cf  bf8 cf df4 gf,->~ |
  gf8 f gf af  bf af gf4 |
  \voiceOne ff'2~ ff8 d ef4~ |
  
  \barNumberCheck 57
  ef8 gf f! ef  d f bf4~ |
  bf8 cf bf af  gf af bf4 |
  ef,4 af~ af8 gf f4 |
  ef4 df cf bf |
  af4 gf f r8 c' |
  d8 ef f4~  f8 ef df16 cf df g |
  af16 bf cf4 bf16 af  bf8 ef, f g |
  af4 r bf ef,~ |
  
  \barNumberCheck 65
  ef8 cf df ef  ff ef df4 |
  af'4 ef~ ef8 f g4 |
  af8 bf af gf  f gf af4~ |
  af8 gf f gf16 af  bf af bf4 af16 gf |
  f8 gf4 f8  gf df gf4~ |
  gf8 af gf ff  ef ff gf4 |
  cf,4 ff~ ff8 ef df4 |
  cf4 ff~ ff8 d ef4~ |
  
  \barNumberCheck 73
  ef4 af4~  af8 f g gf~ |
  gf8 ef ff4 ef df |
  cf4. cf8 bf4. gf'8 |
  af,2~ af8 gf16 f! gf8 af |
  bf4 r f'2-> |
  bf2.-> cf4 |
  bf4 af gf af |
  bf2 ef, |
  
  \barNumberCheck 81
  af2. gf4 |
  ff2 ef~ |
  \oneVoice ef8 cf af4. bf8 cf4~ |
  cf8 af f4. gf8 af4~ |
  af8 f d4. d8 ef f |
  gf8^\rall g af bf \voiceOne cf c d ef |
  ef4 d ef2\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour ef'4 bf'4.-> cf8 bf af |
  gf8 af bf4 ef, af~ |
  af8 gf f4 ef4. f8 |
  gf4 af bf4. af8 |
  gf8 f gf8 f16 ef  f8 bf4 a8 |
  bf4. af!8 g8 ef af4~ |
  af8 gf! f ef  f4 gf8 af |
  bf8 c d ef  f d ef f |
  
  \barNumberCheck 9
  gf8 f ef d  ef df cf4 |
  bf4 af gf af8 gf |
  f4. ef16 f  gf8 af16 bf  af8. gf32 af |
  bf8 af gf[ f]  ef4 d8 ef |
  f8 ef d c  d4 ef8 f |
  gf4 af8 gf  f df gf4~ |
  gf4 f2 ef4 |
  df8 f gf af  bf cf df cf |
  
  \barNumberCheck 17
  bf8 af gf f  ef f gf bf |
  ef8 df! c2 bf4~ |
  bf4 a bf, f'~ |
  f8  gf f ef  df ef f4 |
  bf,4 r8 ef~  ef df c4 |
  bf4 r8 af'~  af gf f4 |
  ef4 r8 df  bf' a bf4 |
  a4 bf ef4. f8 |
  
  \barNumberCheck 25
  ef4. df8 c4. df8 |
  ef4 af, df2 |
  c4 r af df->~ |
  df8 ef df cf!  bf cf df4 |
  gf,4 cf~ cf8 bf af4 |
  gf8 f gf af  bf af bf c |
  df8 cf!4 bf8  cf bf af cf |
  bf2~ bf8 c df ef |
  
  \barNumberCheck 33
  af,4 bf4. af8 gf f |
  ef8 gf cf!4. bf8 af g |
  af2. g4 |
  af4 ef4.-> d8 ef f |
  gf8 f ef4 bf' ef,~ |
  ef8 f gf4 af2 |
  gf8 af bf c  d bf, c d |
  ef4. f8 gf4 f8 ef |
  
  \barNumberCheck 41
  d8 ef f4~  f8 ef16 d ef4~ |
  ef8 df! cf bf  cf ef af4~ |
  af8 gf f ef  f4 g |
  af8 gf! f ef  d4 ef8 f |
  gf8 f gf af  bf af gf f16 ef |
  d8 af'^~ af gf16 f  g8 af bf df, |
  cf8 df ef ff  ef4 \voiceDown af,4~ |
  af8 g af bf  cf bf af4 |
  
  \barNumberCheck 49
  ef'4 bf~ bf8 cf df!4~ |
  df8 \voiceUp df' cf bf  af gf af f |
  gf8 af bf af~  af gf16 f gf8 af |
  f4 bf, ef4. ff8 |
  ef8 df cf df  ef4 \voiceDown af,8 gf |
  f4 df' gf,4.-> f8 |
  gf8 af bf af  gf4 cf8 bf |
  af4 \voiceUp df' gf,2 |
  
  \barNumberCheck 57
  cf8 bf af gf  f ef d f |
  bf,8 af' gf f  ef4 ef'8 df |
  cf bf af cf  bf ef4 df!8~ |
  df8 cf4 bf8~ bf af4 gf8~ |
  gf8 f4 ef8  d f bf4~ |
  bf8 cf! bf af  gf af bf4 |
  ef,4 af~ af8 g f ff |
  ef8 cf' bf af  g8 ef16 f  g8 af16 bf |
    
  \barNumberCheck 65
  cf4. bf8  af g af bf |
  ef,8 f g af  bf16 cf df4 cf16 bf |
  cf4 r af2-> |
  df2.-> ef4 |
  df4 cf bf cf |
  df2 gf,2 |
  cf2.-> bf4 |
  af2 gf4 cf~ |
  
  \barNumberCheck 73
  cf8 ef df! cf  bf cf df4 |
  af4 df4~ df8 cf bf4~ |
  bf8 ef, af4. af8 gf4~ |
  gf8 gf ff ef  d4 ef~ |
  ef8 d16 c  d8 f bf4. cf!8 |
  bf4. af8 gf4. af8 |
  bf2 ef,4 af~ |
  af8 gf f4  g8 bf, ef4~ |
  
  \barNumberCheck 81
  ef8 ff ef df  cf df ef4 |
  af,4 df~ df8 cf bf4 |
  \voiceDown af4. bf8  cf bf af gf |
  f4. gf8  af gf f ef |
  d4. ef8 f4 gf8 af |
  bf8 bf cf df  \voiceUp ef ef f gf! |
  % last note, g-natural, SrcB, SrcC
  f8 cf'! bf af  g2 |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  R1 * 7 |
  ef4 bf'4.-> cf8 bf af |
  
  \barNumberCheck 9
  gf8 af bf4 ef, af~ |
  af8 gf f4 ef ef' |
  d4 df c cf |
  bf8 bf, ef4~  ef8 gf f ef |
  d8 ef f4 bf, ef~ |
  ef8 df! cf2 bf4 |
  af8 bf cf df  ef f gf af |
  bf8 af bf cf  df4 df, |
  
  \barNumberCheck 17
  gf,4 gf'4.-> f8 ef df! |
  c8 bf a f  bf c df ef |
  f8 ef f f,  bf a bf c |
  df8 c df ef  f ef df ef16 f |
  gf16 f gf8  a,4 bf c |
  df8 bf f' ef  d8 ef4 d8 |
  ef8 c' a bf  gf f gf4 |
  f4 r gf cf->~ |
  
  \barNumberCheck 25
  cf8 df cf bf  af g af bf |
  c4 df8 cf  bf af g ef |
  af8 bf af gf!  f gf f ef |
  df8 cf'! bf af  gf af gf ff |
  ef8 df cf af  bf gf df' df, |
  gf8 af bf af  gf gf' f ef |
  df4 gf2 f4 |
  gf8 f ef d  ef4 bf8 c |
  
  \barNumberCheck 33
  df!4 gf, af bf |
  cf8 bf af gf  ff4 ef |
  af8 bf cf df  ef4 r8 ef |
  af8 bf cf af  bf af gf f |
  ef4 af4. g16 f g4 |
  af8 gf! f ef  f gf af bf |
  ef,16 ef' df cf  bf4. gf8 af bf |
  cf!8 bf af4 ef' bf->~ |
  
  \barNumberCheck 41
  bf8 c d4 ef gf,8 af |
  bf4 ef, af8 bf cf4 |
  bf2 r |
  r2 bf,4 ef,~ |
  ef8 d ef f  gf f ef4 |
  bf'4 ef,~ ef8 f g4 |
  af4 bf  \voiceTwo cf8 df cf bf |
  af8 bf cf ef  af4 cf,8 df |
  
  \barNumberCheck 49
  ef8 d ef f  gf af f g |
  af8 bf af gf!  \oneVoice f ef d cf' |
  bf8 af gf f  ef df! cf4\trill |
  bf4 ef4.-> ff8 ef df |
  cf8 df ef4  \voiceTwo af,8 bf cf4 |
  df4 gf,4.-> f8 gf af |
  bf8 af gf ff' ef2~ |
  ef8 df cf bf \oneVoice cf4 cf'8 bf |
  
  \barNumberCheck 57
  af8 bf cf af  bf4. af8 |
  gf8 af bf4  ef,8 f g4 |
  af8 gf f ef  d ef bf bf' |
  cf8 ef, f g  af f d ef |
  c8 d ef ef,  bf'4 r |
  bf'2-> ef->~ |
  ef4 ff ef df |
  cf4 df ef2 |
  
  \barNumberCheck 65
  af,2 df->~ |
  df4 cf4 bf2 |
  af4 df4. ef8 df cf |
  bf8 cf df4 gf, cf~ |
  cf8 bf af4\trill  gf8 ff ef16 df ef ff |
  bf,8 gf af bf  cf df ef ff16 gf |
  af8 bf16 cf  df,8 ef16 ff  gf,8 gf'4 g8 |
  af8 g af bf  cf bf af gf |
  
  \barNumberCheck 73
  f8 gf f ef  d d' ef bf |
  cf8 c df bf  g af4 g8 |
  af8 gf! ff ef  df d ef bf |
  cf8 c df af  bf2~ |
  bf8 f' bf4. cf!8 bf af |
  gf8 af bf4  ef,8 f16 gf af4~ |
  af8 gf f d'  ef f16 gf f8 ef |
  d8 ef4 df8~  df ef16 ff ef8 df |
  
  \barNumberCheck 81
  cf8 df cf bf  af gf ff ef |
  df8 df'16 cf bf8 af  g af4 gf8 |
  \voiceTwo f4 f4. gf8 f ef |
  d2~ d8 ef d c |
  bf2~ bf8 af gf f |
  ef8 df'! cf bf  \oneVoice af gf'! f ef |
  bf'4 bf, <ef, ef'>2_\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1^\pDolceSempreLegato |
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 4 |
  s2 s\cresc |
  s1 * 3 |
    
  \barNumberCheck 17
  s1\f |
  s8 s\dim s2. |
  s2 s-\tweak Y-offset -2 \p |
  s1 |
  s4 s2.\cresc |
  s1 * 2 |
  s1\f |
  
  \barNumberCheck 25
  s1 * 4 |
  s1\dim |
  s1\p |
  s1 * 2 |
  
  \barNumberCheck 33
  s1 * 2 |
  s2 s\cresc |
  s1 * 4 |
  s2 s\f |
  
  \barNumberCheck 41
  s1 * 2 |
  s1\dim |
  s1\p |
  s2. s4\cresc |
  s1 |
  s2 s-\tweak Y-offset -6 \f |
  s1 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 2 |
  s2 s\dim |
  s1 |
  s2 s-\tweak Y-offset -1 \p |
  s1 * 3 |
  
  \barNumberCheck 65
  s1 * 6 |
  s8 s\cresc s2. |
  s1 |
  
  \barNumberCheck 73
  s1 * 4 |
  s1\f |
  s1 * 3 |
  
  \barNumberCheck 81
  s1 * 2 |
  s2 s8 s4.\dim |
  s1 |
  s4 s2.-\tweak Y-offset -1 \cresc |
  s2 s4.-\tweak Y-offset -2 \< s8\! |
  s2-\tweak Y-offset -2 \dim s-\tweak Y-offset -2 \p |
}

tempi = {
  \tempo "Andante con moto" 4 = 76
  s1 * 85 |
  \set Score.tempoHideNote = ##t
  \tempo 4 = 72
  s2 \tempo 4 = 66 s |
  \tempo 4 = 60
  s4 \tempo 4 = 56 s \tempo 4 = 40 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  
  % page 3
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
}

fugueEightNotes =
\score {
  \header {
    title = "Fugue 8"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
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

fugueEightMidi =
\book {
  \bookOutputName "fugue-8-bwv-853"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

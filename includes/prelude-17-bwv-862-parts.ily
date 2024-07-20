%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 3/4
  \key af \major
}

rightHandUpper = \relative {
  r8 af'16( g  af8 c ef, af) |
  r8 bf16( af  bf8 df ef, bf') |
  % Voicing, SrcB, SrcC
  \voiceOne c4 af' r8 ef |
  df4 g r8 g |
  af4 ef r8 ef |
  ef8( af16 g  af8 f c ef) |
  df4 af' r8 df, |
  df8 bf'16 af  bf8 g df[ bf'] |
  
  \barNumberCheck 9
  c,4  \oneVoice r16 ef f g  af f d f |
  bf,4~  bf16 d ef f  g ef c ef |
  af,16 bf g bf  af c d ef  f d bf d |
  g,16 af f af  g bf c d  ef c af c |
  f,16 ef' d ef  af, ef' d ef  f, ef' d ef |
  g,16 ef' d ef  bf ef d ef  g, ef' d ef |
  af,16 ef' df! ef  c ef bf ef  af, ef' g, ef' |
  f, ef' g, ef'  af, d ef f  g, bf af c |
  
  \barNumberCheck 17
  bf16 ef d c  bf af bf c  \voiceOne f,8.\prall ef16 |
  ef4 ef'-> r8 bf |
  af4 d-> r8 d |
  ef8\noBeam \oneVoice ef,16( d  ef8 g bf,[ ef]) |
  r8 f16( ef  f8 af bf,[ f']) |
  g8 bf16 af  bf8 ef g, bf |
  ef,8 g16 f  g8 bf ef, g |
  c,8 r r gf''16 f  ef f df ef |
  
  \barNumberCheck 25
  c16 df bf c  af bf gf af  f gf ef f |
  df8 df'16 c  df8 f bf, df |
  g,8 c16 bf  c8 ef af, c |
  f,8 bf16 af  bf8 df g, bf |
  ef,8 af16 g  af8 c f, af |
  df,8->( bf'16 af  bf8 df g, bf) |
  ef,8->( c'16 bf  c8 ef af, c) |
  f,8 df'16 c  df8 f bf,[ df] |
  
  \barNumberCheck 33
  g,8 bf ef,[ g] af4~ |
  af16 g af bf \voiceOne bf4.\trill af8 |
  % second beat, SrcB, SrcC
  af8 ef'16 df  ef8 c g bf |
  af4 \oneVoice ef'~  ef16 gf, f ef |
  % second beat, SrcB, SrcC
  df8 df'16 c  df8 bf f[ af] |
  g4 df'~  df16 f, ef df |
  c16 c' bf c  af c g c  f, c' ef, c' |
  df,16 df' c df  \stemUp bf df af df  \stemNeutral g, df' f, df' |
  
  \barNumberCheck 41
  ef,8( af16 g  af8 c f,[ af]) |
  df8( g,16 f  g8 bf ef,[ g]) |
  \voiceOne c8-. af-. af4( g |
  af2.) |
  \bar "|."
}

rightHandLower = \relative {
  s2. * 2 |
  % Voicing SrcB, SrcC
  \voiceFour af'4 <c ef> r8 c8 |
  bf4 r r8 <bf df> |
  <af ef'>4 r r8 bf |
  af4 r r |
  bf4 r r8 af |
  g4 r r8 <g df'> |
  
  \barNumberCheck 9
  af4 s2 |
  s2. * 7 |
  
  \barNumberCheck 17
  s2 d,4 |
  ef4 <g bf> r8 g |
  f4 r r8 <f af> |
  <ef g bf>8 s s2 |
  s2. * 4 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. |
  s4 g2 |
  af4 s2 |
  f4 s2 |
  s2. |
  ef4 s2
  s2. * 2 |
  
  \barNumberCheck 41
  s2. * 2 |
  r8 <df f> <bf ef>2 |
  <c ef>2. |
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
  <af c ef>4 r r |
  <g bf ef>4 r r |
  r8 af16( g  af8 c ef, af) |
  r8 bf16( af  bf8 df ef, bf') |
  r8 c16( bf  c8 ef af, c) |
  f,4 f' r |
  r8 bf,16( af  bf8 df g, bf) |
  ef,4 ef' r |
  
  \barNumberCheck 9
  r8 af,16( g  af8 c f,[ af]) |
  d,8( g16 f  g8 bf ef,[ g]) |
  c,8( f16 ef  f8 af d,[ f]) |
  bf,8( ef16 d  ef8 g c,[ ef]) |
  af,8( f'16 ef  f8 af d,[ f]) |
  bf,8( g'16 f  g8 bf ef,[ g]) |
  c,8( af'16 g  af8 c f,[ af]) |
  d,8 f  bf,[ d]  ef c |
  
  \barNumberCheck 17
  g8 f g[ af]  bf4 |
  r8 ef16( d  ef8 g bf, ef) |
  r8 f16( ef  f8 af bf, f') |
  g4 r8 ef16 g  g f g ef |
  bf'8 bf, r bf16 c  d c d bf |
  ef8 ef,  r df''!16 c  bf c af bf |
  g16 af f g  ef f df ef  c df bf c |
  af8 ef''16 df  ef8 af c, ef |
  
  \barNumberCheck 25
  af,8 c16 bf  c8 ef af, c |
  f,4~  f16 af bf c  df bf g bf |
  ef,4~  ef16 g af bf  c af f af |
  df,16 ef c ef  df f g af  bf g ef g |
  c,16 df bf df  c ef f g  af f df f |
  bf,16 af' g af  df, af' g af  bf, af' g af |
  c,16 af' g af  ef af g af  c, af' g af |
  df,16 af' gf af  f af ef af  df, af' c, af' |
  
  \barNumberCheck 33
  bf,16 df c ef  df f ef df  c ef df f |
  ef8 f16 df  ef8 df ef ef, |
  af4 af' r |
  r8 f16 ef  f8 af df,[ f] |
  bf,4 bf' r |
  r8 ef,16 df  ef8 g c,[ ef] |
  af,16 af' g af  f af ef af  df, af' c, af' |
  bf,16 bf' af bf  g bf f bf ef, bf' df, bf' |
  
  \barNumberCheck 41
  c,8-. c'-. r8 f,16( g  af g af f) |
  bf8-. bf,-. r ef16( f  g f g ef) |
  af8-.[ df,-.] ef( df ef ef,) |
  af2. |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s2.^\pDolce |
  s2. * 4 |
  s4\< s2\! |
  s2. |
  s4\< s2\! |
  
    
  \barNumberCheck 9
  s2 s4\cresc |
  s2. * 6 |
  s2.\f |
  
  \barNumberCheck 17
  s2. * 3 |
  s8 s8\p s2 |
  s2. * 2 |
  s2.\cresc |
  s2. |
  
  \barNumberCheck 25
  s2. |
  s2.\f |
  s2. * 5 |
  s8\sf \tag layout { s } \tag midi { s\f } s2 |
  
  \barNumberCheck 33
  s2 s8\sf \tag layout { s } \tag midi { s\f } |
  s4 s4.\> s8\! |
  s2.\p |
  s2. * 3 |
  s2.\cresc |
  s2. |
  
  \barNumberCheck 41
  s2.\f |
  s2. * 3 |
}

tempi = {
  \tempo "Moderato" 4 = 96
  s2. * 42 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 4 = 88 s \tempo 4 = 80 s |
  \tempo 4 = 60
  s2. |
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
}

preludeSeventeenNotes =
\score {
  \header {
    title = "Prelude 17"
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
      \override Stem.details.beamed-lengths = #'(3.5 3.7)
    }
  }
}

\include "articulate.ly"

preludeSeventeenMidi =
\book {
  \bookOutputName "prelude-17-bwv-862"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

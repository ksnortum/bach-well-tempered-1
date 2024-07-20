%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 3/8
  \key f \major
}

rightHand = \relative {
  \global
  \partial 8 r8 |
  R4. * 3 |
  r4 f'8( |
  a8-.) g-. f-. |
  g8^( b,16 c d e |
  f8-> g16 f e d) |
  e16( d c d e f |
  
  \barNumberCheck 9
  g8 f e) |
  \voiceOne f16 e d e f g |
  a16 c bf a g f |
  e4.\trill |
  f8( a4 |
  g8 c4 |
  b8 e4 |
  d4.~ |
  
  \barNumberCheck 17
  d16) d c8 c( |
  d8-.) c-. bf-. |
  c8( e,16 f g a |
  bf8 c16 bf a g) |
  a16 g f g a bf |
  c16 bf a bf c d |
  e16 g f e d c |
  b4.\trill |
  
  \barNumberCheck 25
  c16 d e f g a |
  bf,!16 c d e f g |
  a16 c bf a g f |
  f8( e4\trill |
  f8) r r |
  g4.~ |
  g16 g f e d c |
  f4.~ |
  
  \barNumberCheck 33
  f16 f e d cs b |
  e4.~ |
  e8( a, d) |
  cs4 a'8( |
  bf8-.) a-. g-. |
  a8 cs,16 d e f |
  g8 a16 g f e |
  f16 a g f e d |
  
  \barNumberCheck 41
  cs4. |
  d16 c! bf a g f |
  bf8 a g |
  a4.~ |
  a16[ bf!] e,8.\trill d16 |
  d16 e f g a bf |
  c! bf c d ef d |
  fs,16 e! d e fs g |
  
  \barNumberCheck 49
  a4.~ |
  a16 g a bf c d |
  \oneVoice ef8 d c | 
  d8 fs,16 g a bf |
  c16 bf d c bf a |
  bf16 fs g a bf c |
  % prall over bf, SrcB
  d16[ g] bf,8\prall a16[ g] |
  g8 \voiceOne bf4~ |
  
  \barNumberCheck 57
  bf16 g c bf a g 
  a4.~ |
  a16 f bf a g f |
  e!8 f g |
  a8 bf c |
  d8 e! f |
  g4.~ |
  g16 c, f ef d c |
  
  \barNumberCheck 65
  d16 c ef d c bf |
  \oneVoice c8^( e,!16 f g a |
  bf a c bf a g) |
  a16 g bf a c bf |
  d16 c e d f e |
  \voiceOne g16 a, bf g a8~ |
  a16[ bf] g8.\trill f16 |
  f4. |
  \bar "|."
}

leftHandUpper = \relative {
  \voiceThree 
  \partial 8 c'8( |
  d8-.) c-. bf-. |
  c8 e,16( f g a |
  bf8-> c16 bf a g) |
  a16 g f g a bf |
  c16 bf a bf c d |
  \stemDown e16 g f e d c |
  \stemUp b4.(\trill |
  c8 bf! a) |
  
  \barNumberCheck 9
  bf16 a g a bf c |
  a4 \voiceUp d8( |
  e8 g c,) |
  c4.~ |
  c4 f8 |
  e4 a8 |
  g4 c8~ |
  c16 c b a g f |
  
  \barNumberCheck 17
  e8. bf'!16 a g |
  f e d e f g |
  a8 r r |
  R4. r4 f8( |
  a8-.) g-. f-. |
  g8( b,16 c d e |
  f8 g16 f e d) |
  
  \barNumberCheck 25
  e16 d c d e c |
  f4 r8 |
  r4 c'8( |
  d8-.) c-. bf-. |
  c8( e,16 f g a |
  bf8 c16 bf a g) |
  a4.~ |
  a8 bf16 a g f |
  
  \barNumberCheck 33
  g4.~ |
  g8 a16 g f e |
  f16 e f g a g |
  a16 bf a g f e |
  d16 cs d f e d |
  cs8 r a'( |
  bf8-.) a-. g-. |
  a8 cs,16 d e f |
  
  \barNumberCheck 41
  g8 a16 g f e |
  f4 r8 |
  cs4.~ |
  cs16 a b \once \omit Accidental cs d e |
  f16 e cs4 |
  d4 r8 |
  R4. |
  r4 d8 |
  
  \barNumberCheck 49
  ef8 d c |
  d8 \voiceDown fs,16[ g a bf] |
  c16 bf d c bf a |
  bf16 d c bf a g |
  fs8 s4 |
  g16 a bf c d a |
  bf8 g fs |
  g16 \voiceUp d' g f! e d |
    
  \barNumberCheck 57
  e4. |
  r16 c f ef d c |
  d4. |
  c8 d e |
  f8 g a |
  bf4.~ |
  bf16 g c bf a g |
  a4.~ |
  
  \barNumberCheck 65
  a8 \voiceDown d,,[ g]~ |
  g16 f bf a g f |
  g8 bf,16 c d e |
  f4.~ |
  f4 bf8~ |
  bf8 \voiceUp e f~ |
  f8 e4 |
  f4. |
}

leftHandLower = \relative {
  \voiceTwo 
  \partial 8 r8 |
  R4. * 8 |
  
  \barNumberCheck 9
  r4 c8( |
  d8-.) c-. bf-. |
  \oneVoice c8( e,16 f g a |
  bf8-> c16 bf a g) |
  a16 g f g a bf |
  c16 b a b c d |
  e16 g f e d c |
  b4.(\trill |
  
  \barNumberCheck 17
  c8 d16 e f8) |
  bf4.( |
  a16 c bf a g f) |
  e4.\trill |
  f4 r8 |
  R4.* 3 |
  
  \barNumberCheck 25
  r4 c'8( |
  d8-.) c-. bf-. |
  c8( e,16 f g a |
  bf8 c16 bf a g) |
  a16 c bf a g f |
  e4.\trill |
  f8-. g-. a-. |
  d,4-> r8 |
  
  \barNumberCheck 33
  e8-. f-. g-. |
  cs,4( cs'8\f |
  d8-.) c!-. bf-. |
  a4.~ |
  a4.~ |
  a4.~ |
  a4.~ |
  a4 a8(\f |
  
  \barNumberCheck 41
  bf8-.) a-. g-. |
  a8 cs,16 d e f |
  g8 a16 g f e |
  f8. g16 f e |
  d16[ g] a8 a, |
  d,4 d'8 |
  ef8 d c! |
  d8 fs,16 g a bf |
  
  \barNumberCheck 49
  c16 bf d c bf a |
  \voiceTwo bf8 r r |
  fs'8 r r |
  g8 r r|
  ef8 \oneVoice r r |
  \voiceTwo d8 r r |
  r16 c d8 d |
  g,8^( a bf |
  
  \barNumberCheck 57
  c8 d e |
  f8 g a) |
  \oneVoice bf4.~ |
  bf16 g c bf a g |
  f16 c f ef d c |
  bf16 c bf a g f |
  e4 r8 |
  f8 g a |
  
  \barNumberCheck 65
  \voiceTwo bf4 r8 |
  a4 r8 |
  g4 r8 |
  f8 g a |
  bf8 c d |
  e8 c f|
  \oneVoice bf,8 c c, |
  f4. |
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
  \override DynamicTextSpanner.style = #'none
  \partial 8 s8\p |
  s4. * 8 |
  
  \barNumberCheck 9
  s4. * 4 |
  s16 s-\tweak Y-offset -6 \cresc s4 |
  s4. |
  s4.\f |
  s4. |
  
  \barNumberCheck 17
  s4. * 2 |
  s4.\dim |
  s4. |
  s4.\p |
  s4. * 3 |
  
  \barNumberCheck 25
  s4. * 6 |
  s4.\cresc |
  s4. |
  
  \barNumberCheck 33
  s4. * 3 |
  s4.\sfp |
  s4. |
  s8 s4\cresc |
  s4. * 2 |
  
  \barNumberCheck 41
  s4. * 4 |
  s8 s8.\> s16\! |
  s4.\p |
  s4. * 2 |
  
  \barNumberCheck 49
  s4. |
  s16 s-\tweak Y-offset 1 \cresc s4 |
  s4. * 2 |
  s4.\sf |
  s4.\f |
  s4. * 2 |
  
  \barNumberCheck 57
  s4.\cresc |
  s4. |
  s4.\sf |
  s4. |
  s4.\< |
  s4 s16 s\! |
  s4\sf\> s16 s\! |
  s4\p\< s16 s\! |
  
  \barNumberCheck 65
  s4\> s16 s\! |
  s4. * 2 |
  s4.-\tweak Y-offset 1 \< |
  s4 s8\! |
  s4.-\tweak Y-offset 1 \p |
  s4. |
}

tempi = {
  \tempo "Allegretto" 4. = 66
  \partial 8 s8 |
  s4. * 69 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 4. = 60 s8 |
  \tempo 4. = 56
  s8 \tempo 4. = 52 s \tempo 4. = 48 s |
  \tempo 4. = 40
  s4. |
}

forceBreaks = {
  % page 1
  \partial 8 s8
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\pageBreak
  
  % page 2
  \repeat unfold 7 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
}

fugueElevenNotes =
\score {
  \header {
    title = "Fugue 11"
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

fugueElevenMidi =
\book {
  \bookOutputName "fugue-11-bwv-856"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

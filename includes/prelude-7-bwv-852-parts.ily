%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

forceHShiftA = \tweak NoteColumn.force-hshift -1 \etc
forceHShiftB = \tweak NoteColumn.force-hshift 0.1 \etc

%%% Music %%%

global = {
  \time 4/4
  \key ef \major
}

rightHandUpper = \relative {
  r16 g' af bf  af g f ef  \voiceOne df'2->~ |
  df16 c df ef  df c bf af  f'2->~ |
  f16 d! ef f  ef d c bf  af'2->~ |
  af16 f g af  g f ef d  g2~ |
  g16 ef f g  f ef d c  c'2~ |
  c16 a bf c  bf a g f  bf a g f  ef d c bf |
  \oneVoice ef2~ ef16 ef f g  f ef d c |
  d32 c d ef d c bf a  bf a bf c bf af g f  g f g af g f ef d
    ef d ef f ef d c bf |
    
  \barNumberCheck 9
  r32 c d ef f g a bf  c a f g a bf c d  \voiceOne ef8~ ef32 f64 ef d32 ef
    ef8. d16 |
  d4 r r2 |
  R1 |
  r4 bf ef2 |
  d!4 ef2 af4~ |
  af4 g2 f8 ef |
  d4 ef2 d4 |
  e4 f2 ef4 |
  
  \barNumberCheck 17
  d4 g2 f4~ |
  f4 ef2 d4~ |
  d4 c8 bf a4 bf~ |
  bf4 ef2 d4 |
  c2 bf |
  af2 g~ |
  g4 f8 ef d!2 |
  ef2~ ef4 d8 c |
  
  \barNumberCheck 25
  d8 r r4 r2 |
  r2 r16 af'! bf c  bf af g f |
  g16 ef'( f g  f ef d c  bf8 c16 d  ef d c bf |
  af16 g f ef  af8-.) af-. af4 g~ |
  g4 a bf8 c d4~ |
  d4~ d16 d c bf  a8 bf16 c  d4~ |
  d4~ d16 c d ef  f4 r |
  r16 f g af!  g f ef d  ef2~ |
  
  \barNumberCheck 33
  ef16 ef f g  f ef d c  d2~ |
  d4 c~ c8 bf a4\trill |
  g4 r f bf~ |
  bf af df2~ |
  df16 bf c df  c bf af g  f2~ |
  f4 e f c'~ |
  c4 b ef2~ |
  ef16 ef f g  f ef d c  b f' g af  g f ef d |
  
  \barNumberCheck 41
  c16 b c d  d8.\trill c16 c4 r |
  r16 bf! c df  c bf af g  f8 g16 af  bf af g f |
  s4 ef'8-. ef-. ef4( d4 |
  g2)~ g4 f |
  b,4 <g c>8 <b d!>  ef[ e] <d f> <e g> |
  \forceHShiftA af2~ af16 af bf c  bf af g f |
  ef2 bf~ |
  bf4~ bf16 af bf c  f,2 |
  
  \barNumberCheck 49
  ef2 d4 r | 
  af'2~ af16 f g af  g f ef d |
  c4~ c16 c d ef  f4~ f16 ef f g |
  af2~ af8 g af[ bf!] |
  c4~ c16 ef d c  b8 c16 d  ef d c bf |
  af16 g f ef  d d' ef f  b,8 c16 d  c bf af g |
  c2~ c8 d! e4 |
  f16 c df ef!  df c bf af  g4 r |
  
  \barNumberCheck 57
  r16 af' bf c  bf af g f  af g f ef  af4~ |
  af4 g! af8 ef af4~ |
  af4 g c2 |
  bf4~ bf16 bf af g  f8 g16 af  g f ef d! |
  ef8 f16 g  af8 af~  af16 g af bf  af g f ef |
  f8 g16 af  bf af g f  ef d c bf  ef8 ef |
  ef4 r16 d! ef f  bf,2~ |
  bf4 af2 g4 |
  
  \barNumberCheck 65
  c2 bf4 ef~ |
  ef4 d gf2 |
  f4 ef2 d4 |
  ef2 d!4 df~ |
  df16 bf c df  c bf c af  d!2 |
  ef1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour s4 s8. \hideNoteHead ef'16~ ef2~ |
  ef8 r r4*3/4 \hideNoteHead af16~ af2~ |
  af8 r r4*3/4 \hideNoteHead bf16~ bf2~ |
  bf8 r r4 ef2~ |
  ef16 r r8 r4*3/4 \hideNoteHead c16~ c2~ |
  % d in source, but this is wrong
  c8 r r4 r2 |
  s1 * 2 |
  
  \barNumberCheck 9
  s2 c |
  f,4 r4 r2 |
  r2 ef4 af~ |
  af4 g2 f4~ |
  f4 g2 c4 |
  bf2 c |
  bf2~ bf4. af8 |
  g4 c b c8 bf |
  
  \barNumberCheck 17
  af4 g8 af16 bf af2~ |
  af4 g f g8 af |
  g2 f~ |
  f4  ef16 d' c bf  a4 bf~ |
  bf4 af!2 g4~ |
  g4 f2 ef8 df |
  c2. bf4~ |
  bf4 a bf2~ |
  
  \barNumberCheck 25
  bf16 bf' c d  c bf a g  f8 g16 a  bf a g f |
  ef16( d c bf  ef8-.) ef-. ef4( d |
  ef8) r r4 r2 |
  c2 bf4~ bf16 d ef f |
  ef16 d c bf  ef8 c f4~ f16 f g af |
  g16 f ef d g4 f2 |
  g2 r16 a bf c  bf a g f |
  bf2~ bf16 bf c d  c bf a g |
  
  \barNumberCheck 33
  a2~ a8 d, g[ f] |
  ef2 d4 c |
  bf4 ef2 d4 |
  g4 f~ f16 f g af  g f e f |
  e2 r16 ef df c  bf4~ |
  bf16 bf c df  c bf af g  af4 r |
  r16 f' g af  g f ef! d  c g' af bf  af g f ef |
  f2 d4 ef~ |
  
  \barNumberCheck 41
  ef8 af g[ f] ef4 af~ |
  af4 g c bf |
  << { bf1~ } \new Voice { \voiceFour g2 s } >> |
  bf2~ bf16 bf c df  c bf af g |
  f4 s4 \voiceThree c'4 s |
  \voiceTwo \forceHShiftB f16 ef! f g  f ef d c  d2~ |
  \voiceFour d16 bf c df  c bf af g  f8 g16 af  bf af g f |
  ef16 d c bf  ef8 ef ef4 d |
  
  \barNumberCheck 49
  c2 r16 f g af!  g f ef d |
  c8 d16 ef  f ef d c  \voiceDown bf af g f  bf8 bf |
  bf16 g a bf  a4~ a16 a b c  b4~ |
  b8 b c[ d]  \voiceUp ef2~ |
  ef16 ef f g  f4 g2 |
  r2 d4 g~ |
  g4 f bf2~ |
  bf8 af df2 c4 |
  
  \barNumberCheck 57
  f2 ef4~ ef16 ef f gf |
  f16 ef df c  bf4  r16 bf c df  c bf af g |
  f8 g16 af  bf af g f  ef8 f16 g  af8 af~ |
  af16 g af bf  c2 bf4 |
  ef2 d!4 ef |
  c4 r r r16 g af bf |
  af16 g f ef  f4~  f16 f g af  g f ef df |
  c4 f2 ef4 |
  
  \barNumberCheck 65
  af2. g4 |
  f4 bf2 a4 |
  d4 bf4~bf4. af8 |
  g16 bf c df  c bf af g  f8 g16 af  bf af g f |
  ef4 af~ af16 af bf cf  bf af g af32 f |
  g1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree r2 r16 g af bf  af g f ef |
  af2->~ af16 af bf c  bf af g f |
  d'!2->~ d16 d ef f  ef d c bf |
  ef2->~ ef16 16 f g  f ef d c |
  \oneVoice bf16 c d ef  d c bf af  g ef f g  f ef d c |
  f16 c d ef  d c bf a  d bf c d  c bf a g |
  \voiceThree r16 ef' f g  f ef d c  a'2 |
  bf1( |
  
  \barNumberCheck 9
  a1) |
  bf4 ef2 d4 |
  c2 bf4 c |
  d4 ef df c |
  bf2 ef |
  f4 ef2 af4~ |
  af4 g f2 |
  c2 d4 ef |
  
  \barNumberCheck 17
  f8 ef d4 ef f |
  bf,1~ |
  bf4 ef8 d c4 d8 c |
  bf8 a bf4 c4 d8 ef |
  f4. ef8 d bf ef4~ |
  ef4 bf bf2~ |
  bf4 af8 g f4 g8 f |
  ef4. f8 g4 f8 ef |
  
  \barNumberCheck 25
  f4 r r2 |
  r2 s |
  ef4 af2 g4 |
  s1 * 2 |
  bf4 ef2 d4 |
  f4( ef8 d c4) d~ |
  d16 d ef f  ef d c bf  c2~ |
  
  \barNumberCheck 33
  c2. bf4~ |
  bf16 g a bf  a g fs e  fs8 g4 fs8 |
  r16 g af! bf  af g f! ef! bf'4 r |
  r16 bf c df  c bf af g  af8 bf16 c bf8 af |
  g4 af2~ af16 af g f |
  g2 f4 r |
  d4 g2 ef4 |
  af2( g4) c~ |
  
  \barNumberCheck 41
  c4. b8 c4 r |
  bf!4 ef2 d!4 |
  ef16 d c bf s4 f'2~ |
  f16 bf, c df  c bf af g  c2 |
  d!4 \voiceUp ef8 f g[ g] af bf |
  c4 r r2 |
  \voiceDown ef,,4 af2 g4 |
  c2~ c16 a bf c  bf af g f |
  
  \barNumberCheck 49
  gf4 f2 r4 |
  s1 * 3 |
  c4 f2-> ef4-> |
  af2 g |
  r16 c df ef  df c bf af  g2 |
  r4 r16 af bf c  bf af g f  g8 r |
  
  \barNumberCheck 57
  R1 |
  r4 r16 bf c df  c4 r |
  r16 df ef f  ef4  r16 c df ef  df c bf af |
  ef'2 d! |
  r16 c df ef  df c bf af  bf2 |
  af4 r16 f g af  bf4 r16 bf c df |
  c16 bf af g  af4~ af8 g16 f  g4~ |
  g16 ef f g  f ef d c  bf af' bf c  bf af g f |
  
  \barNumberCheck 65
  ef8 r r4 r2 |
  r16 c' d ef  f af g f  ef f ef d  c ef d c |
  af'4 g f2 |
  ef,4 af2 g4 |
  c2 cf |
  bf1 |
}

leftHandLower = \relative {
  \voiceTwo ef1~ |
  ef1~ |
  ef1~ |
  ef8 r r4 r2 |
  s1 * 2 |
  c1 |
  bf~ |
  
  \barNumberCheck 9
  bf1 |
  bf4 r f' bf~ |
  bf4 af g2 |
  f4 ef2 af4~ |
  af4 g c2 |
  d4 ef af,2 |
  bf1~ |
  bf4 af g c~ |
  
  \barNumberCheck 17
  c4 bf c d |
  g,4. af8 bf4 bf, |
  ef2. d4 |
  g2 f~ |
  f2 g4~ g16 f ef d |
  c4 d ef~ ef16 df c bf |
  af2 bf |
  c2 bf~ |
  
  \barNumberCheck 25
  bf4 ef2 d4 |
  g2 f |
  ef4. f8 g f ef[ d] |
  \oneVoice c16 ef f g  f ef d c  ef d c bf  ef8 d |
  c4~ c16 c d ef  d c bf a  bf8 bf' |
  \voiceTwo ef,2 r16 f g a  bf a g f |
  ef16( d c bf  ef8-.) ef-. ef4 d |
  g2~ g16 g a bf  a g f ef |
  
  \barNumberCheck 33
  f2 r16 fs g a  g f ef d |
  c2 d |
  g,4 r r16 d' ef f  ef d c bf |
  e4 f2 bf,4 |
  c2 df |
  c2 r16 f, g af  g f ef d! |
  g2 c |
  f2~ f4 ef |
  
  \barNumberCheck 41
  af8 f g4 r16 c, df ef df c bf! af |
  ef'2 af |
  g4~ g16 f g af  bf af bf c  bf af g f |
  e2 af~ |
  af16 f g af  g f ef d  \oneVoice c bf! c df  c bf af g |
  f4 bf2 g4 |
  \voiceTwo c2 d!8 bf ef[ d] |
  c4. bf8 a4 bf~ |
  
  \barNumberCheck 49
  bf16 a bf c  bf a g f  bf4 ef4~ |
  ef4 d g4. f8 |
  e4 f8 ef d2~ |
  d16 d ef f  ef d c b  c b c d c bf af g |
  af2  r16 g a b  c4~ |
  c16 c( d ef f8-.) f-. f4( ef) |
  af2  r16 e f g  f e d! c |
  f2. ef16 c df ef |
  
  \barNumberCheck 57
  df16( c bf af  df8-.) df-. df4( c) |
  df4 ef af f |
  bf8 r r4 r2 |
  R1 |
  r2 bf,4 ef~ |
  ef4 d g2~ |
  g4 r16 g f ef  d8 ef16 f  ef d c bf |
  af4~ af16 g f ef  d16 r r8  ef'4 |
  
  \barNumberCheck 65
  r16 c df ef  df c bf af  ef' d c bf  af' g f ef |
  bf'1~ |
  bf16 f ef d  ef f g af  bf,2 |
  ef1~ |
  ef1~ |
  ef1\fermata |
}

leftHand = {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1\p |
  s1 |
  s16 s8.\cresc s2. |
  s1 |
  s2 s\f |
  s1 * 2 |
  s1\sf |
  
  \barNumberCheck 9
  s2 s8 s4.\dim |
  s1\p |
  s1 * 2 |
  s1\cresc |
  s1 * 3 |
  
  \barNumberCheck 17
  s4 s2.\f |
  s4 s2.\dim |
  s1 * 5 |
  s1\p |
  
  \barNumberCheck 25
  s4 s2.\f |
  s1 * 6 |
  s2\sf s\sf |
  
  \barNumberCheck 33
  s4\sf s2.\dim |
  s1\p |
  s4 s2.\cresc |
  s1 |
  s1\f |
  s1 * 3 |
  
  \barNumberCheck 41
  s2 s\p |
  s1 |
  s2 s\cresc |
  s1 |
  s2 s4.\< s8\! |
  s1\f |
  s1 |
  s4 s2.\dim |
  
  \barNumberCheck 49
  s2 s4..\< s16\! |
  s1 |
  s4 s2.\cresc |
  s1 |
  s1\f |
  s1 * 3 |
  
  \barNumberCheck 57
  s1 * 3 |
  s4 s2.\dim |
  s16 s4..\cresc s2\f |
  s1 * 3 |
  
  \barNumberCheck 65
  s4 s2\< s8. s16\! |
  s1\f |
  s4 s16 s8.\dim s2 |
  s1\p |
  s1^\rit |
  s1\pp |
}

tempi = {
  \tempo "Lento moderato" 4 = 80
  s1 * 68 |
  \set Score.tempoHideNote = ##t
  \tempo 4 = 72
  s4 \tempo 4 = 66 s \tempo 4 = 60 s \tempo 4 = 56 s |
  s1 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 3
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 4
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

preludeSevenNotes =
\score {
  \header {
    title = "Prelude 7"
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

preludeSevenMidi =
\book {
  \bookOutputName "prelude-7-bwv-852"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

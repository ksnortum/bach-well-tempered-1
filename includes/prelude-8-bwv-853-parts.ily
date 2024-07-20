%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 3/2
  \key ef \minor
  \set Staff.connectArpeggios = ##t
  \beamQuarterNotes.32
}

rightHandUpper = \relative {
  bf'2 r4 r8 bf( ef4. gf8) |
  cf,2 r4 r8 ef( af4. cf8) |
  d,2 r4 r8 f( af,4~\prall af16 gf af bf |
  \tag layout { gf4.\prallprall } \tag midi { gf4.\trill } f16 ef) gf'2 
    \voiceOne gf\arpeggio |
  gf2\arpeggio \oneVoice r4 r16 gf( ff ef  ff4. df8) |
  \voiceOne ef2\arpeggio ef2\arpeggio ef2\arpeggio |
  <ef bf'>2\arpeggio s1 |
  % third half note like second, SrcB, SrcC
  s2 \oneVoice <ef af cf>\arpeggio q\arpeggio |
  
  \barNumberCheck 9
  <f af cf>2\arpeggio r4 r16 bf( af gf  f gf f gf  af gf af f) |
  \tag layout { gf4.\prallprall } \tag midi { gf4.\trill } f16 ef
    <ef gf bf>2\arpeggio q\arpeggio |
  \voiceOne <gf c>2\arpeggio \oneVoice r4 r16 f( ef df  c df c df  ef df ef 
    c) |
  df4.\prall c16 bf  f'4~ f16 gf f ef  df c bf af  gf8 af16 f |
  gf4~ gf8 bf16 df  gf4~ gf16 f ef  df  c8[ ef32 df c16 df8 ef] |
  f,8. g32 a  a8.\trill g32 a \voiceOne bf1~ |
  bf1 a2 |
  bf4. c8 df2\arpeggio df\arpeggio |
  
  \barNumberCheck 17
  \tag layout { df4.\prallprall } \tag midi { df4.\trill } cf!16 bf  ff'2~ 
    ff4.\prall ef16 df |
  g2~ g4. ff16 ef af2~ |
  af8[ g af bf] c2. bf4 |
  af4. cf8 \oneVoice f,!4.-> gf!16 af  d,4.-> ef16 f |
  bf,4.-> af'8  d,4.-> ef16 f  bf,4.-> c16 d |
  ef4. df!16 cf! <ef, bf' df>2\arpeggio q\arpeggio |
  q4. cf'16 bf  cf2 <ef, af cf>\arpeggio |
  <f af cf>4.\arpeggio bf16 af  f'4. cf8  bf4.\trill cf16 af |
  
  \barNumberCheck 25
  <ef gf>2~ gf16 ef f gf  af bf c d  ef f gf af  gf f gf ef |
  <ff, af cf! ff>4. cf'16 bff  af4. bff16 cf  ff,4. gf16 af |
  d,4. f!16 af  cf4. bf16 af  f'4. ef16 d |
  a'4. bf8 \voiceOne ef,2\arpeggio d4.\arpeggio ef8 |
  ef1. |
  ef2~ ef4~ ef16 ef df cf  df4. bf8 |
  cf2~ cf4~ cf16 cf bf af  bf4. g8 |
  <d af'>2 q q |
  
  \barNumberCheck 33
  \oneVoice <cf f af>2 q q |
  <d f af>2 q q |
  <d f af cf>2~  cf'16[( bf af gf f ef d f]  af[ cf d f af cf bf d,]) |
  ef4. <gf, bf>8 <ef gf>2 \voiceOne f8\trill ef f4 |
  \oneVoice ef2~ ef4~ ef16 f g af  bf4~ bf16 ff ef df |
  cf2~ cf8. ef16  f! g af bf  cf8~ cf32 bf af gf  f16 gf af f |
  \voiceOne d1~ d4. d8 |
  ef1. |
  \bar "|."
}

rightHandLower = \relative {
  s1. * 3  |
  s1 \voiceFour <gf' bf ef>2\arpeggio |
  <gf bf df>2\arpeggio s1 |
  <ef gf cf>2\arpeggio <gf cf>\arpeggio q\arpeggio |
  bf2\arpeggio \oneVoice r4 r16 ef( df cf  df4. bf8) |
  \stemDown \tag layout { cf4.\prallprall } \tag midi { cf4.\trill } bf16 af
    s1 |
    
  \barNumberCheck 9
  s1. * 2 |
  \voiceFour <c ef>2\arpeggio s1 |
  s1. * 2 |
  s2 r4 r8 f, gf4. ef8 |
  c4~ c16 df c df  ef df c df  ef f ef f  gf4 f8.\prall ef16 |
  df4. ef8 <f bf>2\arpeggio q\arpeggio |
  
  \barNumberCheck 17
  <ff bf>4. s8 <bf df>2~ q4. s8 |
  q2~ q4. s8 <cf ef>2 |
  r2 <ef af> <df g> |
  <cf ef>4. s8 s1 |
  s1. * 4 |
  
  \barNumberCheck 25
  s1. * 3 |
  s2 <gf bf>\arpeggio <f bf>\arpeggio |
  bf4~ bf16 af g af  af2 af4.\trill g16 af |
  bf1. |
  af2~ af4. s8 s2 |
  cf,2 cf cf |
  
  \barNumberCheck 33
  s1. * 3 |
  s1 d2 |
  s1. * 2 |
  r4 r8 cf16 bf  cf4. bf8  af4~  af16 cf bf af |
  <g bf>1. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1. * 8  |
  
  \barNumberCheck 9
  s1. * 4 |
  \voiceThree df'2\arpeggio c\arpeggio c\arpeggio |
  c2\arpeggio bf\arpeggio bf |
  f2 f f |
  <f bf>2 s1 |
  
  \barNumberCheck 17
  s1. * 7 |
  af2\arpeggio bf\arpeggio bf\arpeggio |
  
  \barNumberCheck 25
  bf2\arpeggio bf\arpeggio bf\arpeggio |
  s1. |
  bf2\arpeggio s1 |
  s2 <gf bf>\arpeggio <af bf>\arpeggio |
  ef'2 ef ef |
  ef2\arpeggio ef\arpeggio ef\arpeggio
  ef2~ ef4~ ef16 ef df cf  df4. bf8 |
  s1. |
  
  \barNumberCheck 33
}

leftHandLower = \relative {
  \clef treble <ef' gf>2 q q |
  <ef af>2 <ef af cf> q |
  <ef f af>2 <d f af> <d f> |
  ef2 r4 r8 \clef bass bf gf4. ef8 |
  <bf df gf bf>2\arpeggio q\arpeggio q\arpeggio |
  <cf ef gf cf>2\arpeggio r4 r8 gf' ef4. cf8 |
  <g bf ef g>2\arpeggio q\arpeggio q\arpeggio |
  <af cf ef af>2\arpeggio r4 r8 \clef treble cf'' af4. f8 |
  
  \barNumberCheck 9
  d2 <d f bf>\arpeggio q\arpeggio |
  <ef gf bf>2\arpeggio r4 r8 gf ef4. c8 |
  a2 <a c f>\arpeggio q\arpeggio |
  <bf df f>2\arpeggio q\arpeggio q\arpeggio |
  \clef bass \voiceTwo <ef, bf'>\arpeggio q\arpeggio q\arpeggio |
  <ef a>2\arpeggio <df f>\arpeggio ef |
  f2 f, f |
  bf2 \oneVoice r4 r8 bf df4. f8 |
  
  \barNumberCheck 17
  g,2~ g4~ g16 bf af g  df'2~\sf |
  df4. cf16 bf  ff'8[( ef ff df]  cf[ bf cf af]) |
  ff'4. ef16 df  ef4. df8  ef4. ef,8 |
  af2 r4 r8 cf'8  f,4.-> gf16 af |
  d,4.-> ef16 f  bf,4.-> af'8  d,4.-> ef16 f |
  gf,2  g4. bf'8 g4. ef8 |
  af,2  r4 r8 cf' af4. f8 |
  \voiceTwo <d f>2\arpeggio q\arpeggio q\arpeggio |
  
  \barNumberCheck 25
  <ef gf>2\arpeggio q\arpeggio q\arpeggio |
  \oneVoice  <af, cf ff af>2 r r |
  \voiceTwo <af f'!>2\arpeggio \oneVoice r r |
  r2 \voiceTwo <bf ef>\arpeggio <bf f'>\arpeggio |
  cf'2 cf cf |
  <g bf>2\arpeggio q\arpeggio q\arpeggio |
  <af cf>2 ff ff |
  \oneVoice f!2~ f4~ f16 gf f ef  f8. gf16  af f gf af |
  
  \barNumberCheck 33
  d,2~ d4~ d16 ef d c  d8. ef16  f d ef f |
  cf!2~ cf4~ cf16 df! cf bf  cf bf af bf  cf af bf cf |
  d,2 r r |
  r4 r8 <ef ef'> <bf' ef gf bf>2\arpeggio <bf f' af bf>\arpeggio |
  <ef g bf df>2\arpeggio q\arpeggio q\arpeggio |
  <ef af>2 q q |
  <ef f>2 q q |
  <ef, bf' ef>1. |
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
  \tag layout { s1.^\ppDolce } \tag midi { s1.\pp } |
  s1. |
  s1 s4 s\cresc |
  s2 s4. s8\< s4. s8\! |
  s1.\f |
  s1. * 2 |
  s2 s2\> s4.\! s8 |
  
  \barNumberCheck 9
  s1.\p |
  s1.\cresc |
  s1.\f |
  s2 s4 s2.\dim |
  s1.-\tweak Y-offset 1 \p |
  s2 s4. s8\< s4. s8\! |
  s4 s-\tweak Y-offset -1 \> s8. s16\! s4 s2\p |
  s4. s8\cresc s1 |
  
  \barNumberCheck 17
  s2\f s1\sf |
  s1\sf s2\sf\> |
  s8 s4.\p s1 |
  s1.-\tweak Y-offset -1 \cresc |
  s1. |
  s1.\f |
  s1. * 2 |
  
  \barNumberCheck 25
  s2 s4 s\< s s8. s16\! |
  s1.\fz |
  s1.\fz |
  s2 s\sf s\sf |
  s4\fp s4^\dolce s1 |
  s1. * 2 |
  s1.-\tweak Y-offset -1 \cresc |
  
  \barNumberCheck 33
  s1.\sf |
  s1.\sf |
  s1-\tweak Y-offset -1 \f s4..-\tweak Y-offset -1 \> s16\! 
  s4. s8\dim s1 |
  s1.\p |
  s2 s8. s16-\tweak Y-offset 1 \dim s2. |
  s2\pp s1^\rall |
  s1. |
}

tempi = {
  % Metronome marking: half notes instead of quater notes
  \tempo "Lento moderato" 2 = 100
  s1. * 38 |
  \set Score.tempoHideNote = ##t
  s2 \tempo 2 = 92 s \tempo 2 = 84 s4 \tempo 2 = 76 s |
  s1. |
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\pageBreak
  
  % page 2
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
}

preludeEightNotes =
\score {
  \header {
    title = "Prelude 8"
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
      \Staff
      \consists Span_arpeggio_engraver
    }
    \context {
      \Score
      \override Stem.details.beamed-lengths = #'(3.5 3.9)
    }
  }
}

\include "articulate.ly"

preludeEightMidi =
\book {
  \bookOutputName "prelude-8-bwv-853"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

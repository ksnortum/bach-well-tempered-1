%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key g \minor
}

rightHandUpper = \relative {
  g''1~\startTrillSpan |
  g16(\stopTrillSpan d ef32 d c16  d g c,32 bf a16  bf g' c,32 bf a16
    bf g' a,32 g fs16) |
  g1~\startTrillSpan |
  g16\stopTrillSpan e' bf32 a g16  a e' g,32 fs e16  fs8. g16
    fs a d32 c bf16 |
  c16 ef d32 c bf16  c a' c,32 bf a16  bf d c32 bf a16  bf g' bf,32 a g16 |
  a16 f bf32 c d16  c f, d'32 ef f16  ef c g'32 a bf16
    a32 bf c16 f,32 g ef16 |
  \voiceOne r16 bf' g bf  f bf ef, bf'  f bf g bf  f bf ef, a |
  bf2. f4~ |
  
  \barNumberCheck 9
  f16 g32 f ef f d16  ef4~  ef16 f32 ef d ef c16 d4~ |
  d16 ef32 d c d b16  c4~  c16 d32 c b c a16 b4 |
  r16 c af c  g c f, c'  g c af c  g c f, b |
  c4 ef~  ef16 a!32 g fs g a16  d, ef8. |
  d8 c bf4~  bf16 ef32 d c d ef16  af, c32 bf af bf c16 |
  fs,4  r16 g32 a! bf a g16  c4 bf |
  a4 g  fs  r16 \oneVoice g' f!32 ef! d16 |
  ef16 c' d,32 c bf16  c a' bf,32 a g16  a ef'32 d c bf a16  \voiceOne bf4~ |
  
  \barNumberCheck 17
  bf16 c32 bf af c fs,16  g4~  g fs |
  r16 d32 g f! ef d16  ef8 d  r16 g32 c bf! a g16  a c32 bf a g fs e |
  fs2 g |
  \bar "|."
}

rightHandLower = \relative {
  s1 * 6 |
  \beamQuarterNotes.44
  \voiceFour d''8 ef d c  d ef d c |
  d8 ef f g  d ef~  ef16 d32 c b c d16 |
  
  \barNumberCheck 9
  g,4~  g16 c32 bf! af bf c16  f,4~  f16 bf32 af g af bf16 |
  ef,4~  ef16 af32 g f g af16  d,4~  d16 ef32 f ef f d16 |
  ef8 f ef d  ef f ef d |
  ef8 g4 c8~  c4~ c16. c32 a bf c16 |
  bf8 fs g d  ef2~ |
  ef4 d  r16 fs32 g a g fs16  r e32 fs g fs e16 |
  r16 d32 e fs e d16  r cs32 d e d cs16  d4 r |
  s2. r16 a'32 g f ef d16 |
  
  \barNumberCheck 17
  ef4 e  r16 a,!32 bf c bf a16  r16 c32 d ef d c16 |
  bf8 b c b  c2~ |
  c4~  c16 d32 ef d ef c16~  c c32 b a b c16  b4 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \beamQuarterNotes.44
  \voiceThree bf16 d c ef  bf d a c  bf d c ef  bf d a c |
  bf8 c bf ef  d ef d c |
  bf16 c d8~  d16 c8 bf16~  bf16 a8 bf16~  bf16 c8 bf16 |
  a8 g e a~  a16 c bf8~  bf16 a8 g16~ |
  g8 g fs4  r8 d e4 |
  f!8 g \oneVoice a bf  c bf c a |
  bf1~\startTrillSpan |
  bf16\stopTrillSpan bf, c32 d ef16  d bf ef32 f g16  f bf, g'32 af bf16
    af32 bf af16g32 af f16 |
  
  \barNumberCheck 9
  b8 g c bf  af f bf af |
  g8 ef af g  f d g g, |
  c1~\startTrillSpan |
  \override Beam.auto-knee-gap = 3
  c16\stopTrillSpan g32 f ef f g16  c, c''32 bf a! bf c16  fs,2 | 
  g16 d32 c bf c d16  g, g'32 f ef f g16  c,2 |
  d16 a'!32 bf c bf a16  bf8 d,  a' d, g d  |
  fs8 d e d  c!16 a'32 g fs g a16  bf,8 b |
  c16 a' bf,! g'  a, fs' g, ef'  fs,8 d g g' |
  
  \barNumberCheck 17
  \voiceThree r8 c bf4  d,2 |
  r4 r16 c32 g' f ef d16  ef2~ |
  ef16 ef32 d c d ef16~  ef4 d2 |
}

leftHandLower = \relative {
  \beamQuarterNotes.44
  \voiceTwo g8 g g g g g g g |
  g1~ |
  g8.( f!16 ef8 d  c d ef d) |
  cs2 d8. d16 c8 bf |
  a4. d8  g,4. c8 |
  f,!4 s2. |
  s1 * 2 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  c'4  r16 cs32 d e d cs16  r4 d, |
  g1~ |
  g4 g4~ g2 |
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
  s1\fp |
  s1 * 3 |
  s1\cresc |
  s1 |
  s1-\tweak X-offset -2 \f 
  s1 |
  
  \barNumberCheck 9
  s2 s\dim |
  s2 s-\tweak Y-offset -1.5 \p |
  s1-\tweak X-offset -2 \f |
  s2 s16\sf \tag layout { s8. } \tag midi { s8.\f } s4 |
  s2 s16\sf \tag layout { s8. } \tag midi { s8.\f } s4 |
  s4 s16 s8.\dim s2 |
  s2 s4\p s\cresc |
  s2. s16\sf \tag layout { s8. } \tag midi { s8.\f } |
  
  \barNumberCheck 17
  s4 s2.\f |
  s8 \tag layout { s^\dimERall } \tag midi { s\dim } s2. |
  s2\p s-\tweak Y-offset -2 \pp |
}

tempi = {
  \tempo "Lento moderato" 4 = 69
  s1 * 17 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 4 = 63 s \tempo 4 = 60 s \tempo 4 = 58 s |
  \tempo 4 = 56
  s4 \tempo 4 = 54 s \tempo 4 = 52 s \tempo 4 = 40 s
}

forceBreaks = {
  % page 1
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  % page 2
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\break\noPageBreak
}

preludeSixteenNotes =
\score {
  \header {
    title = "Prelude 16"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 11)
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

preludeSixteenMidi =
\book {
  \bookOutputName "prelude-16-bwv-861"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key f \minor
}

rightHandUpper = \relative {
  \beamQuarterNotes.44
  \voiceOne R1 * 7 |
  s1 |
  
  \barNumberCheck 9
  s1 * 4 |
  r4 c'' df! c |
  b4 e f bf, |
  a4 af g2~ |
  g8 f16 g  af2.~ |
  
  \barNumberCheck 17
  af8 g16 af  bf2.~ |
  bf16 g af c  f2.~ |
  f8 ef d g~  g16 b, c d  ef4 |
  r16 c d ef  f4  r16 ef f g  af!4 |
  r16 g a b  c4~  c8 b16 a  b4 |
  c8 g c4~  c8 c16 bf!  a8 a16 g |
  f8 g16 a bf4  r8 bf16 af  g8 g16 f |
  ef8 f16 g af4  r8 af16 g  f8 f16 ef |
  
  \barNumberCheck 25
  df4. ef16 df  c8 c16 bf  af4~ |
  af8 bf16 c  df4~  df16 c df bf  g'4~ |
  g16 c, df c  f4~ f8 e16 f  g4~ |
  g8 f4 ef!8  d ef16 f  g f e d |
  c4 r8 bf  c4 r8 c |
  df8 c16 bf c2 r4 |
  \oneVoice r8 gf'16 f  ef df c bf!  af8 bf16 c  df8 r |
  r8 ef16 df  c bf af gf  f8 g16 a  bf8 r |
  
  \barNumberCheck 33
  r c16 bf  af! g f ef  df4~ df16 f bf af |
  \voiceOne g4 af~ af16 g af bf  c4 |
  r16 af bf c  df!4 r16 c df ef  f4 |
  r16 ef f g  af4~ af8 g16 f  g4~ |
  g16 c, d ef  f4~ f8 ef16 d  ef4~ |
  ef16 af, bf! c  df4~ df8 c16 bf  c4~ |
  c8 f, bf af!  g4~  g16 g af bf |
  c4~ c16 c d ef  f4~ f16 bf, ef8~ |
  
  \barNumberCheck 41
  ef16 ef d c  d ef c d  ef c d ef  f ef d c |
  bf2~  bf16 af g f  ef4~ |
  ef16 ef f ef  d c' bf af!  g8 bf ef4~ |
  ef16 g f ef  d4~  d8 g, c4~ |
  c16 ef d c bf4~  bf8 ef, af4~ |
  af16 c bf af g4~  g16 f af g  f ef d c |
  b4 g'' af g |
  fs4 b c f, |
  
  \barNumberCheck 49
  e4 ef d2~ |
  d8 c16 d  ef2.~ |
  ef8 d16 ef  f2.~ |
  f16 d e g  bf,2.~ |
  bf8 af g4  f16 e f g  af4 |
  r16 f g af  bf!4  r16 af bf c  df4 |
  r16 c d e f4~  f8 e16 d  e4 |
  f4~ f16 ef! df c  df4~ df16 bf c df |
  
  \barNumberCheck 57
  e,8 c'~  c16 g af f~  f16 f e d  e4 |
  f1 |
  \bar "|."
}

rightHandLower = \relative {
  \beamQuarterNotes.44
  \voiceFour R1 * 3 |
  r4 f' af g |
  fs4 b c f, |
  e4 ef d2 |
  c8 c16 d  e8 d16 e  f \voiceDown e, f g  af4 |
  \staffUp \voiceOne d8 ef16 f  g16 f e d  c4 \voiceFour df |
  
  \barNumberCheck 9
  \oneVoice  r16 c d e  f4~  f8 e16 d  e4\trill |
  \voiceOne f8 f16 g  af8 af16 bf  c4~ c16 bf af g |
  f4 r af~  af16 gf f ef |
  df4 r f2~ |
  \voiceFour f8 e16 f  g4~ g8 f~ f ef |
  d8 ef16 f  g f e d  c8 r r bf |
  c4 r8 c  df! c16 bf c4~ |
  c4 r r8 f16 ef!  d8 d16 c |
  
  \barNumberCheck 17
  bf8 bf16 af  g4 r8 g'16 f  e8 e16 d |
  c8 c16 bf  af4  r8 d'16 c  b8 b16 a |
  g8 g16 a  b8 a16 b  c4~ c8 bf |
  a8 b16 c  d c b a  g4  r16 f ef d |
  c4 r16 c' d ef  f4. ef16 d |
  ef8 c16 d ef2.~ |
  ef8 bf16 c df!2.->~ |
  df8 af16 bf c2.->~ |
  
  \barNumberCheck 25
  c8 bf16 af  g4~ g4. f16 e |
  f4. g16 af  bf4~ bf16 af bf g |
  af4~ af16 g af f  c'8 g c bf |
  af8 bf  c16 c, d ef  f4 r8 g |
  af4  r16 bf af g  f4  r16 f g af |
  bf4. af16 g  af4 r |
  s1 * 2 |
  
  \barNumberCheck 33
  s1 |
  r4 ef f ef |
  d4 g af df,! |
  c4 cf bf2 |
  af4  r16 b' c d  g,4. gf8 |
  f4~ f16 g! af bf  ef,4~  ef16 gf f ef |
  % df2 tied to df16, SrcB
  df2~  df16 bf c df  ef4~ |
  ef16 ef f g  af4~  af16 c bf af  g8. g16 |
  
  \barNumberCheck 41
  f2  c8 r r4 |
  r16 c d ef  f ef d c  bf4. a16 bf |
  c4 bf~  bf8 ef16 f  g8 g16 af |
  bf4~ bf16 af g f  ef d c d  ef8 ef16 f |
  g4~ g16 f ef df!  c bf af bf  c8 c16 d |
  ef4~ ef16 d c bf  \voiceDown af8 d,16 ef  \voiceOne f8 fs |
  s4 \voiceUp r r8 c''4 bf!8 |
  a8 bf16 c  d c b a  g4 s |
  
  \barNumberCheck 49
  r16 g a b c4~  c8 b16 a  b c b d |
  g,4 r8 g  c, c'16 bf!  a8 bf16 c |
  f,8 bf r af!  g8 d'16 c  b8 c16 d |
  g,4 r8 df!  c8 g'16 f  e8 f16 g |
  c,8 f~ f e  f4  r16 g f ef |
  d4 r8 df~  df c r gf'~ |
  gf8 f  r16 f g af  bf2~ |
  bf16 df! c bf a4  r16 c bf af  g f ef df |
  
  \barNumberCheck 57
  c1~ |
  c1 |
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
  \voiceThree r4 c' df c |
  b4 e f bf, |
  a4 af g2 |
  f8 f16 g  af8 af16 bf  c b, c d  ef4 |
  r16 c d ef  f4  r16 ef f g af4 |
  r16 g a b  c4~ c8 b16 a  b4\trill |
  c8 g c bf!  af! \voiceUp f'4 ef8 |
  \voiceDown r16 f, g af  bf4  \voiceUp r16 af bf c \voiceDown r16 bf af g |
  
  \barNumberCheck 9
  f4 r16 f g af  bf4. af16 g |
  af4 r \voiceUp r8 c16 df!  ef!4~ |
  ef8 df16 ef  f8 f16 g  af8 \voiceDown af,16 bf  c4~ |
  c8 bf16 c  df8 df16 ef  f8 f,16 g!  af8 af16 bf |
  c8 g c bf  af16 r r8 r16 c, d ef |
  f4 r8 g af r r16 bf af g |
  f4 r16 f g af  bf4. af16 g |
  af4 r4 r2 |
  
  \barNumberCheck 17
  s1 * 2 |
  r4 g af! g |
  \oneVoice fs4 b c f, |
  e4 ef d2 |
  c4 \clef treble r8 c''16 bf  a8 a16 g  f8 g16 a |
  bf8 bf, r bf'16 af!  g8 g16 f  ef8 f16 g |
  af8 af, r af'16 g  f8 f16 ef  df8 df16 c |
  
  \barNumberCheck 25
  \clef bass bf8 c16 df  ef8 ef,  af8 bf16 c  df4~ |
  df8 df16 c  bf8 bf16 af  g8 g16 f  e8 c |
  f8 f'16 ef  df4\trill  \voiceThree c8 c,16 d  e8 d16 e |
  f16 e f g  af4  r16 f g af  bf!4 |
  r16 af bf c  df4  r16 c d e  f4~ |
  f8 e16 d e4  f r8 c16 df |
  ef!8 ef16 f  gf4~ gf8 f16 ef  df8 af16 bf |
  c8 c16 df  ef4~ ef8 df16 c  bf8 f16 g |
  
  \barNumberCheck 33
  af8 af16 bf  c4~ c8 bf16 c  df4~ |
  df8 ef16 df  c8 df16 c  bf4.  af16 g |
  af8 g16 af  bf af g f  ef8 af~  af16 g af bf |
  c4 r16 f, g af  ef4 r16 g f e |
  f4 r r2 |
  s1 * 2 |
  s2 r4 bf4 |
  
  \barNumberCheck 41
  c4 bf a d |
  ef4 af, g gf |
  f2 ef4 r |
  r8 bf'16 c  d c bf af  g4 r |
  r8 g16 af  bf af g f  ef4 r |
  r8 ef16 f  g f ef d  s4 c4 |
  g'8 g16 a  b8 a16 b  c b c d  ef4 |
  r16 c d ef  f4~  f16 ef f g  af!4 |
  
  \barNumberCheck 49
  s4 \oneVoice r16 c, d ef  f d ef f  g af! g f |
  ef16 f ef d  c8 c16 bf!  a8 a16 g  f8 g16 a |
  bf8 f'16 ef  d8 d16 c  b8 b16 a  g8 a16 b |
  c8 bf!16 af!  g8 g16 f  e8 e16 d  c8 d16 e |
  \voiceThree f16 g af bf  c4~  c8 bf r af8~ |
  af8 g16 f  g bf! af g  f8 g16 af  bf f ef df |
  c4~ c16 d e f  g4~ g16 a, bf c |
  df!16 c df ef! f4~  f16 f g af!  bf4~ |
  
  \barNumberCheck 57
  bf16 bf af g  af4  g2\trill |
  a1 |
}

leftHandLower = \relative {
  \beamQuarterNotes.44
  \voiceTwo R1 * 6 |
  r4 c df! c |
  b4 e f bf, |
  
  \barNumberCheck 9
  a4 af g2 |
  f4 r8 f'16 g  af8 af16 bf  c8 c, |
  df4 r8 df16 ef  f8 f16 gf  af8 af, |
  bf4 r8 bf16 c16  df8 df16 ef16  f8 f, |
  c'8 c16 d  e8 d16 e  f16 e, f g  af4 |
  r16 f g af  bf4  r16 af bf c  df!8 r |
  r16 c d e  f4~  f8 e16 d  e4 |
  f4 r8 f16 ef!  d8 d16 c  bf8 c16 d |
  
  \barNumberCheck 17
  \oneVoice ef4 r8 g16 f  e8 e16 d  c8 d16 e |
  f4 r8 d16 c  b8 b16 a  g8 a16 b |
  \voiceTwo c4 r r2 |
  s1 * 5 |
  
  \barNumberCheck 25
  s1 * 2 |
  s2 r4 c |
  df!4 c b e |
  f4 bf,! a af |
  g2  f8 f'16 g  af8 af16 bf |
  c4~ c16 bf af gf  f8 df16 ef  f8 f16 g |
  af4~ af16 gf f ef  df8 bf16 c  df8 df16 ef |
  
  \barNumberCheck 33
  f4~ f16 ef df c  bf c df c  bf af g f |
  ef8 bf' c af  df bf ef c |
  f8 bf,~ bf ef16 df!  c8 f~  f16 ef f g |
  af16 g f ef  d4  ef8 d e c |
  f8 f16 ef!  d8 d16 c  b16 g a b  c af bf c |
  \oneVoice df8 df16 c  bf8 bf16 af  g ef f g  af f g a |
  bf16 a bf c  df bf c df  ef8 ef16 df  c8 c16 bf |
  af8 af'16 g  f8 f16 ef  \voiceTwo d4 ef8 g |
  
  \barNumberCheck 41
  af8 f bf bf,  c c'16 bf  af8 bf16 af |
  g8 bf,16 c  d8 c16 d  ef8 ef16 d  c8 c16 bf |
  a4 bf ef r8 ef16 f |
  g8 g16 af  bf8 bf,  c4 r8 c16 d |
  ef8 ef16 f  g8 g,  af4 r8 af16 bf |
  c8 c16 d  ef8 ef,  <f c'> <g b> af a |
  <g d'>8 r r4 r2 |
  r2 r4 r16 g' af! bf! |
  
  \barNumberCheck 49
  c4 s2. |
  s1 * 3 |
  r4 c, df! c |
  b4 e f bf, |
  a4 af g2 |
  f4~ f16 f g a  bf4~ bf16 df c bf |
  
  \barNumberCheck 57
  c1 |
  f,1 |
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
  \tag layout { s1-\tweak Y-offset -2 ^\pLegato } \tag midi { s1\p } |
  s2.\< s4\! |
  s2\> s\! |
  s1 |
  s2 s8 s4.\cresc |
  s2 s4\sf\> s-\tweak Y-offset 1.5 \p |
  s1 |
  s2.\cresc s4\sf |
  
  \barNumberCheck 9
  s1\dim |
  s4.\p s8\cresc s4 s8.\sf\> s16\! |
  s2.-\tweak Y-offset -2 \p-\tweak Y-offset -1.5 \cresc s8.\sf\> s16\! |
  s1-\tweak Y-offset 0.5 \p |
  s8 s8\cresc s2. |
  s2 s8 s4.\dim |
  s1 |
  s1\p |
  
  \barNumberCheck 17
  s8 s\< s4\! s2\cresc |
  s8 s\< s2.\! |
  s2-\tweak Y-offset 1.5 \p s-\tweak Y-offset 2 \cresc |
  s2 s4-\tweak Y-offset -1 \< s-\tweak Y-offset -1.5 \sf |
  s4-\tweak Y-offset -1 \< s4-\tweak Y-offset -1.5 \sf s4..\> s16\! |
  s1 * 3 |
  
  \barNumberCheck 25
  s1 |
  s2.\cresc s8.\> s16\! |
  s2. s4\f |
  s1 * 2 |
  s2\f s8 s4.-\tweak Y-offset -2 \p |
  s8.\< s16\! s2. |
  s8.\< s16\! s2 s4\cresc |
  
  \barNumberCheck 33
  s8.\< s16\! s2. |
  s2-\tweak Y-offset -1 \f s8.\< s16\! s4 |
  s8.\< s16\! s4 s8.\< s16\! s4 |
  s8.\< s16\! s4 s8 s\> s8. s16\! |
  s4 s2.\dim |
  s1 |
  s2.\p s4\cresc |
  s2. s4-\tweak Y-offset 0.5 \f |
  
  \barNumberCheck 41
  s1 * 2 |
  s2 s8.\< s16\! s4 |
  s2 s16 s8.\< s8\! s\p |
  s2 s16 s8.\< s8\! s\p |
  s2.-\tweak Y-offset -2 \cresc s4-\tweak Y-offset -1 \f |
  s8 s\> s2\p s4\cresc |
  s1 |
  
  \barNumberCheck 49
  s1\f |
  s8 s-\tweak Y-offset 1 \dim s2 s4\p |
  s8 s-\tweak Y-offset 1 \< s4\! s2\p |
  s16 s8\< s16\! s4 s2-\tweak Y-offset -2 \p |
  s2 s\cresc |
  s2. s4\f |
  s4 s\fz s2\fz |
  \tag layout { s1^\sfDimERall } \tag midi { s1\sf\dim } |
  
  \barNumberCheck 57
  s1\p |
  s1 |
}

tempi = {
  \tempo "Andante serioso" 4 = 63
  s1 * 55 |
  \set Score.tempoHideNote = ##t
  s2 \tempo 4 = 58 s |
  \tempo 4 = 54
  s2 \tempo 4 = 50 s |
  s1 |
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 3
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\pageBreak
  
  % page 4
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

fugueTwelveNotes =
\score {
  \header {
    title = "Fugue 12"
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

fugueTwelveMidi =
\book {
  \bookOutputName "fugue-12-bwv-857"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 1)) \etc

tieShapeA = 
  \shape #'((-0.25 . 0.25) (0 . -0.25) (0 . -0.25) (-0.25 . 0.25)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key f \minor
}

rightHandUpper = \relative {
  \voiceOne f'16 af c f  g, f' e g  af, c f e  f4 |
  df4~ df16 16 c bf  af8. bf16 bf8.\trill af32 bf |
  c4 r16 df g, bf  e,8. f16 f8.\trill e32 f |
  g16 c bf df~  df df c bf  a8. bf16 bf8.\trill a32 bf |
  c2~ c16 c bf df  g,8 af!\prall |
  bf2~ bf16 af c8~  c16 bf df8~ |
  df16 c ef8~  ef16 df f8~  f16 ef df c  bf g af df |
  \oneVoice bf4~\prall bf16 ef, f g  \voiceOne af g af f' ef8. df16 |
  
  \barNumberCheck 9
  c16 af c e  \oneVoice f g e f  g2~ |
  g16 c, f af  d, f b, c  b8.\prall c16  c8.\trill b32 c |
  \voiceOne d16 g f af~  af af g f  r16 c'8 b16  c4 |
  ef,4~ ef16 c d8  c2 |
  f,16 a c ef~  ef gf c, ef  df4. c8~ |
  c16 bf g e  c e f b  c8 e,16 g  bf df! c bf |
  a16 f a c  f8. ef!16  df4~ df16 c8 bf16~ |
  bf16 df c8  af8. g16  f16 af c f~  f f e g |
  
  \barNumberCheck 17
  af, c f e  f4 df~  df16 df c bf |
  af4~ af16 af g f  e2 |
  \oneVoice r16 c' bf df  e, df' c bf  af g' f af  b, af' g f |
  e16 f g e  bf' df, c bf  af bf c f,  d' af g f |
  e4 f2^~^\rall f8. e16 |
  f1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour f'4 g af  f'16 c bf af
  df16 af g bf  e,4 f8 r s4 |
  c'16 af e f  df4  c8 r s4 |
  g'4 e ef df |
  r16 f ef gf~  gf gf f ef  df2~ |
  df16 c df f~  f f ef df  c4 df |
  ef4 f g8 r s4 |
  s2. r16 af g8 |
  
  \barNumberCheck 9
  af16 r r8 s2. |
  s1 |
  d4 b  ef8 f  r16 g af f |
  ef16 b c fs,  g8. f16~  f f e g  c,4 |
  f4 a  r8 bf e,4 |
  f8 r r f~  f16 f e8~ e4 |
  f16 s8. f'16 bf, a8  r16 af g bf  e,8 f |
  e8. f16~ f f e8  f4 g |
  
  \barNumberCheck 17
  af4 f'16 c bf af  df af g bf  e,4 |
  f16 ef! d f  b,4  r16 c bf df  g, df' c bf |
  \staffDown \voiceThree af4 bf c af |
  bf!4 g c b |
  \staffUp \voiceFour r16 c g bf!  af4  r16 d b c  r16 bf~ <bf c>8~ |
  <a c>1 |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \beamQuarterNotes.44
  \voiceThree af4 bf c af |
  bf4 g  f16 af c f  g, f' e g |
  s2 c,,16 e g c  df, c' bf df |
  e,8 g c c,  f,16 a c f  gf, f' ef gf |
  a,8 c a f  s2 |
  s4 g'8 r  af,16 c ef af  bf, af' g bf |
  c,16 ef g c  df, c' bf df  ef, g bf ef  f, ef' df f |
  g,16 f' ef df  c2 bf4\prall |
  
  \barNumberCheck 9
  af4~ af16 s8.  e16 g bf df  c, f e g |
  af2  g16 b d g  af, g' f af |
  b,8 d g4 c,2~ |
  c4. b8 c g~ g16 f e g |
  r8 f4 f8  bf,16 df f bf~  bf bf af! c |
  f,8( g af4 g2) |
  \oneVoice f8 ef'! df c  \voiceThree bf4-\slurShapeA ( g~ |
  g16) g af b  c2 bf4 | 
  
  \barNumberCheck 17
  c4 af bf g |
  af4 f g e |
  f4 g af f |
  g4 e \stemDown f2 |
  \stemUp g4 s  g8 f g4 |
}

leftHandLower = \relative {
  \beamQuarterNotes.44
  \voiceTwo f1~ |
  f2 f4 g |
  af4 bf c, df |
  e4 s f, gf |
  a4 a \oneVoice bf~ bf16 bf c df |
  g,8 bf \voiceTwo ef ef,  af4 bf |
  c4 df ef f |
  g4 af8 g  f df ef4 |
  
  \barNumberCheck 9
  af,4~ af16 af' g f  e4 c |
  f4~ f16 f ef! d  g4 af |
  b4 g'8 g,  c af ef f |
  g2 c, |
  a4 f bf c |
  d8\< e f4\! c2 |
  s2 bf'16 f df bf~  bf c df bf |
  c4. c8 df2 |
  
  \barNumberCheck 17
  c1~ |
  c1 |
  c1~ |
  c1 |
  c4 r16 f b, d 
    << 
      { b4\rest c-\tieShapeA ~ | c1 | } 
      \new Voice { \voiceTwo c,2 | f1\fermata | } 
    >>
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
  \tag layout { s1^\pSempreLegato } \tag midi { s1\p } |
  s2\sf\> s\p |
  s2. s4\cresc |
  s1 |
  s2\sf\> s\p |
  s2. s16 s8.-\tweak Y-offset 1 \cresc |
  s4 s\sf s2\dim |
  s2 s\p |
  
  \barNumberCheck 9
  s8 s4.-\tweak Y-offset -1 \< s4..-\tweak Y-offset -1 \sf
    -\tweak Y-offset -1 \> s16\! |
  s4 s2.-\tweak Y-offset -3 \cresc |
  s2. s4\dim |
  s2 s\p |
  s8 s4\< s8\! s8.\> s16\! s4 |
  s2 s\p |
  s1 |
  s2 s-\tweak Y-offset -6 \f |
  
  \barNumberCheck 17
  s16 s8.\dim s2. |
  s1 |
  s4\p s2\< s8. s16\! |
  s16 s8.-\tweak Y-offset 2 \dim s2. |
  s4\p\< s\> s\! s\pp |
  s1 |
}

tempi = {
  \tempo "Andante espressivo" 8 = 104
  s1 * 20 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 8 = 96 s \tempo 8 = 88 s \tempo 8 = 80 s |
  s1 |
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
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

preludeTwelveNotes =
\score {
  \header {
    title = "Prelude 12"
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

preludeTwelveMidi =
\book {
  \bookOutputName "prelude-12-bwv-857"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

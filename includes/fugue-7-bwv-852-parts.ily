%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 1) (0 . 0) (0 . 0) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key ef \major
}

rightHandUpper = \relative {
  \beamQuarterNotes.44
  \voiceOne bf'16( g f g  ef af g af  c8-.) bf-. r a16( f |
  ef'8-.) d-. c4-\slurShapeA (\trill  bf16 f' d bf  af! f' d af) |
  g8-. af'-. g-. f-.  ef16( c d ef  f4~ |
  f16 ef f g  af f bf, af'  g8-.) ef16( g c4->)~ |
  c8 d,16 f bf4~  bf8 c,16( ef af8 g |
  f4 g8 d ef4.) f8 |
  g4. a8 bf2~ |
  bf16 bf g ef  df bf' g df  c8 ef af4->~ |
  
  \barNumberCheck 9
  af16 af f d  c af' f c  bf8 d g4->~ |
  g4~ g16 c, d ef  f4. ef8~ |
  ef16( d c d  bf ef d ef  g8-.) f-. r d16( bf |
  af'8-.) g-. f4\trill  ef16 bf' g ef  df bf' g df |
  \oneVoice c8-. af'-. r af,-.  d!16 af' f d  c af' f c |
  b8-. g'-. r g,-.  c16 g' e c  bf g' e bf |
  a16 g' c, a  af f' d af  g f' d b  g ef' c g |
  fs16 ef' c a  f d' b f  e d' b g  ef c' g ef |
  
  \barNumberCheck 17
  d16 c' af f  d b' a b  c8-. f-. ef-. d-. |
  \voiceOne c16 a b c  d4~  d16 c d ef  f d g, f' |
  ef16 g ef d  c c' af f  d f d c  bf bf' g ef |
  c16 ef c bf  af af' f d  b4 c~ |
  c8 b  c16 b c d  ef8 d e fs |
  g16( d c d  bf e d e  g8-.) f-. r4 |
  f16( c bf c  af d! c d  f8-.) ef-. r4 |
  r16 bf ef c df4->  r16 c f d ef4-> |
  
  \barNumberCheck 25
  % second to last eighth note, source has b but bf makes more sense
  r16 d g ef f4->  r16 ef g bf!  af! f bf, g' |
  f8-. af-. g-. f-.  ef16 c d ef  f4~ |
  f16 ef f g  af f bf, af'  g bf g ef  df4-> |
  c16 c' af f ef4->  d!16 f d bf af4->~ |
  \oneVoice af16 g f g  ef af g af  c8-. bf-. r a16( f |
  ef'8-.) d8-. c4(\trill bf8) f'-. d-. bf-. |
  \voiceOne bf'2->~  bf8[ ef,-. c-. af-.] |
  af'2->~ af8[ d,-. bf-. g-.] |
  
  \barNumberCheck 33
  g'4~ g16 c, d ef  f ef d c  bf af bf c |
  f,4-. r8 f  ef'-. d-. r4 |
  f8( ef4 d8  ef16 g ef c) af4->~ |
  af16 f' d af  g8 ef'  g,4 f |
  ef1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \beamQuarterNotes.44
  \voiceFour R1 * 2 |
  ef'16( d c d  bf ef d ef  g8-.) f-. r d16( bf |
  af'8-.) g-. f4-\slurShapeB (\trill  ef16 bf' g f  ef c' a f) |
  d16 a' f ef  df bf' g ef  c g' ef c  d bf' ef, c' |
  d8 df c bf  af16 g af bf  c4~ |
  c16 bf c d  ef c f, ef'  d8 f d bf |
  ef8 r r4  r8 ef[ c af] |
  
  \barNumberCheck 9
  d!8 r r4 r8 d[ bf g] |
  c8 bf af4~  af16 c bf af  g4 |
  f4 bf~  bf8( af16 g  af8) f |
  d8 ef'~ ef d  ef r \voiceDown ef,4->~ |
  ef16 ef c af  g ef' c g  f8-. af-. d4->~ |
  d16 d b g  f d' b f  e8-. g-. c4->~ |
  c4 b8 c  d r r4 |
  s1 |
  
  \barNumberCheck 17
  r2 c16 bf! af! bf  g c b c |
  \voiceUp ef8-. d-. r b16( g  f'8-.) ef-. d4\trill |
  c16 b c ef  af!4->~  af8 bf,16 d  g4->~ |
  g8 af,16 c  f4~  f16 g af4 g8 |
  f16 ef f g  a4~  a16 g a bf  c a d, c' |
  bf4 bf->~  bf16 df c bf  af! g f g |
  af4 af->~  af16 c bf af  g f ef f |
  g4 r16 bf g ef  af,8 r r16 c' a f |
  
  \barNumberCheck 25
  bf,8 r r16 d' b g  c,8 r r4 |
  r8 f'[ ef af,]  bf af16 g  af d bf f |
  d8( ef4 d8)  ef r r16 bf' g ef |
  af,8 r r16 c' a f  bf,8 r r16 f' d bf |
  \voiceDown ef,8 df' c bf  af16 g af bf  c4~ |
  c16 bf c d  ef c f, ef' d8 r r4 |
  \voiceUp r16 bf' ef g  df bf df g  c,8 r r4 |
  r16 af d! f  c af c f  bf,8 r r4 |
  
  \barNumberCheck 33
  r8 bf af4~ af g8 ef~ |
  ef16 d c d  bf ef d ef  gf8-. f-. r d16 bf |
  af'8 g! f4  ef r8 f |
  bf,4. f'8~  f16 d ef bf~  bf c d af~ |
  \mergeDifferentlyDottedOn
  << 
    { af16 df^\pocoRall bf g~  g af f8  g2 | } 
    \new Voice { \voiceThree s16 df'8. c cf16 bf2\fermata | } 
  >>
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
  \beamQuarterNotes.44
  R1 * 5 |
  bf16( g f g  ef af g af  c8-.) bf-. r a16( f |
  ef'8-.) d-. c4\trill  bf16( f' d bf  af! f' d af |
  g8-.) ef'-. r ef,-.  af16( ef' c af  g ef' c g |
  
  \barNumberCheck 9
  f8-.) d'-. r d,-.  g16( d' bf g  f df' bf f) |
  e16 c' g e  f c' af f  d! bf' f d  ef bf' g ef |
  bf8-. af'-. g-. f-.  ef16 c d ef  f4~ |
  f16 ef f g  af f bf, af'  g8-. bf-. \voiceTwo g( ef |
  af8) r r4 r8 af[ f( d] |
  g8) r r4 r8 g[ e( c] |
  f8) ef! d c  b g c bf |
  a8 a' b g  c g af ef |
  
  \barNumberCheck 17
  f8( ef16 f g8) g,  c8 r r4 |
  \oneVoice R1 * 2 |
  r2 g'16 ef d ef  c f ef f |
  af8-. g-. r fs16( d  c'8-.) bf!-. a4\trill |
  g16 bf a bf  g a f! g  e c' af f  c f c af |
  f16 af' g af  f g ef! f  d! bf' g ef  bf ef bf g |
  % last eighth note, af in source but this is a mistake, SrcC
  ef8[-. ef'-. f( g]  af[-.) f-. g( a] |
  
  \barNumberCheck 25
  bf8[-.) g-. a( b]  c[-.) c,-. d-. ef]->~ |
  ef16 d c d  bf ef d ef  g8-. f-. r d16( bf |
  af'8-.) g-. f4\trill  ef8-. ef,-. f( g |
  af8[->-.) f-. g( a]  bf[->-.) bf-. c( d]) |
  \voiceTwo ef2~ ef4~ ef16 d! ef f |
  g8. f16 ef8 f  bf,16 f' d bf  af! f' d af |
  \oneVoice g8-. g'-. r ef,-.  af16 ef' c af  g ef' c g |
  f8-. f'-. r d,-.  g16 d' bf g  f d' bf f |
  
  \barNumberCheck 33
  e16 c' g e  f c' af f  d bf' f d  ef bf' g ef |
  bf'8( f' d bf)  a'8-.-> af-.->  r16 af f d |
  bf8[-. ef-. bf'( b]  c4)~ c16 c af f |
  d8 bf r16 ef c af  bf2 |
  ef,1_\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1\mf |
  s1 * 3 |
  s1\cresc |
  s1\f |
  s1 * 2 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s2 s\fp |
  s1 |
  s2 s\cresc |
  s2 s\f |
  s1 * 3 |
  s1-\tweak Y-offset -7 ^\piuF |
  
  \barNumberCheck 25
  s1 |
  s1\ff |
  s1 |
  s2 s8 s4.\dim |
  s1\p |
  s2 s8 s4.\cresc |
  s1 * 2 |
  
  \barNumberCheck 33
  s1\f |
  s1\ff |
  s4 s2.-\tweak Y-offset 1 \sf |
  s16 s8.-\tweak Y-offset 1 \dim s2. |
  s2 s\p |
}

tempi = {
  \tempo "Allegro" 4 = 112
  s1 * 36 |
  \set Score.tempoHideNote = ##t
  \tempo 4 = 104
  s4 \tempo 4 = 96 s \tempo 4 = 80 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

fugueSevenNotes =
\score {
  \header {
    title = "Fugue 7"
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

fugueSevenMidi =
\book {
  \bookOutputName "fugue-7-bwv-852"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

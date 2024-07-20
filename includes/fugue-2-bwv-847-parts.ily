%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveMMRestA = \tweak X-offset 0.25 \etc

%%% Music %%%

global = {
  \time 4/4
  \key c \minor
}

rightHandUpper = \relative {
  \voiceOne 
  R1 |
  \moveMMRestA R1 |
  r8 g''16-. fs-. g8-. c,-.  ef-. g16-. fs-. g8-. a-. |
  d,8-. g16-. fs-. g8-. a-.  c,16-. d-. ef4->( d16-.) c-. |
  bf8-. ef16-. d-. ef8-. g,-.  af!8-. f'16-. ef-. f8-. a,-. |
  bf8-. g'16-. f-. g8-. b,-.  c8-. d16-. ef-. f4->~ |
  f8 ef16-. d-.  c-. bf!-. af-. g-.  f8-. af'-. g-. f-. |
  ef8[-. d]-. ef-. f-.  b,[-. c]-. d-. b-. |
  
  \barNumberCheck 9
  c8-. g'16-. fs-. g8-. d-.  ef4 r8 e |
  f8-. f16-. e-. f8-. c-.  d4 r8 d-. |
  ef8-. ef16-. d-. ef8-. bf-.  c-. ef16-. d-. ef8-. f-. |
  \oneVoice bf,8-. ef16-. d-. ef8-. f-.  af,16-. bf-. c4->( bf16-.) af-. |
  g16-. ef-. f-. g-.  af-. bf-. c-. d-.  ef-. d-. c-. d-.  ef-. f-. g-. a-. |
  bf16-. f,-. g-. af!-.  bf-. c-. d-. e-.  f-. ef-. d-. ef-.  f-. g-. a-. b-. |
  \voiceOne c8( b16-.) a-. g-. f-. ef-. d-.  c8-. ef-. d-. c-. |
  bf!8-. a-. bf-. c-.  fs,-. g-. a-. fs-. |
  
  \barNumberCheck 17
  g8-. d'16-. c-. d8-. r  r e16-. d-. e8-. r |
  r8 fs16-. e-. fs8-. r  r g,16-. f!-. g8-. r |
  r8 a16-. g-. a8-. r  r b16-. a-. b8-. r |
  r8 c16 b c8 g  af c16 b c8 d |
  g,8 c16 b c8 d  f,16-. g-. af4->( g16-.) f-. | 
  ef8-. c'16-. b-. c8-. g-.  af4 r8 a |
  bf!8 bf16(\prall a) bf8-. f-.  g4 r8 g~ |
  g8 af16-.bf-. c-. b-. c-. af-.  f2~ |
  
  \barNumberCheck 25
  f8 d'16 c d8 f,  ef ef'16 d ef8 g, |
  f8 f'16 ef f8 af,  g16 f' ef d  c b a g |
  c8-. f-. ef-. d-.  r8 af-. g-. f-. |
  g8-. f16-. ef-. f8-. d(  af' g) b8\rest a( |
  b8 c f,16 ef d c  c8) c'16-. b-. c8-. g( |
  af8-.) c16-. b-. c8-. <b d>( g8-.) c16-. b-. c8-. d( |
  f,16-.) g-. af4->( g16-.) f-.  e2 |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  r8 c''16^. b^. c8^. g^.  af8^. c16^. b^. c8^. d^. |
  g,8^. c16^. b^. c8^. d^.  f,16^. g^. af4->^( g16^.) f^. |
  ef16-. c'-. b-. a-.  g-. f-. ef-. d-.  c8-. ef'-. d-. c-. |
  bf!8[-. a]-. bf-. c-.  fs,[-. g]-. a-. fs-. |
  g4 r16 c,-. d-. ef-.  f!-. g-. af8->~ af16 d,-. ef-. f-. |
  g16-. a-. bf8->~ bf16 ef,-. f-. g-.  af-. g-. f-. ef-.  d8-. c'16-. b-. |
  c4 r r8 f-. ef-. d-. |
  r8 af g f  g f16 ef f8 d |
  
  \barNumberCheck 9
  g4 r8 b-.  c-. c16-. b c8-. g-. |
  af4 r8 a-. bf!8-. bf16-. a-. bf8-. f-. |
  g4 r8 g af[ af] g f |
  \voiceDown r8 af, bf c  r af16-. g-. af8-. f-. |
  bf8 c bf af  bf g f ef |
  f8 df' c bf  c af g f |
  g8-. \voiceUp g'16-. fs-. g8-. c,-.  ef-. g16-. fs-. g8-. a-. |
  d,8-. g16-. fs-. g8-. a-.  c,16-. d-. ef4->( d16-.) c-. |
  
  \barNumberCheck 17
  bf8-. r r16 d-. e-. fs-.  g a bf8->~ bf16-. e,-. f-. g-. |
  a16-. bf-. c8->~ c16 fs,-. g-. a-.  bf8-. ef,!16-. d-. ef8-. g,-. |
  af!8 f'16 ef f8 a,-.  bf!-. g'16 f g8 b,-. |
  c16 f ef d  c bf! af! g  f8[ af'] g f |
  ef8 d ef f  b, c d b |
  c4 r8 e  f f16 e f8 c |
  d4 r8 d  ef ef16(\prall d) ef8-. bf |
  c2~  c8 d16-. ef-.  f-. ef-. f-. d-. |
  
  \barNumberCheck 25
  b8 r r b  c r r ef |
  d8 r r f~  f r r f |
  ef8 af g f  ef-. d ef f |
  b,8[ c] d b~  b c s c |
  f16 d ef c~ c8 b  c4 r8 e |
  f4 r8 <f af>(  f) ef16 d ef8 <f af> |
  <b, d>8 r q r  <g c>2 |
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
  R1 * 6 |
  r8 c'16-. b-. c8-. g-.  af-. c16-. b-. c8-. d-. |
  g,8-. c16-. b-. c8-. d-.  f,16-. g-. af4->( g16-.) f-. |
  
  \barNumberCheck 9
  ef16-. c'-. b-. a-.  g-. f-. ef-. d-.  c-. d-. ef-. d-.
    c-. bf!-. af!-. g-. |
  f16-. bf'-. af-. g-.  f-. ef-. d-. c-.  bf-. c-. d-. c-.
    bf-. af!-. g-. f-. |
  ef16-. af'-. g-. f-.  ef-. df-. c-. bf-.  af8-. c'-. bf-. af-. |
  \voiceTwo g8-. f-. g-. af-.  d,[-. ef]-. f-. d-. |
  ef8-. af-. g-. f-.  g-. ef-. d-. c-. |
  d8-. bf'-. af-. g-.  af-. f-. ef-. d!-. |
  ef8 \oneVoice r r4 r8 c-. bf!-. a-. |
  r8 ef'-. d-. c-.  d-. c16-. bf-. c8-. d-. |
  
  \barNumberCheck 17
  g,8-. bf'16-. a-. bf8-. d,-.  ef-. c'16-. bf-. c8-. e,-. |
  f8-. d'16-. c-. d8-. fs,-. g4 r16 g,-. a-. b-. |
  c16-. d-. ef8->~ ef16 a,-. bf!-. c-.  d-. ef-. f8->~ f16 b,-. c-. d-. |
  ef8 r r e  f\noBeam f,8-. ef!-. d-. |
  r8 af'-. g-. f-.  g-. f16-. ef-. f8-. g-. |
  c16-. d-. ef-. d-.  c-. bf!-. af-. g-.  f-. bf'-. af-. g-.
    f-. ef-. d-. c-. |
  bf16 c d c  bf af g f  ef af' g f  ef d c bf |
  af16 bf c bf  af g f ef  d g' f ef  d c b a |
  
  \barNumberCheck 25
  g4 r4 r16 <\snh g, g'>16-. <\snh a a'>-. <\snh b b'>-.  <\snh c c'>-. 
    <\snh d d'>-. <\snh ef ef'>-. <\snh f f'>-. |
  <\snh g g'>16-. <\snh f f'>-. <\snh af! af'!>-. <\snh g g'>-.  <\snh f f'>-.
    <\snh ef ef'>-. <\snh d d'>-. <\snh c c'>-.  <\snh b b'>8-. <\snh c c'>16-.
    <\snh b b'>-. <\snh c c'>8-. <\snh g g'>-. |
  <\snh af af'>8-. <\snh c c'>16-. <\snh b b'>-. <\snh c c'>8-. <\snh d d'>-.
    <\snh g, g'>-. <\snh c c'>16-. <\snh b b'>-. <\snh c c'>8-. <\snh d d'>-. |
  <\snh f, f'>16-. <\snh g g'>-. <\snh af af'>4( <\snh g g'>16) <\snh f f'>
    <\snh ef ef'>4 r8 <\snh ef' ef'>_( |
  <\snh d d'>8[ <\snh c c'>] <\snh g' g'> <\snh g, g'>)  <c c'>2~ |
  q1~ |
  q1 |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s8 \tag layout { s4.^\ppStaccato } \tag midi { s4.\pp } s2 |
  s1 * 5 |
  s4 s16 \tag layout { s^\pocoCresc } \tag midi { s\cresc } s8 s2 |
  s1 |
  
  \barNumberCheck 9
  s8 s-\tweak Y-offset 1 \p s4 s8 s4\< s16 s\! |
  s8 s\p s4 s8 s4\< s16 s\! |
  s2\cresc s8\f s4.\p |
  s1 |
  s2 s8 s4\< s16 s\! |
  s2 s8 s4\< s16 s\! |
  s4 s-\tweak Y-offset -1 \dim s8 s4.-\tweak Y-offset -1 \p |
  s1 | 
  
  \barNumberCheck 17
  s8 s4.\cresc s2 |
  s2\f s8 s4.\p |
  s1\cresc |
  s2 s8 s4.\f |
  s1 |
  s8 s4.\p s8 s4\< s16 s\! |
  s2 s8 s4\< s16 s\! |
  s8 s4.\cresc s2 |
  
  \barNumberCheck 25
  s1-\tweak Y-offset -1 \f |
  s2 s\ff |
  s1 |
  s2.. s8\p |
  s8 s4.\cresc s4\ff s^\dimERall |
  s1 |
  s2\p s\pp |
}

tempi = {
  \tempo "Allegretto moderato" 4 = 80
  s1
  \set Score.tempoHideNote = ##t
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 5 |
  \tempo 4 = 76
  s4 \tempo 4 = 72 s \tempo 4 = 69 s \tempo 4 = 66 s |
  \tempo 4 = 66
  s4 \tempo 4 = 63 s \tempo 4 = 60 s2 |
}

forceBreaks = {
  % page 1
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
}

fugueTwoNotes =
\score {
  \header {
    title = "Fugue 2"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
         (padding . 1))
  }<<
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

fugueTwoMidi =
\book {
  \bookOutputName "fugue-2-bwv-847"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

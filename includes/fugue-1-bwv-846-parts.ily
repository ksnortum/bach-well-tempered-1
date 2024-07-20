%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0) (0 . -0.25) (0 . -0.25) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key c \major
}

rightHandUpper = \relative {
  \voiceOne 
  R1 |
  r2 r8 g' a b |
  c8. d32 c  b8 e  a, d->~  d16 e d c |
  b16 g a b  c b c d  e d e fs  g8 b, |
  c8 a  d16 c b a  \after 16 ^\f g8. g16  f16 e f g |
  a16 g a b  c2 b4 |
  r8 c d e  f8. g32 f  e8 a |
  d,8 g->~  g16 a g f  e8 a->~  a16 b a g |
  
  \barNumberCheck 9
  f2  e8 fs  g4~ |
  g4 fs  g16 f e d  c d c b |
  a16 c b a  g8 r  r16 c b a  gs8 e' |
  d8 c16 b  a gs a b  c fs, gs a  b8 a16 b |
  c8 f e d->~ d c16 b  b8.\trill a16 |
  a4 r r2 |
  r2 r8 g a b |
  c8. d32 c b8 c  d e f8. g32 f |
  
  \barNumberCheck 17
  e8[ a] d, g~ g16 a g f  e8 a |
  d,8[ bf']  a g16 f  g f g e  f[ g] g\prall f32 g |
  a16 cs, d g  e8.\trill d16  d8 r r4 |
  r2 r4 r8 g, |
  a8 b  c8. d32 c  b8[ e] a, d~ |
  d16 e d c  b c d e  f g a g  f e d c |
  b4 c8 d  g,8 c4 b8 |
  c4 b8 bf  a d4 c8 |
  
  \barNumberCheck 25
  d8 e f4~  f16 a g f  e f e d |
  c2 r16 g32 a b16 c  d e f8~ |
  f32 c d e f16 g  a8. b16  c2\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  r8 c'8 d e  f8. g32 f  e8 a |
  d,8 g->^~  g16 a g f  e f e d  c d c b |
  a8 fs'  g4~ g8 fs16 e  fs8 d |
  g8 f! e d  c r r g'~ |
  g8 f!16 e  f4~ f16 f e8  d4 |
  c8 f  r16 g f e  f8 d  g4~ |
  g4 r r2 |
  R1 |
  
  \barNumberCheck 9
  r8 g a b  c8. d32 c  b8 e |
  a,8 d->~  d16 e d c  b8 r r d, |
  e8 fs  g8. a32 g  fs8[ b]  e, a->~ |
  a16 b a gs  fs8 f  e d~  d16 e fs gs |
  a16 gs a b  gs fs gs a  b8 r r4 |
  r8 c, d e  f8. g32 f  e8 a |
  d,8 g^~  g16 a g f  e8 e fs g~ |
  g8[ fs] gs a~  a g a b! |
  
  \barNumberCheck 17
  c8. d32 c  b8 e  a, d~ d16 e d c |
  b8[ g']  cs, d  e[ cs]  d e |
  a,8 r r e fs g  a8. b32 a |
  g8[ c] fs, b^~ b16 c b a  g fs e d |
  e4 d~ d16 a' g f!  e g f a |
  g4~ g16 a bf8  c4 d8 g, |
  g4. f8~  f e d4 |
  e8 a4 g8~  g f g a |
  
  \barNumberCheck 25
  bf8. c32 bf a8 d  g, c~ c16 d c bf |
  a16 bf a g  f g f e  d4~ d8. g16 |
  a4 r16 f' d8  <e g>2 |
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
  \voiceThree 
  R1 * 3 |
  r8 g a b  c8. d32 c  b8 e |
  a,8 d->~  d16 e d c  b8[ c]~ c bf |
  a8[ d] g, c  r16 a b c  d4 |
  g,4  r8 g a b  c8. d32 c |
  b8[ e] a, d->~ d16 e d c!  b8 e->~ |
  
  \barNumberCheck 9
  e4 d  c16 b c a  e' d c b |
  c16 a b c  d c b a  g4 r |
  R1 |
  r8 e-^ fs gs  a8. b32 a  gs8 c |
  fs,8 b->~  b16 c b a  gs8 a4 gs8 |
  a4 r8 g!  a b  c8. d32 c | 
  b8[ e] a, d~  d g, d'4 |
  c8 a e'4 d8 r r4 |
  
  \barNumberCheck 17
  r8 a b cs  d8. e32 d  c8 f |
  b,8 e~ e16 f e d  cs8 r r4 |
  r8 a  b! cs  d8. e32 d  c8 fs |
  b,8 e~ e16 fs e d  c2~ |
  c16 d c b  a g a fs  g8 b c d |
  e8. f32 e  d8 g  c, f~ f16 g f e |
  d4 e8 d~  d g, g4~ |
  g8 c, d e  f8. g32 f\< e8 a |
  
  \barNumberCheck 25
  d,8 g~ g16 a g f  e\sf\> d e f  g a bf g\! |
  a16 e f g  a b! c a  b2 |
  c1 |
}

leftHandLower = \relative {
  \voiceTwo 
  R1 * 4 |
  r2 r8 c\f d e |
  f8. g32 f  e8 a  d, g->~  g16 a g f |
  e16 f e d  c d c b  a8[ d]  a' fs |
  g16 a bf g  cs,8 d  a'4 e |
  
  \barNumberCheck 9
  a16 b c d  c b a g  c8 r r4 |
  r2 r8 g,\f a b |
  c8. d32 c  b8 e  a, d->~  d16 e d c |
  b8 e4 d8  c f4 e8~ |
  e8 d4 e8  f8 e16 d  e4 |
  a,4 r r2 |
  r8 g a b  c8. d32 c  b8 e |
  a,8 d~  d16 e d c  b8[ bf] a g |
  
  \barNumberCheck 17
  a8 fs' g e  d4 e8 f |
  g8. a32 g  f8 bf  e, a->^~ a16 bf a g |
  f16 e f d  g8 a  d,2~ |
  d16 e d c  b a g fs  e8 e' fs g~ |
  g8 a16 g  fs8 d  g2~ |
  g2 a4 b!8 c |
  f,16 a g f  e d c b  c d e f  g8 g, |
  c1-\tieShapeA ~ |
  
  \barNumberCheck 25
  c1-\tieShapeA ~ |
  c1-\tieShapeA ~ |
  c1\fermata |
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
  s8 \tag layout { s4.^\pSempreLegato } \tag midi { s4.\p } s2 |
  s1 |
  s2 s\cresc |
  s1 * 2 |
  s2. s8.\sf\> s16\! |
  s8 s\p s2.\cresc |
  s1 
  
  \barNumberCheck 9
  s1 |
  s2 s\f |
  s1 * 2 |
  s2 s\dim |
  s8 s4.\p s2 |
  s2 s8 s4.\cresc |
  s1 |
  
  \barNumberCheck 17
  s1 * 2 |
  s2\dim s\p |
  s1 |
  s2 s\cresc |
  s2 s\f |
  s1\dim |
  s2.\p s4^\poco |
  
  \barNumberCheck 25
  s1^\aPocoRall |
  s2\p s8 s4\< s16 s\! |
  s4.\> s8\pp s2 |
}

tempi = {
  \tempo "Moderato e maestoso" 8 = 116
  s1
  \set Score.tempoHideNote = ##t
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 7 |
  s2. \tempo 8 = 108 s4
  
  \barNumberCheck 25
  s2 \tempo 8 = 104 s |
  s2 \tempo 8 = 100 s |
  s4 \tempo 8 = 96 s \tempo 8 = 60 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

fugueOneNotes =
\score {
  \header {
    title = "Fugue 1"
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

fugueOneMidi =
\book {
  \bookOutputName "fugue-1-bwv-846"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

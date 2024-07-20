%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(2.5 . 1.5)
beamPositionsB = \once \override Beam.positions = #'(-2.5 . -1)
beamPositionsC = \once \override Beam.positions = #'(-3.5 . -2)
beamPositionsD = \once \override Beam.positions = #'(4.5 . 3)
beamPositionsE = \once \override Beam.positions = #'(2.5 . 1.5)
beamPositionsF = \once \override Beam.positions = #'(-2.5 . -1.5)
beamPositionsG = \once \override Beam.positions = #'(4 . 4.5)
beamPositionsH = \once \override Beam.positions = #'(1.5 . 0.5)
beamPositionsI = \once \override Beam.positions = #'(4 . 4)

%%% Music %%%

global = {
  \time 12/8
  \key f \major
}

rightHand = \relative {
  \global
  f''16 c a g a c  f, a c ef d c  d bf f e! f bf  d, f a c bf a |
  bf16 g e d e g  c, e g bf a g  a g f e f a  c, e f a g f |
  b2.->\startTrillSpan  c16\stopTrillSpan g e d e g  c, e g bf a g |
  cs2.->\startTrillSpan  d16\stopTrillSpan a f e f a  d, f a c bf! a |
  bf16 g e d e g  c, e g bf a g  a f d cs d f  bf, d f a g f |
  \beamPositionsA g16 e cs b cs e  a, cs e g f e  f8-. a-. d-.  a-. f-. d-. |
  g8-. bf-. d-.  bf-. g-. d-.  g-. cs-. e-.  cs-. g-. e-. |
  d'16 a f e f a  d, f a c! bf a  f' d bf a bf d  f, bf d f e d |
  
  \barNumberCheck 9
  gs2.\startTrillSpan  a16\stopTrillSpan e cs b cs e  \beamPositionsC 
    a, cs e g fs e |
  fs2.\startTrillSpan  g16\stopTrillSpan d b a b d  g, b d f ef d |
  ef16 c a g a c  f, a c ef d c  d bf! g f g bf  ef, g bf d c bf |
  c16 a fs e! fs a  d, fs a c bf a 
    << 
      { 
        bf2.->~\startTrillSpan | 
        bf2. a2.~\stopTrillSpan | 
        a16 a f e! f a  
      } 
      \\
      { 
        s2. | 
        e2. ef\startTrillSpan | 
        d8\stopTrillSpan s4
      } 
    >> d16 f a c bf a  g d' bf a bf d  g, bf d f e d |
  e16 g e d e g  \beamPositionsF c, e g bf a g  c a f e f a  d, f a c bf a |
  bf16 g e d e g  \beamPositionsF c, e g bf a g  a f c bf c f  a, c ef g f ef |
  
  \barNumberCheck 17
  d4.~\startTrillSpan d16\stopTrillSpan c bf a g f  bf8 g' e!  c bf g' |
  % no fermatas, SrcB
  a,16 g f e f a  d, f d bf g e'  \beamPositionsH f bf, a g a c  f,4 r8 |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  f8-. a-. c-.  a-. f-. a-.  bf-. d-. bf-.  f,4-> r8 |
  f'8-. g-. bf-.  g-. e-. c-.  f-. a-. f-.  f,4-> r8 |
  f'16 d b a b d  \beamPositionsI g, b d f e d  e2.->\startTrillSpan |
  g16\stopTrillSpan e cs b cs e  a, cs e g f e  f2.->\startTrillSpan |
  g8-.\stopTrillSpan bf-. g-.  e-. c!-. e-.  f-. a-. f-.  d-. bf-. d-. |
  e8-. g-. e-.  cs-. a-. cs-.  d16 a f e f a  d, f a c bf a |
  d16 bf g fs g bf  d, g bf d cs b  cs bf g fs g bf  d, g cs e d cs |
  d8-. f!-. a-.  f-. d-. f-.  d,-. f-. bf-.  d4-> r8 |
  
  \barNumberCheck 9
  d'16 b gs fs gs b  \beamPositionsB e, gs b d cs b  cs2.\startTrillSpan |
  c!16\stopTrillSpan a fs e fs a  d, fs a c b a  b2.\startTrillSpan |
  c8-.\stopTrillSpan ef-. c-.  a-. f-. a-.  bf-. d-. bf-.  g-. ef-. g-. |
  a8-. c-. a-.  fs-. d-. fs-.  \beamPositionsD g16 d bf a bf d  g, bf d f e d |
  \beamPositionsE c16 g e d e g  c, g' c e d c  f c a g a c  f, c' f a g f |
  bf1.~\startTrillSpan |
  bf2. a8-.\stopTrillSpan c-. a-.  f-. d-. f-. |
  g8-. bf-. g-.  e-. c-. e-.  f16 c a g a c  f, a c ef d c |
  
  \barNumberCheck 17
  f16 d bf a bf d  f, bf d f e! d  e c bf a bf c  \beamPositionsG 
    g bf e g f e |
  % no fermata, SrcB
  f8 a, d  bf8.\trill a32 bf c8  f,4 r8  r16 c' a c f,8 |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s1.\p |
  s1. |
  s1.\cresc |
  s1.\f |
  s1.\p |
  s2.\cresc s\f |
  s1. * 2 |
  
  \barNumberCheck 9
  s2.\sf s\sf |
  s2.\sf s\sf |
  s1.\p |
  s2. s\cresc |
  s1. |
  s2.\f s\cresc |
  s2. s\ff |
  
}

tempi = {
  \tempo "Vivace" 4. = 88
  s1. * 17 |
  \set Score.tempoHideNote = ##t
  \tempo 4. = 80
  s4. \tempo 4. = 72 s \tempo 4. = 66 s \tempo 4. = 60 s |
}

forceBreaks = {
  % page 1
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\pageBreak
  
  % page 2
  s1.\noBreak s2.\break\noPageBreak
  s2.\noBreak s1.\break\noPageBreak
  s1.\noBreak s2.\break\noPageBreak
  s2.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
}

preludeElevenNotes =
\score {
  \header {
    title = "Prelude 11"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
         (minimum-distance . 7)
         (padding . 2)
         (stretchability . 10))
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
      \override Stem.details.beamed-lengths = #'(3.5 4.1)
    }
  }
}

\include "articulate.ly"

preludeElevenMidi =
\book {
  \bookOutputName "prelude-11-bwv-856"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

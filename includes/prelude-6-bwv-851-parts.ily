%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key d \minor
}

rightHand = \relative {
  \global
  \beamEighthNotes
  r8 r16*4/3 a'16*2/3 \scaleDurations 2/3 { 
    f16 d a'  f d d'  bf g bf  g e g  e cs g' e cs a' |
    f16 d a'  f d a''  f d f  d a d  bf g d'  bf g g'  e c! e  c g c |
    a16 f c'  a f f'  d bf d  bf g g'  e c e  c a a'  f d f  d bf bf' |
    g16 e g  e c c'  a f a  f c a'  f d f  d a f'  d bf d  bf f d' |
    bf16 g bf  g d bf'  g c, bf'  g e bf'  a f a  f c f  d bf f'  c bf e |
    c16 a f'  c a c  a f c'  a f c'  a fs c'  a fs ef'  a, fs d'  a fs c' |
    bf16 g d'  bf g d'  bf g e'!  bf g fs'  bf, g g'  d bf g'  ef a, g'
      d a fs' |
    d16 bf g'  d bf d  bf g d'  bf g d'  b gs d'  b gs f'!  b, gs e'!
      b gs d' |
      
    \barNumberCheck 9
    c16 a e'  c a e'  c a fs'  c a gs'  c, a a'  e c a'  f! b, a'  e b gs' |
    e16 c a'  e c c'  f, d bf'!  g! e bf'  a f a  c, a a'  d, b g'  e cs g' |
    f16 d d'  a f f'  bf, g ef'  c! a ef'  d bf d  f, d d'  g, e! c'  a fs c' |
    bf16 g d'  bf g g'  ef g, g'  d g, g'  cs, a g'  e cs bf'  e, cs a'
      e cs g' |
    f16 d a  f d a'  f d b'  f d cs'  f, d d'  f, d a'  f d bf'  e, cs a' |
    e16 cs g'  d a f'  d bf e  cs a e'  \voiceDown d f, bf  a[ f d']  bf e, d'
      g,[ e cs'] |
    a16 fs a  c![ a c]  \staffUp \oneVoice ef c ef 
  } fs8-> \scaleDurations 2/3 { bf,16 g bf  d bf d  g d g } bf8->~ |
  \scaleDurations 2/3 {
    bf16 g e'!  bf g g'  bf, g e'  bf g cs  bf g e'  bf g g'  bf, g e'
      bf g cs |
      
    \barNumberCheck 17
    a16 fs d'  a fs ef'  a, fs d'  a fs c'!  a fs d'  a fs ef'  a, fs d'
      a fs c' |
    g16 d g  bf g bf  d bf d  g d g  bf a g  f! e! d  cs a cs  e cs e |
    g16 e d  cs b a  g e g  bf g bf  cs g e' cs bf e  cs a e' cs g e' |
    c!16 a d  bf g ef'  a, fs d'  a fs c'  g d bf'  g f bf  g ef bf'  g d bf' |
    g16 cs, bf'  e, cs bf'  e, cs a'  e cs g'  d b f'  d cs f  d b f'  d a f' |
    cs16 g e'  cs bf! e  cs a e'  cs g e'  b gs d'  cs gs e'  d gs, f'
  } g,8~ |
  \scaleDurations 2/3 { g16 e g  cs g cs  e cs e } g8^\sf  
    \scaleDurations 2/3 { f16 d f  a f a  d a d } f8~^\sf |
  \scaleDurations 2/3 {
    f16 b,( d  f d f  gs f gs  b gs f  bf g e  a fs ds  gs f d  g e cs) |
    
    \barNumberCheck 25
    fs16 ef c!  f d b  e cs bf  ef c a
  } 
  <<
    { d2~ | d4 cs <a d>2\fermata | }
    \\
    { r4 <d, f gs> | <d f>4 <e g!> <d fs>2 | }
    \\
    { s2 | a'2 s | }
  >> 
}

leftHandUpper = \relative {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 3 |
  s2 \voiceThree g8 a g f |
  e8 g f e  d e f4 |
  e8 g f e  f[ e f]~ \tupletOff \tuplet 3/2 { f16 e d } |
  cs8 e g bf  a d f a |
}

leftHandLower = \relative {
  \beamQuarterNotes.44
  d8 d d d  d d d d |
  d8 d d' d  g, g c c |
  f,8 f bf g  c a d d, |
  e8 c f e  d c bf a |
  g8 f e c  f a bf c |
  f,4 r8 ef'  d c bf a |
  g8 bf c d  ef bf c d |
  g,4 r8 f'!  e! d c b |
  
  \barNumberCheck 9
  a8 c d e  f! c d e |
  a,8 a' a g  f f, f e |
  d8 d' d c  bf bf' bf a |
  g4 r8 bf  a g f e |
  d8 f g a  bf f g a |
  bf8 f, g a  \voiceTwo bf f g a |
  d,4.~ \tupletOff \tuplet 3/2 { d16 fs a } d4.~ \tuplet 3/2 { d16 g bf } |
  \revertBeaming
  cs8( d, cs' d,  cs' d, cs' d,) |
  
  \barNumberCheck 17
  c'!8 d, c' d,  c' d, c' d, |
  bf'8 d, bf' d,  g d g d |
  e8 d e d  e d e d |
  fs8 d fs d~ d2~ |
  d2 gs,4. a8 |
  bf2 b4. bf8 |
  a4.~ \tuplet 3/2 { a16 cs e } a4.~ \tuplet 3/2 { a16 d f } |
  \oneVoice gs8 r r4 r2 |
  r2 r4 <b,, d f gs> |
  << { a'2 <d,, d'>_\fermata } \\ { a'2 s } \\ { <d f>4 e s2 } >> |
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
  s1\cresc |
  s1\f |
  s4 s2.\dim |
  s2\p s8 s4.\cresc |
  s2 s8\f s4.\dim |
  s2\p s8 s4.\cresc |
  
  \barNumberCheck 9
  s2 s8\f s4.\dim |
  s8 s4.\p s8 s4.\f |
  s8 s4.\p s8 s4.\f |
  s8 s4.\p s8 s4.\cresc |
  s8 s4.\< s4.\sf\> s8\! |
  s8 s4.-\tweak Y-offset -1 \dim s2 |
  s4\p s2.\cresc |
  s2\f s\dim |
  
  \barNumberCheck 17
  s1\p |
  s1\cresc |
  s1\f |
  s8 s4.\dim s2 |
  s1 |
  s1\p |
  s1\cresc |
  f2-\tweak Y-offset 2 \f s-\tweak Y-offset 1 \dim |
  
  \barNumberCheck 25
  s8 s4.\cresc s4\f s^\rit |
  s1 |
}

tempi = {
  \tempo "Allegro moderato" 4 = 80
  s1 * 24
  \set Score.tempoHideNote = ##t
  s2. \tempo 4 = 72 s4 |
  \tempo 4 = 66
  s4 \tempo 4 = 60 s \tempo 4 = 50 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
}

preludeSixNotes =
\score {
  \header {
    title = "Prelude 6"
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

preludeSixMidi =
\book {
  \bookOutputName "prelude-6-bwv-851"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

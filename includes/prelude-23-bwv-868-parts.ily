%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 4/4
  \key b \major
}

rightHandUpper = \relative {
  \voiceOne r16 b' as b  cs as b cs  r ds cs ds  e cs ds e |
  r16 e ds e  fs cs ds e  ds2 |
  cs2~  cs16 as gs as  b gs as b~ |
  b16 gs fs gs  as fs gs as~  as4  gs8 fs |
  es4 fs2 es4 |
  \oneVoice fs1 |
  r16 gs fss gs  as fss gs as  fss as gs as  b gs as b |
  cs16 gs' fss gs  as fss gs as  \voiceOne ds,2 |
  
  \barNumberCheck 9
  cs2~  cs16 ds cs ds  e cs ds e |
  as,16 b as b  cs as b cs  b8 ds gs[ fs!] |
  es2  r8 cs fs e |
  ds2 e~ |
  e16 cs b cs  ds b cs ds~  ds4 cs8 b |
  as!4 b2 as4 |
  r16 a b a  gs b a gs  fs2~ |
  fs16 fs gs fs  es gs fs es_~ 
    << 
      { \hideNoteHead es4 } 
      \new Voice { \voiceOne b'16 cs b cs } 
    >>  d b cs d |
  
  \barNumberCheck 17
  as4 b cs ds |
  r16 e fs e  ds fs e ds  cs4 b~ |
  b4 <fs as> <fs b>2 |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour ds'4 e fs gs |
  as2  r16 as gs as  b gs as b |
  es,4 fs4~ fs2 |
  es4 e ds2~ |
  ds8 cs \voiceDown b[ as]  b16 as gs as  b gs as b |
  as4 b cs ds~ |
  ds4 cs2 b4 |
  as8 gs4 fss8~  fss16 \voiceUp as' gs as  b gs as b |
  
  \barNumberCheck 9
  e,16 b' as gs  fss2 gs4~ |
  gs4 fss gs r |
  r16 b a b cs gs a b  a2 |
  r16 a gs a  b fs gs a  gs4 as8 b |
  as4 a gs2~ |
  gs8 fs e[ ds]  e16 ds cs ds  e cs ds e |
  ds4 e2 ds8 cs |
  b2 es |
  
  \barNumberCheck 17
  fs4 gs as b |
  cs4 b  r16 e, fs e  ds fs e ds |
  cs2 b |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  \voiceThree r16 e'!16 fs e  ds fs e ds  r16 cs ds cs  b ds cs b |
  as4 b fs2~ |
  fs16 ds cs ds  e cs ds e  ds2 |
}

leftHandLower = \relative {
  b1~ |
  b1~ |
  b16 gs fs gs  as fs gs as  ds,4 gs |
  cs,4 fs  b,16 as' gs as  b gs as b |
  \voiceTwo cs,16 ds b cs  ds b cs ds  gs,4 cs |
  fs,16 cs' b cs  ds b cs ds  fs, as gs as  b gs as b |
  e,4 e' ds2~ |
  ds4 cs b8 as gs4~ |
  
  \barNumberCheck 9
  \oneVoice gs16 gs' fss gs  as fss gs as  e8 e' ds cs |
  ds8 cs ds ds,  gs16 as gs as  b gs as b |
  cs8 cs,16 b  a8 gs  fs16 gs' fs gs  a fs gs a |
  b8 b,16 a  gs8 fs  e16 ds' e ds  cs e ds cs |
  fs4 b,  e16 ds' cs ds  e cs ds e |
  fs,16 gs e fs  gs e fs gs  cs,4 fs |
  b,2~  b16 cs ds e  fs a gs fs |
  gs1 |
  
  \barNumberCheck 17
  \voiceTwo fs1~ |
  fs16 fs e fs  gs e fs gs  as,4 b |
  fs2 b |
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
  \tag layout { s4.^\pLegato } \tag midi { s4.\p } s8\< s4. s8\! |
  s2\> s\! |
  s1 |
  s2-\tweak Y-offset -2 \cresc s16-\tweak Y-offset -3 \sf
    \tag layout { s4.. } \tag midi { s4..\f } |
  s1-\tweak Y-offset -3 \dim |
  s4\p s2\< s4\! |
  s4 s2.-\tweak X-offset -1 ^\rf |
  s1\cresc |
  
  \barNumberCheck 9
  s2. s16\sf \tag layout { s8. } \tag midi { s8.\f } |
  s2\dim s\p |
  s1 |
  s2 s\cresc |
  s1 |
  s2 s\f |
  s8 s2..\dim |
  s16 s8.\< s s16\! \tag layout { s4^\rf } \tag midi { s4\f } s\cresc | 
  
  \barNumberCheck 17
  s1 |
  s4\f s16 s8.\dim s2 |
  s8\p s^\rit s2. |
}

tempi = {
  \tempo "Allegretto moderato" 4 = 76
  s1 * 18 |
  \set Score.tempoHideNote = ##t
  \tempo 4 = 69
  s4 \tempo 4 = 63 s8 \tempo 4 = 58 s \tempo 4 = 50 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

preludeTwentyThreeNotes =
\score {
  \header {
    title = "Prelude 23"
  }
  \keepWithTag layout  
  \new PianoStaff <<
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

preludeTwentyThreeMidi =
\book {
  \bookOutputName "prelude-23-bwv-868"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

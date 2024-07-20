%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . -0.25) (0 . -0.5) (-0.5 . -0.5) (-0.5 . -0.25)) \etc

%%% Music %%%

global = {
  \time 6/8
  \key gs \minor
  \set Staff.extraNatural = ##f
  \mergeDifferentlyDottedOn
}

rightHandUpper = \relative {
  gs'16 as b gs as cs  e8 ds cs |
  \voiceOne b8 gs'4 fss4. |
  gs16 as b ds, e gs  fs gs as cs, ds fs |
  \oneVoice e16 fs gs b, cs e  as, b cs fs, cs' e |
  ds16 e fs ds e gs  b, as b as b cs~ |
  \voiceOne cs8 b4~  b16 b as b cs as |
  fs4.~  \oneVoice fs16 es fs es fs gs |
  cs,16 ds e cs ds fs  a8 gs fs |
  
  \barNumberCheck 9
  e4 cs'8  \voiceOne as4.~ |
  \oneVoice as16 gs fss as gs es  css8 ds es |
  fs4. es |
  ds8. ds16 css es  gs8. css,16 es gs |
  fs8. fs16 gs b  \voiceOne es,4. |
  ds16 es fs ds es gs  b8 as gs |
  fss4~ fss16 gs  \oneVoice as b cs as b cs |
  ds16 cs b ds cs as  fss8 gs as |
  
  \barNumberCheck 17
  \voiceOne b8. as16 bs cs  ds4. |
  cs16 ds e cs ds fs  a8 gs fs |
  e4.~  e8 fs e |
  ds4.~  ds8 e ds |
  cs4.~  cs8 ds cs |
  b16 as gs b cs e  as, gs fs as b ds |
  gs,16 ds' cs b as gs  fss gs as fss gs b |
  e8 e e  e e e |
  
  \barNumberCheck 25
  e4.~  e16 ds cs as' e cs |
  ds16 cs b ds cs e  b as gs b as fss |
  gs2.~ |
  gs2.~ |
  gs2. |
  \bar "|."
}

rightHandLower = \relative {
  s2. |
  \voiceThree s8 ds'' cs\tieShapeA ~  \voiceTwo cs b as |
  ds8 s4 s4. |
  s2. * 5 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 3 |
  s4.  r16 e, ds cs bs cs |
  ds2. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree b8 ds cs~  cs b as |
  \voiceUp b'4 as8~  as \voiceDown ds,4~ |
  ds8 gs cs,~  cs fs b,~ |
  b8 e4~  e8 ds cs |
  b16 cs ds b cs e  gs8 fs e |
  \voiceUp ds16 e fs ds e gs  cs,4.~ |
  cs8 b16 as cs b  \voiceDown d8 cs b~ |
  b8 a16 gs a fs  bs8 cs ds |
  
  \barNumberCheck 9
  gs,16 as b! gs as cs  \voiceUp e8 ds cs |
  \voiceDown b4. as~ |
  as8 ds gs,~  gs cs fs,~ |
  fs8 b4~  b16 b as4~ |
  as16 as ds4  \voiceUp css4. |
  ds8 r r r4 r8 |
  ds16 cs b ds cs as  \voiceDown fss8 gs as~ |
  as8 gs e'~  e ds cs |
  
  \barNumberCheck 17
  b16 ds \voiceUp gs8 gs  fs16 gs a fs cs' bs |
  cs4.  bs8 cs ds~ |
  ds8 cs b!  as4.~ |
  as8 b as  gs4.~ |
  gs8 as gs  fss4. |
  gs8 r r r4 r8 |
  r4 r8 r4 gs8~ |
  gs8 gs gs  cs cs cs |
  
  \barNumberCheck 25
  cs16 b as cs b gs  as4.~ |
  as8 gs4 r r8 |
  r8 fs ds  cs16 bs cs ds e fs |
  e16 ds cs e cs as  \voiceDown fss8 gs as |
  bs2. |
}

leftHandLower = \relative {
  \voiceTwo gs4. fss |
  gs16 as b gs as cs  e8 ds cs |
  b4. as |
  gs4 e8  fs gs as |
  b8 r r r4 r8 |
  \oneVoice b,16 cs ds b cs e  gs8 fs e |
  ds16 e fs cs ds fs  \voiceTwo b8 a gs |
  fs4.~  fs16 fs e ds cs bs |
  
  \barNumberCheck 9
  cs4.  fss,16 cs'' b as gs fss |
  gs4.~  gs16 gs fs es ds css |
  ds16 es fs as, b ds  cs ds es gs, as cs |
  b16 cs ds fs, gs b  css,8 css' as |
  ds16 es fs ds es gs  \oneVoice b8 as gs |
  fs16 gs as fs gs b  css, ds es as, css es |
  ds4. \voiceTwo cs |
  b4.  as16 cs b as gs fss |
  
  \barNumberCheck 17
  gs fs! e gs fs ds  \oneVoice bs8 cs ds |
  e16 fs gs e fs a  ds, e fs gs as bs |
  cs16 ds e cs e gs  fs gs as fs as cs |
  b,16 cs ds b ds fs  e fs gs e gs b |
  as,16 b cs as cs e  ds es fss ds fss as |
  gs16 as b ds, e gs  fs gs as cs, ds fs |
  e16 fs gs b, cs e  ds es fss as, b ds |
  cs16 ds e b cs e  a, cs e gs, cs e |
  
  \barNumberCheck 25
  fss,4.~  fss8. fss'16 gs as |
  b,4 e8  cs ds ds, |
  gs16 as bs gs bs ds  fs8 e ds |
  \voiceTwo cs2. |
  gs2. |
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
  s4\p\< s16 s\! s4\> s8\! |
  s4.\< s4\sf\> s8\! |
  s2.-\tweak Y-offset 1 \p |
  s2. |
  s4-\tweak Y-offset 2.5 \< s16 s\! s4-\tweak Y-offset 2.5 \>s16 s\! |
  s4.\< s4\sf\> s16 s\! |
  s4.-\tweak Y-offset -2 \cresc s\sf |
  s4. s\sf |
  
  \barNumberCheck 9
  s4.\f s-\tweak Y-offset -2 \sf |
  s4\< s16 s\! s4\>s16 s\! |
  s2.-\tweak Y-offset 1 \dim |
  s4\p s8\cresc s4. |
  s8. s8\< s16\! s s\> s8 s16 s\! |
  s4\< s16 s\! s4\>s16 s\! |
  s4-\tweak Y-offset -1 \< s16 s\! s4-\tweak Y-offset -1 \>s16 s\! |
  s4.\f s\sf |
  
  \barNumberCheck 17
  s4. s-\tweak Y-offset -3 \sf |
  s4.-\tweak Y-offset -2 \ff s4-\tweak Y-offset -1.5 \sf 
    s8-\tweak Y-offset -0.5 \dim |
  s2. * 2 
  s2.\p |
  s8. s\cresc s4. |
  s4. s4\< s16 s\! |
  s8\sf s4^\piuCresc s4. |
  
  \barNumberCheck 25
  s4.\f s4\> s16 s\! |
  s2.\p |
  s4\< s16 s\! s4\>s16 s\! |
  \tag layout { s2.^\dimERall } \tag midi { s2.\dim } |
  s2.-\tweak Y-offset 1 \pp |
}

tempi = {
  \tempo "Allegretto moderato ed espressivo" 8 = 126
  s2. * 27 |
  \set Score.tempoHideNote = ##t
  \tempo 8 = 120
  s4 \tempo 8 = 112 s \tempo 8 = 104 s |
  \tempo 8 = 80
  s2. |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 1 { s2.\noBreak } s2.\break\noPageBreak
}

preludeEighteenNotes =
\score {
  \header {
    title = "Prelude 18"
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
      \override Stem.details.beamed-lengths = #'(3.5 4.1)
    }
  }
}

\include "articulate.ly"

preludeEighteenMidi =
\book {
  \bookOutputName "prelude-18-bwv-863"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

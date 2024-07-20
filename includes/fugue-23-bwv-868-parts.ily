%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key b \major
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  s1 * 4 |
  \voiceOne r8 b'(^\f as b  cs4) fs,8(^\p gs16 as |
  b8 cs16 ds  e8 ds)  cs2~ |
  cs8 b16 as  b8 cs16 b  as gs fs e  ds8 b' |
  as8 b16 cs  ds es fs8~  fs es16 ds  es4 |
  
  \barNumberCheck 9
  fs8 cs16 b  cs8 ds  bs4 cs8 ds |
  e16 ds e fs  e ds cs b!  as4 b8 cs |
  ds8 ds e[ fs]  gs16 a gs fs  e ds cs b |
  as!8 b16 cs  ds8 cs  b4~ b16 cs ds8 |
  e16 fs gs8~  gs fs16 e  ds4  r16 ds cs b |
  as4 b8 cs  ds2~ |
  ds8 gs, as[ b]  cs as b[ cs] |
  ds2 cs-\tieShapeA ~ |
  
  \barNumberCheck 17
  cs8 b16 cs  ds es fs8~  fs16 es fs gs  es8. fs16 |
  fs8 fs gs[ fs]  e!4  b'!8 as16 gs |
  fs8 e16 ds  cs8 ds  e2 |
  ds4 r8 fs~  fs16 es fs gs  as gs as b |
  es,4 fs~  fs8 e16 ds  cs b cs ds |
  es16 fs gs8~  gs16 gs fs e  ds4~  ds16 cs8 b16~ |
  b8 as16 b  cs ds e8~  e ds16 e  fs gs a8~ |
  a16 gs a gs  fs e ds cs  bs8 cs ds4~ |
  
  \barNumberCheck 25
  ds8 cs16 bs  cs4~  cs16 e ds cs  bs4 |
  cs8 gs16 fs \oneVoice gs8 a  es4 fs8 gs |
  a16 gs a b  a gs fs e!  ds4 e8 fs |
  gs8 gs as![ b]  \voiceOne cs2~ |
  cs8 b r4 r2 |
  s1 |
  r8 fs' ds e  fs4  b,8 ds16 es |
  fs8 gs16 as  b8 as  gs2\trill |
  
  \barNumberCheck 33
  fs4~  fs8 e16 ds  cs ds e8~  e16 gs fs e |
  ds1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  R1 * 2 |
  r8 \slurUp fs'(^\f ds e  fs4)  b,8(^\p ds16 es |
  fs8 gs16 as  b8 as)  gs2\trill |
  \voiceFour fs4 r8 gs16 fs  e ds cs b  as8 fs' |
  ds8 e16 fs  gs as b8~  b as16 gs  as b as gs |
  fs4. e8~  e ds16 cs  ds e fs gs |
  cs,4 r8 ds'16 cs  b8 gs  r16 ds' cs b |
  
  \barNumberCheck 9
  as4  r16 gs fs e!  ds4 e8 fs |
  gs2~  gs8 cs, ds[ e] |
  fs8 b cs[ ds]  e r r4 |
  r4 r8 e,  ds e16 fs  gs as b8~ |
  b8 as16 gs  as4~  as8 gs16 fss  gs8 as |
  fss4 gs8 as  b16 as b cs  b as gs fs |
  es4 fs8 gs  as cs, ds[ e] |
  fs8 fs es[ fs]  gs4 cs,8 ds16 es |
  
  \barNumberCheck 17
  fs8 gs16 as  b8 as  gs4~  gs16 as b8 |
  as4 bs8 ds~  ds cs r4 |
  r16 ds, e fs  gs fs e ds  cs4 cs'~ |
  cs8 b ds[ cs]  b4  fs'8 es16 ds |
  cs8 b16 as  gs8 as  b2~ |
  b4 as8 cs~  cs16 cs b as  gs8 fs |
  e4~ e8. fs16  gs as b8~  b cs16 ds |
  e8 r r4 r2 |
  
  \barNumberCheck 25
  s1 * 4 |
  g,8\rest b as b  cs4  fs,8 gs16 as |
  \oneVoice b8 cs16 ds  e8 ds  cs2~\trill |
  \voiceFour cs8 b16 as  b8 cs16 b  as gs fs e  ds8 b' |
  as8 b16 cs  ds es fs8~  fs e16 ds  e4~ |
  
  \barNumberCheck 33
  e8 ds16 cs  b2 as4 |
  b1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree r8 b8( as b  cs4) fs,8( gs16 as |
  b8 cs16 ds  e8 ds)  cs2\trill |
  b4.( cs16 b  as gs fs e  ds8 b') |
  as8 b16 cs  ds16 es fs8~  fs e16 ds  e b e8~ |
  e8 ds cs b~  b8 as16 gs  as8 ds |
  gs,4 r8 gs'16 fs  e8 cs r fs16 e |
  ds8 cs b gs  fs4 r |
  s1 |
  
  \barNumberCheck 9
  s1 * 2 |
  s2 r8 b( as! b |
  cs4)  fs,8 gs16 as  b8 cs16 ds  e8 ds |
  cs2\trill b8 r r4 |
  r8 ds16 e  ds cs b as  gs4 r |
  r8 cs16 ds  cs b as gs  fs e! fs gs  fs e ds cs |
  b8 r r4  r8 b' as[ gs] |
  
  \barNumberCheck 17
  fs4~  fs16 gs fs es  ds cs ds b  cs4~ |
  cs8 fs16 e!  fs gs as bs  cs8 b16 as  gs fs gs as |
  \oneVoice b2~  b16 b as gs  fs e ds cs |
  b16 cs ds e  fs gs as fs  gs cs, ds es  fs b, b'8~ |
  b16 as b cs  ds cs b as  \voiceThree gs2~ |
  gs8 fs16 es  fs2 r4 |
  s1 |
  r8 e' ds e  fs4  bs,8 cs16 ds |
  
  \barNumberCheck 25
  \voiceUp e8 fs16 gs  a8 gs  fs4~  fs16 a gs fs |
  e4 \voiceDown r16 cs b a  gs4 a8 b |
  cs2~  cs8 fs, gs[ a] |
  b8 b cs[ ds]  \voiceUp e16 b' as gs  fs e ds cs |
  ds8 r r4  \voiceDown r16 ds cs b  as gs fs e |
  fs16 ds e fs  gs as b8~  b4 as8. gs16 |
  fs4. e8~  e8 ds16 cs  ds8 gs |
  cs,4 r r2 |
  
  \barNumberCheck 33
  r2  r8 cs'16 ds  cs b as gs |
  fs1\fermata |
}

leftHandLower = \relative {
  R1 * 6 |
  \voiceTwo r8 fs ds e  fs4  b,8 ds16 es |
  \oneVoice fs8 gs16 as  b8 as  gs2\trill |
  
  \barNumberCheck 9
  fs4 r r8 gs16 a  gs fs e! ds |
  cs8 cs' ds e  fs fs,16 gs  fs e ds cs |
  b16 as b cs  b a gs fs  e8 \voiceTwo r r4 |
  r8 e' ds e16 fs  gs4. fs8 |
  e4 fs  b8 b,16 as  b8 cs |
  ds4 r8 cs  b gs as[ b] |
  cs4 r8 b as2~ |
  as16 as b cs  b as gs fs  es8 es' fs[ es] |
  
  \barNumberCheck 17
  ds4. cs8  b gs cs[ cs,] |
  fs8 r r4 r2 |
  s1 * 2 |
  r2  r8 b as b |
  cs4  fs,8 gs16 as  b8 cs16 ds  e!8 ds |
  \oneVoice cs2\trill  b8 b'16 cs  b a! gs fs |
  \voiceTwo e4 a!  ds,16 cs' bs as  gs fs e ds |
  
  \barNumberCheck 25
  \oneVoice cs16 b a gs  fs e ds cs  ds8 e16 fs  gs8 gs |
  cs,4 \voiceTwo r  r8 cs'16 d  cs b a gs |
  fs8 fs' gs[ a]  b b,16 cs  b a gs fs |
  e16 b' e fs  e ds cs b  \oneVoice as!8 fs gs as |
  b16 cs ds e  fs gs as b  \voiceTwo e,2 |
  ds4 cs8 gs'16 fs  e ds cs ds  e gs fs e |
  ds4 gs, fs2~ |
  fs4  r16 gs as b  cs ds e fs  gs as b gs |
  
  \barNumberCheck 33
  as16 gs fs e  ds cs ds e  fs2 |
  b,1 |
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
  s8 s4\f\< s8\! s4 s\p\< |
  s8. s16\! s8\> s\! s2\p |
  s1 |
  s8.\< s16\! s8\> s\! s2 |
  s1 * 2 |
  s8 s4.-\tweak Y-offset 1.5 \f s4 s16\p s8.\cresc |
  s1 |
  
  \barNumberCheck 9
  s1 * 2 |
  s4.\< s8\! s2\f |
  s1 |
  s4 s8.\> s16\! s8 s4.\p |
  s1 |
  s16 s8.-\tweak Y-offset 1 \cresc s2. |
  s1-\tweak Y-offset -1 \f |
  
  \barNumberCheck 17
  s1 |
  s8 s4.-\tweak Y-offset 0.5 \p s2 |
  s1 |
  s4 s2.\cresc |
  s2 s\f |
  s1 * 3 |
  
  \barNumberCheck 25
  s1 |
  s8 s4.\p s2 |
  s1 |
  s1\cresc |
  s1-\tweak Y-offset -2 \f |
  s1 * 2 |
  s2 s16\sf\> \tag layout { s8. } \tag midi { s8.\f } s s16\! |
  
  \barNumberCheck 33
  \tag layout { s1^\dimERall } \tag midi { s1\dim } |
  s1\p |
}

tempi = {
  \tempo "Andante" 8 = 126
  s1 * 32 |
  \set Score.tempoHideNote = ##t
  \tempo 8 = 116
  s4 \tempo 8 = 108 s \tempo 8 = 100 s \tempo 8 = 92 s |
  s1 |
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
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

fugueTwentyThreeNotes =
\score {
  \header {
    title = "Fugue 23"
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

fugueTwentyThreeMidi =
\book {
  \bookOutputName "fugue-23-bwv-868"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

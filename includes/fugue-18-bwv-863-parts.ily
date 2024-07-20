%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Shapes and Positions %%%

slurShapeA = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeC = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 1)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key gs \minor
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  s1 * 4 |
  \voiceOne r4 gs'-\slurShapeA (^\fp  fss8 gs16 as b8 as |
  gs css ds[ fs,])  gs-. gs-. as-. as-. |
  ds,8 es fs4~(  fs8 e16 fs  gs8 fss16 gs |
  as8 gs16 as  b8 gs  as-.) r fss-. r |
  
  \barNumberCheck 9
  gs8( as b4  cs8-.) r as-. r |
  b8( ds16 css ds4  es8-.) r css r |
  ds8 es fs4~  fs8 e16 fs  gs8 fss16 gs |
  as8 gs16 as  b8 gs  as r fss r |
  gs8( fs!16 e  ds8 e  fs-.) r ds r |
  e8( ds16 cs  bs8 cs  ds-.) r bs r |
  cs4 r r8 cs4 ds8 |
  e4 ds  cs2~( |
  
  \barNumberCheck 17
  cs8 fss gs b,  as fss' gs cs, |
  b8 gs' fs! as,  gs fs' es gs, |
  fs4) r r2 |
  s1 * 4 |
  r4 ds'  css8 ds16 es  fs!8 es |
  
  \barNumberCheck 25
  ds8 gss as[ cs,!]  ds ds es[ es] |
  as,8 es' fs4~  fs8 as b4~ |
  b8 e, ds4  cs2~ |
  cs4 b~  b8 as16 gs  as fs bs8 |
  cs2~  cs8 b!16 as  b gs css8 |
  ds8 cs!16 b  as8 b  cs r as r |
  b8( as16 gs  fss8 gs  as) r fss r |
  gs4 r  r8 gs4 as8 |
  
  \barNumberCheck 33
  b4 as gs2~ |
  gs4 fs e2~ |
  e8 ds b'2( a4~ |
  a4) r8 gs(  as-.) as-. bs-. bs-. |
  cs4 r8 ds  bs cs16 ds  e8 ds |
  cs8( fss gs[ b,]  cs-.) cs-. ds-. ds-. |
  gs,8( bs cs2) b4~-\slurShapeC ( |
  b4 as8 gs  fss gs4 fss8) |
  gs1 |
  \bar "|."
}

rightHandLower = \relative {
  R1 * 2 |
  r4 ds'(^\f bs8^\p cs16 ds  e8 ds |
  cs8^\< fss\! gs^\> b,!)\!  cs-. cs-. ds-. ds-. |
  \voiceFour gs,4 cs4~  cs8 b16 cs  ds8 css16 ds |
  es8 ds16 es  fs!8 ds  es r css r |
  ds4 r8 as  gs4 r8 ds' |
  e8 ds r ds  e r ds r |
  
  \barNumberCheck 9
  ds4 r8 fs!  gs r fs r |
  fs4 r8 as  b r as r |
  fs8 gs  as b16 a gs8 cs4 ds8 |
  e4 ds cs2~ |
  cs4 b a2~ |
  a4 gs fs2~ |
  fs8 e16 fs  gs8 fs16 e  ds8 e16 fs  gs8 fss16 gs |
  as8 gs16 as  b8 gs  as r fss r |
  
  \barNumberCheck 17
  gs8 r r4 r4 r8 fss |
  gs4 r8 fs!  es4 r8 es~ |
  es ds16 css  ds4  bs8 cs16 ds  e8 ds |
  \oneVoice cs fss gs b,!  cs cs ds ds |
  gs,8 fss' gs4~^(  gs8 fs16 es  fs ds gss8) |
  as2~^(  as8 gss16 fss  gss es as8) |
  bs2~(  bs8 as16 gss  as bs cs8~ |
  \voiceFour cs8) bs16 as  gss as fss gss  as2~ |
  
  \barNumberCheck 25
  as8 bs cs[ as]  b4~ b16 as, b cs |
  ds4 cs8 as'  b4 r16 ds e fs |
  gs8 r r fs,  gs as16 b  e,4~ |
  e8 ds16 cs  ds b es8  fs2~ |
  fs8 e!16 ds  e cs fss8  gs2~ |
  gs4 fs! e2~ |
  e4 ds  cs2~ |
  cs8 b16 cs  ds8 cs16 b  as8 bs16 cs  ds8 css16 ds |
  
  \barNumberCheck 33
  es8 ds16 es  fs8 ds  es r css r |
  ds8 cs!16 b  as8 b  cs r as r |
  b4 r8 b(  cs-.) cs-. ds-. ds-. |
  e16 b cs ds  e8 gs fs2~ |
  fs16 ds e fs  gs8 fs16 e  ds8 gs4 fss16 gs |
  as8 gs16 as  b!8 gs  a r a r |
  ds,8 r r gs  as4 gs8 fs |
  e8 ds cs4~  cs8 b as4 |
  % bs in ScrC
  bs1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  r4 gs4(  fss8 gs16 as  b8 as |
  gs8 css ds fs,!)  gs8-. gs-. as-. as-. |
  ds,8( es) fs4~  fs8 e16( fs  gs8 fss16 gs |
  as8 gs16 as b8 gs  as) r fss r |
  gs8 fs! e4  ds8 gs4 as8 |
  b4 as gs2~ |
  \voiceThree gs8 fs16 gs  as8 fs  ds e r b'! |
  cs4 r8 ds  cs r as r |
  
  \barNumberCheck 9 
  b4 r8 b  e r cs r |
  ds4 r8 ds  gs r es r |
  ds8 r8 ds4_(  bs8 cs16 ds e8 ds |
  cs8 fss gs b,!)  cs-. cs-. ds-. ds-. |
  gs,4 r8 gs(  a-.) a-. b-. b-. |
  e,4 r8 e(  fs-.) fs-. gs-. gs-. |
  cs,8 ds e[ fs]  gs4. b!8 |
  cs4 b  e8 r ds r |
  
  \barNumberCheck 17
  ds8 r gs,4  fss8 gs16 as  b8 as |
  gs8 css ds fs,!  gs gs as as |
  ds,8 es  fs4~  fs8 e16 fs  gs8 fss16 gs |
  as8 gs16 as  b8 gs  as r fss r |
  gs4 r8 b  as gs as[ bs] |
  es,8 ds'  es[ fss]  bs, as bs[ cs] |
  ds2~  ds8 cs16 bs  cs8 as~ |
  as16 as ds cs  bs as bs8  as bs16 css  ds8 es |
  
  \barNumberCheck 25
  fs4~  fs16 gs! fs es  ds cs b as  gs4 |
  fs8 gs as[ cs]  ds2 |
  cs4. b8  b r as r |
  b4 r r2 |
  s1 * 3 |
  r4 gs  fss8 gs16 as  bs8 as |
  
  \barNumberCheck 33
  gs8 css ds[ fs,](  gs-.) gs-. as-. as-. |
  ds,4 r8 ds(  e-.) e-. fs-. fs-. |
  b,16 ds e fs  gs2( fs4) |
  e4 r8 b'(  cs-.) cs-. ds-. ds-. |
  gs,2~  gs8 as16 bs  cs8 ds |
  e4  ds  e8 r fs! r |
  bs,8 r r e e4 ds |
  cs4 r8 cs,  ds2~ |
  ds1 |
}

leftHandLower = \relative {
  s1 * 6 |
  \voiceTwo r4 ds  bs8 cs16 ds  e8 ds |
  cs8( fss gs[ b,!]  cs-.) cs-. ds-. ds-. |
  
  \barNumberCheck 9
  gs,4 r8 ds'  e-. e-. fs-. fs-. |
  b,4 r8 fs'  gs-. gs-. as-. as-. |
  ds,8 r r4\fp r2 |
  R1 * 3 |
  r4 cs\fp  bs8 cs16 ds  e8 ds |
  cs8 fss gs[ b,]  cs cs ds ds |
  
  \barNumberCheck 17
  gs,8 as b cs  ds4 r8 ds |
  es4 ds2 css4 |
  ds4  r16 ds, e! fs  gs8 cs4-> ds8 |
  e4 ds cs2~ |
  cs8 b16 as  b gs css8  ds2~ |
  ds8 cs!16 bs  cs as dss8  es2~ |
  es8 ds!16 cs  ds bs es8  fs4~ fs8. es16 |
  ds4 es as, r |
  
  \barNumberCheck 25
  R1 |
  r4 fs'  ds8 e!16 fs  gs8 fs |
  e8 as b b,  e e fs fs |
  b,8-\slurShapeB ( as gs[ cs]  fs, e! ds[ gs] |
  \oneVoice cs8 b! as[ ds]  gs, fs es[ as]) |
  ds,4 r8 ds'(  e!-.) e-. fs-. fs-. |
  b,4 r8 b(  cs-.) cs-. ds-. ds-. |
  \voiceTwo gs,8 as b[ cs]  ds fs!~  fs16 gs fs es |
  
  \barNumberCheck 33
  ds16 css bs as  gs fs gs as  b4 as8 gs |
  fs8 as ds,4  r2 |
  r4 r8 gs(  a-.) a-. b-. b-. |
  e,4 e'2 ds4 |
  cs8( ds e[ fs]  gs2~ |
  gs2.) fs!4~ |
  fs4 r8 e(  fss,-.) fss-. gs-. gs-. |
  cs,8( ds e4  ds2) |
  gs1 |
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
  s4 s\f s2\p |
  s8\< s\! s\> s\! s2 |
  s1 * 2 |
  s1\cresc |
  s8\< s\! s\> s\! s2 |
  s4 s2.\f |
  s8\< s\! s\> s\! s2 |
  
  \barNumberCheck 9
  s4\< s2.\p |
  s4\< s2.\p |
  s8 s\cresc s2. |
  s8\< s\! s\> s\! s2\dim |
  s4 \tag layout { s2.\!-\tweak Y-offset -1.5 ^\pDolce } \tag midi { s2.\p } |
  s1 |
  s8 s-\tweak Y-offset -3 \cresc s2. |
  s8.\sf\< s16\! s8\> s\! s2 |
  
  \barNumberCheck 17
  s4 s2\fp s4\cresc |
  s1 |
  s4 s2.\f |
  s8\< s\! s\> s\! s2 |
  s4-\tweak Y-offset -1 \< s\! s8 s4\< s8\! |
  s2 s8 s4-\tweak Y-offset 1 \< s8\! |
  s4 s2.\cresc |
  s4 s2.\f |
  
  \barNumberCheck 25
  s8.\< s16\! s2. |
  s4 s2.-\tweak Y-offset -1.5 \fz |
  s8\< s\! s\> s\! s2\dim |
  s2-\tweak Y-offset -1 \p s8 s4\< s8\! |
  s2 s8 s4\< s8\! |
  \tag layout { s1^\pDolce } \tag midi { s1\p } |
  s1 |
  s8 s\cresc s2. |
  
  \barNumberCheck 33
  s2 s4-\tweak Y-offset 1 \f-\tweak Y-offset 1 \> s\! |
  s8 s\p s2. |
  s4\< s8\sf s\p s2 |
  s16 s8.\< s8\! s-\tweak Y-offset 2 \cresc s2 |
  s1\f |
  s8 s16\< s\! s s8\> s16\! s16 s\dim s4. |
  s4\< s8\! s-\tweak Y-offset 0.5 \p s4 s8\> s\! |
  s4-\tweak Y-offset -1 \pp s2.-\tweak Y-offset -2 ^\rall |
  s1 |
}

tempi = {
  % The metronome marking of 8 = 108 is too slow for andante
  \tempo "Andante espressivo" 4 = 72
  s1 * 39 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 4 = 66 s \tempo 4 = 60 s \tempo 4 = 56 s |
  \tempo 4 = 50
  s1 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

fugueEighteenNotes =
\score {
  \header {
    title = "Fugue 18"
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

fugueEighteenMidi =
\book {
  \bookOutputName "fugue-18-bwv-863"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'(
                       ((0 . -1) (0 . -2) (0 . -1) (0 . -0.5))
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
tieShapeB = \shape #'((0 . -0.5) (0 . -1.5) (0 . -1) (0 . 0)) \etc

forceHShiftA = \once \override NoteColumn.force-hshift = -0.75

%%% Music %%%

global = {
  \time 4/4
  \key fs \major
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne b'8\rest cs8( fs-.) es-.  fs( es16 ds
    \tag layout { cs8.\prallprall }
    \tag midi   { cs8.\trill }  b32 cs) |
  ds4 r8 cs(  b as gs cs |
  as fs16 fs'  es fs gs ds  es fs gs8~  gs16 fs es ds) |
  cs16( ds es bs  cs ds es cs  as bs cs4 bs8) |
  cs2~ cs8 cs16 ds  es4-> |
  fs4 r8 as,  gs as  b as16 gs |
  as16 cs cs as  gs cs cs gs  as8 cs fs4~ |
  fs8 es4 ds16 cs  bs8 ds gs4~ |
  
  \barNumberCheck 9
  gs8 fs16 es fs4~  fs8 es16 ds es4~ |
  \beamQuarterNotes.44
  es8 es ds cs  bs gs cs4->~ |
  cs4~ cs16 cs8 bs16  cs8 cs fs es |
  fs8 es16 ds \after 16 ^\< \after 8. \! cs4  ds r8 cs^\p |
  b8 as gs cs  as as ds css |
  ds4 r8 es  fs gs as fs |
  ds4 r8 gs(  es4) r8 es |
  ds16 bs cs es  ds bs cs8~  cs16 bs cs4 bs8 |
  
  \barNumberCheck 17
  cs4 r8 bs  cs16 es es cs  bs es es bs |
  cs8 es as4->~  as8 gs16 fs gs4->~ |
  gs8 fs16 es fs4->~  fs8 fs es ds |
  css8 r r4  r8 ds,16 es  fs ds ds fs |
  gs16 ds ds gs  as ds, ds as'  b ds, ds b'  css ds, ds css' |
  % prall on fs (not es) SrcB
  ds4 r16 es fs gs  css, b' as gs  fs8\prall es16 ds |
  \revertBeaming
  ds8 fs b as  b2~ |
  b8 es, as gs  as2~ |
  
  \barNumberCheck 25
  as8 as gs fs  es4 e~ |
  e16 cs cs e  ds b b ds  ds b b ds  cs as as cs |
  cs16 as as cs  b gs gs b  b gs gs b  as b cs gs |
  \beamQuarterNotes.44
  as8 cs ds e~  e16 ds cs e  ds b b ds |
  e16 b b e  fs b, b fs'  gs b, b gs'  as b, b as' |
  b8 r r4  r8 ds,[ gs fss] |
  gs as b gs  es cs( fs-.) es-. |
  fs8( es16 ds  \tag layout { cs8.\prallprall } \tag midi { cs8.\trill } 
    b32 cs)  ds4 r8 cs |
    
  \barNumberCheck 33
  b8 as gs cs  as16 cs cs as  gs cs cs gs |
  as8 cs fs2-> es4 |
  fs1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour R1 * 2 |
  r8 fs'( cs'-.) bs-.  cs( bs16 as \tag layout { gs8.-\insideSlur \prallprall }
    \tag midi { gs8.\trill } fs32 gs) |
  as4 r8 gs(  fs es ds gs) |
  es8 cs16 b'!  as b cs gs  as b cs8~  cs16 b as gs |
  fs16 gs as es  fs gs as fs  ds es fs4 es8 |
  fs4 r8 es fs4 r8 as |
  ds16 gs, gs cs  as fs fs as  gs4 r8 bs |
  
  \barNumberCheck 9
  as4 r8 as  gs4 r8 gs |
  fs4~ fs16 gs as fs  ds4 r8 gs |
  \beamQuarterNotes.44
  fs8 es ds ds  es16 gs cs b as b cs gs |
  as16 b cs8~  cs16 b as gs  fs gs as es  fs gs as es |
  fs4 gs~  gs8 fs r4 |
  r8 as[ ds css]  ds es fs ds |
  bs8 gs( cs-.) bs-.  cs8( bs16 as \tag layout { gs8.-\insideSlur \prallprall }
    \tag midi { gs8.\trill } fs32 gs) |
  as4 r8 gs(  fs es ds gs) |
  
  \barNumberCheck 17
  es16 gs gs es  ds gs gs ds  es4 r8 gss |
  as8 r r cs  b!4 r8 b |
  as4 r8 as  gs2~ |
  gs16 b as gs  fs gs as es  fs gs as8  r ds |
  \forceHShiftA ds2. gs,4-\tieShapeA ~ |
  gs16 fs gs as b4  as8 r16 es' ds8 css |
  \revertBeaming
  ds8 r8 r4  r8 ds gs fs |
  gs2-\tieShapeB ~  gs8 cs, fs es |
  
  \barNumberCheck 25
  fs8 cs ds4~  ds16 gs, gs cs  cs gs gs b |
  as2 gs |
  fs2 es4 r |
  r8 fs( b-.) as-.  b8( as16 gs  \tag layout { fs8.-\insideSlur \prallprall } 
    \tag midi { fs8.\trill }  e32 fs) |
  \beamQuarterNotes.44
  gs4 r8 fs  e ds cs fs |
  ds8 ds gs fss  gs4 r8 as |
  b8 cs ds b  gs4 r8 cs |
  as4 r8 as  gs16 es fs as  gs es fs8~ |
  
  \barNumberCheck 33
  fs16 es fs4 es8  fs4 r8 es |
  fs4 r8 as  gs16 ds' ds b  gs cs cs b |
  as1 |
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
  R1 * 4 |
  r8 cs( fs-.) es-.  fs( es16 ds  \tag layout { cs8.-\insideSlur \prallprall }
    \tag midi { cs8.\trill }  b32 cs) |
  ds4 r8 cs(  b as gs cs) |
  \beamQuarterNotes.44
  fs,8 fs' es cs  fs16 as as fs  ds fs fs ds |
  bs8 cs fs4~  fs16 gs bs gs  es gs gs es |
  
  \barNumberCheck 9
  css16 as' as fs  ds fs fs ds  bs gs' gs es  cs es es cs |
  as16 cs cs as  fs8 fs'->~  fs16 fs es ds  cs ds es cs |
  as16 bs cs as  fs8 gs  cs,4 r |
  r8 fs'16 gs  as fs fs as  b fs fs b  cs fs, fs cs' |
  ds16 fs, fs ds'  es fs, fs es'  fs es ds cs  b gs' gs b, |
  as16 fs' fs as,  gs es' es gs,  fs gs fs es  ds es fs ds |
  gs16 as gs fs  es fs gs es  as bs cs8~  cs16 bs as gs |
  fs16 gs as es  fs gs as fs  ds8 es16 fs  gs8 gs, |
  
  \barNumberCheck 17
  cs8 cs'( bs gs  cs as gss es) |
  as16 cs cs as  fs as as fs  ds b' b gs  es gs gs es |
  css16 as' as fs  ds fs fs ds  b ds ds b  gs b b gs |
  as8 as( ds-.) css-.  ds8( cs16 b 
    \tag layout { as8.-\insideSlur _\prallprall } 
    \tag midi   { as8.\trill }  gs32 as) |
  b4 r8 as(  gs fs es as) |
  ds,8 fs gs4~  gs16 es' fs gs  as8 as, |
  ds16 as' as fs  ds fs fs ds  gs, ds'' ds b  gs b b gs |
  es16 gs gs es  cs es es cs  fs, cs'' cs as  fs as as fs |
  
  \barNumberCheck 25
  ds16 fs fs ds  b ds ds b  cs8 cs, r cs''16 b |
  cs8 fs, b as  b es, as gs |
  as8 ds, gs fs  gs cs, fs es |
  fs16 as as fs  ds fs fs ds  b8 r r b' |
  b1~ |
  b16 as gs fs  e cs' cs e,  ds b' b ds,  cs as' as cs, |
  b16 cs b as  gs as b gs  cs ds cs b  as b cs as |
  ds16 es fs8~  fs16 es ds cs  b cs ds as  b cs ds b |
  
  \barNumberCheck 33
  gs8 as16 b  cs8 cs,  fs fs' es cs |
  fs16 as as fs  ds fs fs ds  b8 gs cs cs, |
  fs1_\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  r8 r4.\p s4 s8.\< s32 s\! |
  s4. s8\p s2 |
  s2. s8.-\tweak Y-offset -2.5 \< s32 s\! |
  s4. s8\p s2 |
  s4 s\cresc s s8.\< s32 s\! |
  s4.\sf s8\p s2 |
  s2 s4.\< s8\! |
  s16 s8.\< s16 s8.\! s16 s8.\< s8 s\! |
  
  \barNumberCheck 9
  s1\p |
  s1\cresc |
  s2\f s8 s4.\p |
  s1 |
  s2. s4\cresc |
  s1 * 2 |
  s1\f |
  
  \barNumberCheck 17
  s8 s4.\p s4 s\cresc |
  s1 * 2 |
  s8 s4.\f s4 s8.\< s32 s\! |
  s1\fz |
  s1 |
  s4. s8\dim s2 |
  s1 |
  
  \barNumberCheck 25
  s2. s4\p |
  s1 * 2 |
  s1\cresc |
  s1 |
  s8 s4.\p s2 |
  s1 |
  s8 s\< s8. s32 s\! \tag layout { s4^\rf } \tag midi { s4\rfz } s\dim |
  
  \barNumberCheck 33
  s2 s\p |
  s4 s2.^\pocoRall |
  s1 |
}

tempi = {
  \tempo "Allegrtto piacevole" 4 = 88
  s1 * 33 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 4 = 84 s \tempo 4 = 80 s \tempo 4 = 76 s |
  \tempo 4 = 60
  s1 |
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
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
}

fugueThirteenNotes =
\score {
  \header {
    title = "Fugue 13"
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

fugueThirteenMidi =
\book {
  \bookOutputName "fugue-13-bwv-858"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

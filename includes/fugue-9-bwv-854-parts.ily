%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -1) (0 . -1) (0 . -1) (0 . -1))
                        ) \etc

tieShapeA = \shape #'((0 . -0.75) (0 . -0.5) (0 . 0.25) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key e \major
}

rightHandUpper = \relative {
  \beamQuarterNotes.44
  \voiceOne R1 |
  r4 r8 b'(^\f^\< cs4)\! r16 fs,^\p gs as |
  b16 as b cs  b e fs ds  b a b cs  b a b cs |
  a16 gs a b  a gs a b  gs fs gs as  b4~ |
  b4 as  b8 b' ds, fs |
  b,2-\tieShapeA ~ b8 a gs \hairpinAcrossBreak e'(^\< |
  \after 32 \! fs4) r16 b, cs ds  e ds e fs  gs a b gs |
  e16 ds e fs  e ds e fs  ds cs ds e  fs gs a8~ |
  
  \barNumberCheck 9
  a8 ds, gs4~  gs8 fs16 e ds4 |
  e16 ds e fs  e ds e fs  ds cs ds e  fs4~ |
  fs8 e16 ds e4~  e8 e ds cs |
  bs8 gs cs\noBeam cs(^\< ds4)\!  r16 gs, as bs |
  cs16 bs cs ds  e fs gs e  \oneVoice cs b cs ds  cs b cs ds |
  b16 as b cs  ds e fs ds  b a b cs  b a b cs |
  a16 gs a b  cs ds e ds  ds cs ds e  fs gs a fs |
  gs16 fs e ds  cs b a gs  fs gs a fs  ds8 gs |
  
  \barNumberCheck 17
  \voiceOne e8 gs cs b!  e16 ds cs b  a4~ |
  \oneVoice a8 ds, a' gs  cs16 b a gs  fs4~ |
  fs8 e16 ds  e fs gs e  cs gs' fs e  d8 r |
  \voiceOne r4 r8 b'(^\f^\< cs4)\!  r16 fs, gs as |
  b16 as b cs  ds e fs gs  a, gs a b  a gs a b |
  gs16 fs gs a  b cs d8~  d cs16 b cs4~ |
  cs4 b r b~ |
  b4 a r a~ |
  
  \barNumberCheck 25
  \oneVoice a4 gs8 e'( fs4)  r16 b, cs ds |
  e16 ds e fs  gs a b gs  a gs a b  a gs a b |
  gs16 fs gs a  gs fs e ds  \voiceOne cs b cs d  cs b cs d |
  b16 cs ds! b  e2 ds4 |
  e1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \beamQuarterNotes.44
  \voiceFour r4 r8 e'( fs4) r16 b, cs ds |
  e16 ds e fs  gs a b gs  e ds e fs  e ds e fs |
  ds16 cs ds e  fs gs a fs  gs8 b, e4~ |
  e8 ds fs4~  fs8 b, e ds |
  cs2 b8 r r4 |
  r8 e'[ gs, b]  e, fs4 e8~ |
  e4 ds8 fs b,4 r8 b'( |
  cs4) r16 fs, gs as  b as b cs  ds e fs ds |
  
  \barNumberCheck 9
  b16 a! b cs  b a b cs  a gs a b  a gs a b |
  gs8 e a2->~ a16 bs cs ds |
  gs,4. cs8  fs,2->~ |
  fs4 e8 a  ds,8 fs bs, ds |
  gs,8 r r4  \voiceDown r4 as->~ |
  as4 gs r gs->~ |
  gs4 fs r fs->~ |
  fs4 e8 cs'( ds4) r16 gs, as bs |
  
  \barNumberCheck 17
  \voiceUp cs bs cs ds  e fs gs e  cs b cs ds  cs b cs ds |
  \voiceDown b16 gs a b  cs ds e cs  a gs a b  a gs a b |
  gs16 fs gs a  gs8 b~  b a16 gs  a cs b a |
  gs16 \voiceUp b cs ds  e fs gs e  cs8 r r4 |
  r4 r8 e( fs4)  r16 b, cs ds |
  e16 ds e fs  gs a b gs  e ds! e fs  e ds e fs |
  ds16 cs ds e  fs gs a fs  d cs d e  d cs d e |
  cs16  b cs d  e fs gs e  cs b cs d cs b cs d |
  
  \barNumberCheck 25
  \voiceDown b16 a b cs  b a b cs  a gs a b  a gs a b |
  gs8 b e, gs~  gs fs fs4~ |
  fs4 e4~  e8 \voiceUp gs'( a4)~ |
  a gs16 e fs gs  a8 b16 cs  fs, cs' b a |
  gs1 |
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
  \beamQuarterNotes.44
  R1 * 2 |
  r2 r4 r8 \hairpinAcrossBreak e(\f\< |
  \after 32 \! fs4) r16 b, cs ds  e ds e fs  gs a! b gs |
  e16 ds e fs  e ds e fs  ds cs ds e  fs gs a! fs |
  gs16 fs gs a  b cs d b  cs b cs ds  e ds cs b |
  a16 gs a b  a fs a b  gs8 fs e ds |
  cs8 b' as fs  b r r4 |
  
  \barNumberCheck 9
  r2 r4 r8 \hairpinAcrossBreak b(\f\< |
  \after 32 \! cs4) r16 fs, gs a  b a b cs  ds e ds cs |
  bs16 gs as bs  cs ds e cs  a gs a b  a gs a b |
  gs16 e fs gs  a b cs a  fs e fs gs  fs e fs gs |
  e8 ds cs e  \voiceTwo as, gs' fss ds |
  gs,8 as b as  gs fs' es cs |
  fs,8 gs a! gs  fs e'! ds cs |
  bs8 gs  a e' fs e16 fs gs4 |
  
  \barNumberCheck 17
  \oneVoice cs,8 r r4 r2 |
  \voiceTwo R1 |
  r4 r8 e(\f\< fs4)\!  r16 b, cs ds |
  e16 ds e fs  \oneVoice gs a b gs  e ds e fs  e ds e fs |
  ds8 fs b, e~  e ds16 cs  ds8 b' |
  cs4 r8 gs  a gs a-> e |
  fs8 d gs fs  e fs gs-> e |
  a8-\slurShapeA _( b cs b  a e fs cs |
  
  \barNumberCheck 25
  \voiceTwo ds!8) b e2 ds4~ |
  ds4 cs  fs,8 fs'16 e  ds8 b |
  e8( b cs gs  a e \oneVoice ds cs |
  ds!8) b''( cs4)\sf  r16 fs,( gs a  b8 b,) |
  e,1_\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  r4 r8 r\f\< s4\! s16 s8.\p |
  s1 * 2 |
  s4 s16 s8.\p s2 |
  s8 s\cresc s2. |
  s2. s8 s\f |
  s4 s16 s8.\p s4 s8 s\f\< |
  s4\! s2. |
  
  \barNumberCheck 9
  s1\cresc
  s1 * 2 |
  s4. s8\f s2 |
  s8 s\p s2. |
  s1 * 2 |
  s4. s8\f\< s4\! s |
  
  \barNumberCheck 17
  s4 s2.\p |
  s1 * 3 |
  s4. s8\f\< s4\! s |
  s1 |
  s4 s2.\dim |
  s1 |
  
  \barNumberCheck 25
  s4.\p s8\f\< s4\! s |
  s2. s4^\piuF |
  s2. s4\sf |
  s1\ff |
  s1 |
}

tempi = {
  \tempo "Allegro vivace" 4 = 108
  s1 * 27 |
  \set Score.tempoHideNote = ##t
  s4 \tempo 4 = 100  s \tempo 4 = 92 s \tempo 4 = 84 s |
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
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
}

fugueNineNotes =
\score {
  \header {
    title = "Fugue 9"
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

fugueNineMidi =
\book {
  \bookOutputName "fugue-9-bwv-854"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

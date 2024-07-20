%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . 0)) \etc

tieShapeA = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) \etc
tieShapeB = \shape #'((0 . 0) (0 . 0) (-1 . 0) (-1 . 0)) \etc
tieShapeC = \shape #'((0 . 0) (0 . 0) (-1 . 0) (-1 . 0)) \etc

forceHShiftA = \tweak NoteColumn.force-hshift -0.5 \etc
forceHShiftB = \tweak NoteColumn.force-hshift 0 \etc

%%% Music %%%

global = {
  \time 6/4
  \key cs \minor
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne gs'8-\slurShapeA ( fs e ds e cs  cs'4.-> b8 a4) |
  gs2.~ gs2 fs4 |
  ds'8-\slurShapeB ( cs bs as bs gs  gs'4.-> fs8 e4) |
  <bs ds>2.~ q2 <bs gs'>4 |
  cs8 bs ds e a4->~  a8 gs fs e ds cs |
  b!8 a b ds gs4->~  gs8 fs e ds cs b |
  a8 gs a cs fs4->~  fs8 e ds cs b a |
  gs2.~ gs4. fs8 a4~ |
  
  \barNumberCheck 9
  \oneVoice a8 gs fs e fs ds  ds' cs bs as bs gs |
  a'!8 gs fs e fs ds \voiceOne e2.~ |
  e4. ds8 cs4  cs4. b8 as4~ |
  as8 gs fss es fss ds  ds'2.~ |
  ds8 bs cs ds e ds  b4. cs8 as4 |
  \oneVoice <b, ds gs>2.~ q2 b'4->~ |
  b8 gs as cs e4->~ \voiceOne e8 ds e gs fs e |
  << 
    { ds2.~ <b ds>2 } 
    \new Voice { s2 \voiceThree b4~ \hideNoteHead b2 } 
  >> cs4~ |
  
  \barNumberCheck 17
  cs8 as bs ds fs gs  a! gs fs e fs ds |
  << 
    { e2.-\tieShapeA ~ <cs e>~ } 
    \new Voice { s2 \voiceThree cs4-\tieShapeB ~ \hideNoteHead cs2. }
  >> |
  \oneVoice e8 d es gs b4~  b8 d, cs b a gs |
  a2.~ a8 gs a cs fs4~ |
  fs8 e ds cs b a  gs fs gs b e4~ |
  e8 ds cs b a gs  fs e fs a ds4~ |
  ds8 cs bs as gs fs  \voiceOne e ds e gs cs4~ |
  \oneVoice cs8 b a gs a fs  fs' e d cs d a |
  
  \barNumberCheck 25
  s2. \voiceOne bs'2 gs4 |
  gs2.~  gs8 fs e ds e cs |
  fs2.~  fs8 e ds cs ds gs, |
  e'2.~  e8 ds e fs gs a |
  bs,4.\prall cs8 ds4  <ds, fs>2.~ |
  \oneVoice fs8 e ds cs ds bs  a' gs fs e fs ds |
  bs'8 a gs fs gs ds  ds' cs bs as bs gs |
  gs'4 fs8 e ds cs  bs cs ds fs a,4~ |
  
  \barNumberCheck 33
  a8 gs a fs a'4~  a gs8 fs e ds |
  \voiceOne e2~ e8 a  e4. fs8 ds4 |
  cs2.~  cs4. e8 ds4 |
  e2.~  e4. bs8 cs4 |
  fss2.~  fss2 <bs, gs'>4 |
  cs2.~ cs4. ds8 \forceHShiftA bs4 |
  cs2 cs8 bs  cs2.\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour s2. <e' gs>2 fs4 |
  e2.~ e2 fs4~ |
  fs2. <gs ds'>2 <gs cs>4 |
  gs2.~ gs2 gs4 |
  a4 r r a2. |
  gs4 r r gs2. |
  fs4 r r fs2. |
  e2. s |
  
  \barNumberCheck 9
  s1. |
  s2. r8 ds' cs bs cs as |
  fss4. gs8 as4  ds,4. es8 fss4~ |
  fss8 s4. s4  <fss as>2 gs4~ |
  gs2.~ gs2 fss4 |
  s1. |
  s2. as4. b8 cs4~ |
  << 
    { \voiceTwo cs8 cs b as b fs~ } 
    \new Voice { \voiceFour fs2. } 
  >> \voiceFour <ds fs>2. |
  
  \barNumberCheck 17
  fs8 r r4 r  bs4. cs8 gs4 |
  r8 ds' cs bs cs gs~  <e gs>2. |
  s1. * 4 |
  s2. cs |
  s1. |
  
  \barNumberCheck 25
  a''8 gs fs e fs ds!~ ds2.~ |
  ds4. e8 bs4  cs2.~ |
  cs4. bs8 ds4  gs,2.~ |
  gs4. cs8 fs, gs  a2. |
  gs2. bs, |
  s1. * 3 |
  
  \barNumberCheck 33
  s1. |
  r8 ds' cs bs cs4~  cs2 bs4 |
  r8 b! as gs fss gs  fss2.~ |
  fss8 gs a gs b! a~  
    <<
      { a2.~ | <a cs>8 } 
      \new Voice { 
        s2 \voiceFour \hideNoteHead cs4-\tieShapeC ~ | \hideNoteHead cs8
      }
    >>
  ds8 e ds cs b!  as gs fss es fs ds |
  e!8 b' a! gs fs a  e4. fs8 
    << 
      { ds4 | cs2 ds4 } 
      \new Voice { \voiceThree \forceHShiftB ds8 fs~ | fs8 gs a fs~ fs4 } 
    >> <es gs>2. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree s1. |
  gs8 fs e ds e cs  cs'4.-> b8 a4 |
  gs2.~ gs2 cs4 |
  ds8 cs bs as bs gs  fs'4.-> e8 ds4 |
  e2. ds2.~ |
  ds2. cs2.~ |
  cs2. b2. |
  b8 a gs fs gs e  e'4.-> ds8 cs4 |
  
  \barNumberCheck 9
  bs1.~ |
  bs4. cs8 ds4 cs2. |
  s1. * 2  |
  s2. ds,2.~ |
  ds8 cs b as b gs  b ds gs e fs ds |
  e2. fs2. |
  s1. |
  
  \barNumberCheck 17
  s2 ds4  fs8 e ds cs ds gs~ |
  gs8 fs e ds e gs  cs r r4 r |
  r4 r8 cs d2 gs,4 cs~ |
  cs8 b a gs a fs  fs'4. e8 ds cs |
  b4. cs8 ds4~  ds4. gs,8 cs bs |
  cs2.~\prall  cs4. bs8 cs as |
  bs4. cs8 ds4  s2. |
  a4. b8 cs4  d2.\prall |
  
  \barNumberCheck 25
  bs2. fs'4 r r |
  s1. * 7 |
  
  \barNumberCheck 33
  s1. |
  s2. gs,2.~ |
  gs8 gs fss gs as ds,  e2.~ |
  e8 ds cs b cs e  fss2. |
  s1. |
  s2. s2 gs,8 gs'~ |
  gs4 fs a  gs2. |
}

leftHandLower = \relative {
  \voiceTwo cs1.~ |
  cs1. |
  bs2.~ bs2 cs4 |
  gs'1.~ |
  gs2. fs2.~ |
  fs2. e2.~ |
  e2. ds2. |
  e1. |
  
  \barNumberCheck 9
  ds2. gs4. fs8 gs4 |
  cs,2.~ cs4. ds8 e4 |
  \oneVoice as,8 ds cs b cs as  fss b as gs as fss |
  cs2.~ cs8 cs' b as b gs |
  \voiceTwo e'4. ds8 cs4  ds2 ds,4 |
  gs2.~ gs |
  cs8 ds cs b cs as  fs4. gs8 as4 |
  \oneVoice b2.~ b8 b' a! fs a fs |
  
  \barNumberCheck 17
  \voiceTwo ds8 e ds cs ds bs  gs4. as8 bs4 |
  cs2.~ cs8 ds e fs gs a |
  b2~ b8 b es,2. |
  fs1. |
  gs4. a8 b4  e,2.~ |
  e4. ds8 cs4  ds2. |
  gs4. as8 bs4  cs4. b8 a gs |
  fs2.~ fs4. e8 fs4 |
  
  \barNumberCheck 25
  ds!4. fs8 a4~  a8 gs fs e fs ds |
  \oneVoice e8 ds cs bs cs a  a'2.~\prall |
  a8 gs fs e fs ds  bs'2.\prall |
  cs8 b! a gs a fs  fs'2.~\prall |
  fs8 e ds c bs as  gs fs e ds cs b! |
  a!4. b8 gs4  fs4. gs8 e4 |
  ds4. e8 fs4  bs,4. ds8 fs4 |
  e8 e' fs gs a fs  ds e fs ds bs cs |
  
  \barNumberCheck 33
  ds8 bs gs as bs cs  ds e fs gs as bs |
  cs8 b! a gs a fs  \voiceTwo gs2 gs,4 |
  as2.~  as4. b8 cs4 |
  fss,2.~  fss4. gs8 as4 |
  \oneVoice ds,2 r4 r2. |
  r8 ds'' cs b a fs  gs ds e cs \voiceTwo gs4 |
  cs2.~ cs\fermata |
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
  s1.^\pSempreLegato |
  s1. * 3 |
  s4 s2\cresc s2. |
  s1. |
  s2. s4 s2\dim |
  s1.\p |
  
  \barNumberCheck 9
  s4. s\cresc s2. |
  s2.\f s\dim |
  s1. |
  s1.\p |
  s1.^\dolce |
  s4 s2\cresc s2. |
  s2. s4.\f s\dim |
  s2. s\p |
  
  \barNumberCheck 17
  s8 s8\< s4 s\!  s4.\> s8\! s4 |
  s2. s4 s2\cresc |
  s2. s8 s4.\> s8 s\! |
  s2.\p s8 s\< s4 s4\! |
  s2\> s4\! s8 s\< s4. s8\! |
  s2\> s4\! s8 s\< s4. s8\! |
  s2\> s4\! s8 s\cresc s2 |
  s1. |
  
  \barNumberCheck 25
  s2. s-\tweak Y-offset 1 \f |
  s1. |
  s1.\dim |
  s1.\p |
  s8 s\cresc s2 s2. |
  s1. |
  s2.\sf s\sf |
  s1.\f |
  
  \barNumberCheck 33
  s2. s4. s\dim |
  s2. s\p |
  s2.\f s2\< s4\! |
  s2.\fz s2\< s4\! |
  s4\fz s2\dim s2. |
  s4\p s2^\dimERall s2. |
  s1. |
}

tempi = {
  \tempo "Andate con moto" 4 = 92
  s1. |
  \set Score.tempoHideNote = ##t
  s1. * 36 |
  \tempo 4 = 88
  s2. \tempo 4 = 84 s |
  \tempo 4 = 80
  s2 \tempo 4 = 76 s4 \tempo 4 = 60 s2. |
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\pageBreak
  
  % page 2
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
}

preludeFourNotes =
\score {
  \header {
    title = "Prelude 4"
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

preludeFourMidi =
\book {
  \bookOutputName "prelude-4-bwv-849"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

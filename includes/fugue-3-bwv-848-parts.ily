%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeB = \shape #'((0 . 0) (-1 . 2) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0.5) (0 . 2) (0 . 0) (0 . 0)) \etc

tieShapeA = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
tieShapeB = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
tieShapeC = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
tieShapeD = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc

forceHShiftA = \once \override NoteColumn.force-hshift = 1.2

moveRestA = \tweak X-offset -0.25 \etc

%%% Music %%%

global = {
  \time 4/4
  \key cs \major
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative { 
  r4 r8 \voiceOne gs'8_(  as16 gs fs gs  es'8 cs |
  gs8_> fs16 es) fs8_. ds'_.  es,_. cs'_. ds,[_. bs']_. |
  cs,8_. cs'16( bs  cs ds es fs  gs fss es fss  gs fss es ds) |
  es4(~ es16 ds cs es  ds cs bs ds  cs bs cs as) |
  bs8 ds( fs!2->) es4~ |
  es4 ds~ ds8 cs bs[ ds]~ |
  ds8 gs,-. es'4.->-\slurShapeA ( es16 cs as4-\tieShapeA ~ |
  as8) as-. ds4.-> ds16 bs gs4-\tieShapeB ~ |
  
  \barNumberCheck 9
  gs8 gs-. cs4->~  cs16 bs cs as  as'4->~ |
  as16 gs fss as  gs ds es fs  es( ds cs ds  bs'8 gs |
  ds8-> cs16 bs) cs8-. as'-. bs,-. gs'-. as,[-. fss']-. |
  gs,16 as bs cs  bs as gs bs  es ds css es  gs fs es gs |
  b8 as16 gs  fs es ds css  ds fs es ds  css es as, gs |
  fs16 es ds css  ds es fs gs  as gs fs gs  as gs fs es |
  fs4_~ fs16 es ds fs  es ds cs es  ds cs ds bs |
  b'16\rest es,16 fs es cs'4->~  cs16 bs cs as  as'4->~ |
  
  \barNumberCheck 17
  as16 ds,, es ds  bs'4->~  bs16 as bs gs  gs'4->~ |
  gs16 cs,, ds cs  as'4->~  as16 gs as fss  fss'4->~ |
  fss16 dss es cs  as2  gs4~ |
  gs4 fss~  fss8 es dss[ fss] |
  \oneVoice bs16 as gs bs  as gs fss as  gs es cs' as  bs gs fss' dss~ |
  dss16 es ass bs \tag layout { dss,8.\prallprall } \tag midi { dss8.\prall }
    es16  es4 r8 es( |
  b16 as gs as  es'8 css  gs8-> fs16 es)  fs8-. ds'-. |
  a16( gs fs gs  ds'8 bs  fs-> es16 ds)  es gs cs ds |
  
  \barNumberCheck 25
  \voiceOne es16 ds cs ds  bs'8 gs  ds cs16 bs  cs8-. as'-. |
  bs,8-. gs'8-. as,[-. fss']-.  gs,16 ds es fss  \oneVoice gs as bs gs |
  cs16 bs as bs  cs bs as gs  as4~ as16 gs fs as |
  gs16 fs es gs  fs es fs ds  es8 gs \voiceOne cs4-> |
  r8 e16 cs as4 r8 as16-\slurShapeC ( cs e4-> |
  ds8-.) gs-. cs,[-. fss]-.  gs,-. gs'16 fss  gs as b gs |
  \oneVoice es16 fs gs es  cs ds es cs  as b cs as  fs' gs as fs |
  ds16 es fs ds  bs! cs ds cs  gs as bs gs  es' fs gs es |
  
  \barNumberCheck 33
  css16 ds es css  as bs css as  fs gs as fs  ds' es fs ds |
  bs16 cs ds bs  gs as bs gs  es fs gs es  cs es gs as |
  b16( as gs as  fs'8-.) cs-.  as->( gs16 fs  gs cs, es gs) |
  as16( gs fs gs  es'8-.) cs-.  gs-.( fs16 es  fs bs, ds fs) |
  gs16( fs es fs  ds'8-.) bs-.  fs-> es16 ds  es gs as bs |
  cs16 ds es ds  fs es ds cs  gs'2~\trill |
  \voiceOne gs16 gs fs gs  es gs ds gs  cs, gs' bs, as  bs ds es fs |
  gs16 fs es fs  ds gs cs, gs'  bs, gs' as, gs  as cs ds es |
  
  \barNumberCheck 41
  \oneVoice fs16 es ds es  cs ds bs ds  as ds gs, fss  gs bs cs ds |
  es16( fs gs as  bs,8-.) gs(  as16 gs fs gs  es'8 cs |
  gs8-> fs16 es)  fs8-. ds'-. es,-. cs'-. ds,[-. bs']-. |
  \voiceOne cs,8 cs'16 bs  cs ds es fs  gs fs es fs  gs fs es ds |
  es4~ es16 ds cs es  ds cs bs ds  cs bs cs as |
  bs8 ds fs2-> es4~ |
  es4 ds~  ds8 cs bs[ ds]~ |
  ds8 gs, cs[ b]  as2~ |
  
  \barNumberCheck 49
  as8 as16 fs ds4->-\tieShapeC ~  ds8 ds gs4->~ |
  gs8 gs16 es css4-\tieShapeD ~  css8 as fs'4->~ |
  fs16 es fs ds ds'4->~  ds16 cs bs ds  cs gs as b |
  \oneVoice as16( gs fs gs es'8-.) cs-.  gs->( fs16 es  fs8-.) ds'-. |
  es,8-. cs'-. ds,[-. bs']-.  cs,16 es fs gs  as bs cs ds |
  e16 ds cs ds  e fss gs as  cs,( bs as gs  ds'8-.) fs,!-. |
  << 
    { es8 <gs cs> ds[ bs'] } 
    \\ 
    { s4 \voiceFour \forceHShiftA <fs as>8 <fs gs> } 
  >> <gs cs>2 |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  R1 |
  \moveRestA R1 |
  r4 r8 cs'8(  es16 ds cs ds  bs'8 gs |
  ds8-> cs16 bs) cs8-. as'-.  bs,-. gs'-. as,[-. fss']-. |
  gs,8 gs'16 fss  gs as bs gs  cs bs as bs  cs bs as gs |
  as4~ as16 gs fs as  gs fs es gs  fs es fs ds |
  es4 r8 gs cs4.-> cs16 as |
  ds,4 r8 fss bs4.-> bs16 gs |
  
  \barNumberCheck 9
  cs,4 r8 es  as4->~ as16 cs ds as |
  bs4 r8 gs~ gs16 fss es fss  gs fss es ds |
  es4~ es16 ds cs es  ds cs bs ds  cs bs cs as |
  bs8 ds gs4 \voiceDown r8 b,16 gs es4 |
  r8 es16-\slurShapeB ( gs b4->  as8 b as[ css,] |
  ds4) r r2 |
  R1 |
  \voiceUp cs'4 r8 es as4->~ as16 cs ds as |
  
  \barNumberCheck 17
  bs8 r r ds,  gs4->~ gs16 bs cs gs |
  as8 r r cs,  fss4->~ fss16 as bs fss |
  gs4 r8 bs,  cs16 bs as bs  gs'8 es |
  bs8 as16 gs  as8 fss'  gs, es' fss,[ dss'] |
  \voiceDown es,4. dss8  es dss es[ as] |
  gs8 fss16 es  fss8 as  gs16 as bs gs  es fs gs es |
  css16 ds es css  as css es as  ds, fs as css  ds es fs ds |
  bs16 cs ds cs  gs4~  gs16 gs as bs  cs8 r |
  
  \barNumberCheck 25
  \voiceUp r4 bs'2-> as4~ |
  as8 gs fss[ as]  ds,16 r r8 \voiceDown r gs, |
  as16 gs fs gs  es'8 cs  gs-> fs16 es  fs8 ds' |
  es,8 cs' ds,[ bs']  cs4 r8 \voiceUp gs''16 es |
  cs4 r8 cs16 as  fss4 r8 cs'( |
  b4 as  gs8) r r4 |
  \voiceDown r8 b,16( gs es8-.) r r as16( fs ds8-.) r |
  r8 as'16( fs ds8-.) r r gs16( es css8-.) r |
  
  \barNumberCheck 33
  r8 gs'16( es css8-.) r r fs16( ds bs8-.) r |
  r8 fs'16( ds bs8-.) r r2 |
  s1 * 6 |
  
  \barNumberCheck 41
  s1 * 3 |
  \voiceUp r4 r8 cs'16 ds  es ds cs ds  bs'8 gs |
  ds8 cs16 bs cs8 as'  bs, gs' as,[ fss'] |
  gs,8 gs'16 fss  gs as bs gs  cs bs as bs  cs bs as gs |
  as4~ as16 gs fs as  gs fs es gs  fs es fs ds |
  es2~ es8 cs fs[ es] |
  
  \barNumberCheck 49
  fs4.-> fs16 ds  gs,4 r8 bs |
  es4.-> es16 css  fs,4 r8 as |
  ds4~ ds16 fs gs ds  es4 \voiceDown r8 cs~ |
  cs16 bs as bs  cs bs as gs  as4~ as16 gs fs as |
  gs16 fs es gs  fs es ds fs  es gs as bs  cs bs as gs |
  fss16 gs as fss ds4~  ds16 ds es fs  gs as bs gs |
  \staffUp \voiceTwo cs8 cs ds4  <cs es>2 |
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
  r4 r8 gs8( as16 gs fs gs  es'8 cs |
  gs8-> fs16 es) fs8-. ds'-.  es,-. cs'-. ds,[-. bs']-. |
  cs,8-. cs'16 bs  cs ds es cs  as bs cs as  fss gs as fss |
  bs,8 bs'16 as  bs cs ds bs  gs as bs gs  es fss gs es |
  
  \barNumberCheck 9
  as,8 as'16 gs  as bs cs as  fss gs as fss  ds es fss ds |
  gs,8 gs'16( as bs8-.) gs cs4 bs |
  as8 gs fss4 gs ds |
  gs4 r8 \voiceTwo ds'16 bs gs4 r8 gs16 es |
  css4 r8 es  fs gs as[ as,] |
  ds,4 r8 ds'(  fs16 es ds es  cs'8 as |
  es8 ds16 cs) ds8-. bs'-.  cs,-. as'-. bs,[-. gss']-. |
  \oneVoice as,8 as'16 gss  as bs cs as  fss gs as fss  ds es fss ds |
  
  \barNumberCheck 17
  gs,8 gs'16 fss  gs as bs gs  es fss gs es  cs ds es cs |
  fss,8 fss'16 es  fss gs as fss  dss es fss dss  bs css dss bs |
  es,16 fss gs as  bs css dss bs  es dss css dss  es ds cs bs |
  cs4~ cs16 bs as cs  bs as gs bs  as gs as fss |
  \voiceTwo gs8 cs fss,[ bs]  es, as gs[ cs] |
  bs2 es4 r |
  R1 |
  r4 r16 gs, as bs  cs4~  cs16 ds es fss |
  
  \barNumberCheck 25
  \oneVoice gs16 fss es fss  gs fss es ds  es4~ es16 ds cs es |
  ds16 cs bs ds  cs bs cs as  bs8 ds \voiceTwo fs!4~ |
  fs4 es2-> ds4~ |
  ds8 cs ds[ gs,]  cs16 ds es fs  es ds cs es |
  \oneVoice as16 gs fss as  cs b as cs  e8 ds16 cs  b as gs fss |
  gs16 b as gs  fss es ds cs  b cs ds b  gs8\noBeam gs'16( es |
  \voiceTwo cs8-.) r r cs16( as fs8-.) r r fs'16( ds |
  bs!8-.) r r bs16( gs es8-.) r r es'16( css |
  
  \barNumberCheck 33
  as8-.) r r as16( fs ds8-.) r r ds'16( bs |
  gs8-.) r r gs16( es cs4) r |
  \oneVoice r8 b''16 cs,  as' cs, gs' cs,  fs cs es ds  es8-. gs,-. |
  r8 as'16 cs,  gs' cs, fs cs  es cs ds cs  ds8-. gs,-. |
  r8 gs'16 gs,  fs' gs, es' gs,  ds' gs, cs bs  cs gs es' ds |
  es16 gs, gs' fs  gs gs, as' gs,  bs' cs ds bs  gs bs ds es |
  \staffUp \voiceTwo fs16( es ds es  cs'8-.) gs-.  es( ds16 cs  
    ds gs, cs ds) |
  es16( ds cs ds  bs'8-.) gs-. \staffDown \oneVoice ds8->( cs16 bs  
    cs gs bs cs) |
  
  \barNumberCheck 41
  ds16( cs bs cs  as'8-.) fss-.  cs( bs16 as  bs gs as bs) |
  cs16 ds es ds  fs es ds cs  fs8-. as,16( bs  cs bs as gs) |
  as4~ as16 gs fs as  gs fs es gs  fs es fs ds |
  es8. gs16  as bs cs8~  cs4 bs~ |
  bs4 as~  as8 gs as[ ds,] |
  gs4 r8 gs  as16 gs fs gs  es'8 cs |
  gs8( fs16 es fs8-.) ds'-. es,-. cs'-. ds,[-. bs']-. |
  cs,16 gs cs ds  es fs gs es  fs fs, fs' es  fs gs as fs |
  
  \barNumberCheck 49
  ds16 es fs ds  bs cs ds bs  es,8 es'16 ds  es fs gs es |
  css16 ds es css  as bs css as  ds,8 ds'16 css  ds es fs ds |
  bs16 cs! ds bs  gs as bs gs  cs,8 cs'16 ds  \voiceTwo es8 cs |
  fs4 es  ds8 cs bs4 |
  cs4 gs  as8 r r4 |
  r4 r16 cs bs as  gs4 r |
  \oneVoice r8 es-> fs-> gs->  cs,2 |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s4. s8\p s2 |
  s1 * 5 |
  s8 s\cresc s2. |
  s1 |
  
  \barNumberCheck 9
  s1 |
  s1\f
  s1 * 3 |
  s8.\> s16\! s2.\p |
  s1 |
  s8 s\cresc s2. |
  
  \barNumberCheck 17
  s1 * 2 |
  s1\f |
  s1 * 2 |
  s2. s4\dim |
  s1 * 2 |
  
  \barNumberCheck 25
  s1\p |
  s2. s4\cresc |
  s1 |
  s2 s\f |
  s1 * 4 |
  
  \barNumberCheck 33
  s1 |
  s2 s\dim |
  s1\p |
  s1 * 2 |
  s4 s2.\cresc |
  s1 * 2 |
  
  \barNumberCheck 41
  s1\f |
  s4. s8\p s2 |
  s1 |
  s16 s8.\cresc s2. |
  s1 |
  s4. s8\f s2 |
  s1 * 2 |
  
  \barNumberCheck 49
  s1 * 2 |
  s2 s^\piuF
  s1 * 2 |
  s2 s\ff |
  s2 s-\tweak Y-offset -2 \sf |
}

tempi = {
  \tempo "Allegro" 4 = 104
  s1
  \set Score.tempoHideNote = ##t
  s1 * 52 |
  s2 \tempo 4 = 96 s |
  \tempo 4 = 88
  s4 \tempo 4 = 80 s \tempo 4 = 60 s2 |
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
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 3
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

fugueThreeNotes =
\score {
  \header {
    title = "Fugue 3"
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

fugueThreeMidi =
\book {
  \bookOutputName "fugue-3-bwv-848"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

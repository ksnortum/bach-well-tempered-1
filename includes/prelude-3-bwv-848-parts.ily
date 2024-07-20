%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0.25) (0 . 0) (0 . 1) (0 . 0))
                        ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

%%% Music %%%

global = {
  \time 3/8
  \key cs \major
  \set Staff.extraNatural = ##f
}

rightHand = \relative {
  \global
  es''16 cs gs cs es cs |
  fs16 cs fs cs fs cs |
  gs'16 cs, gs' cs, gs' cs, |
  as'16 cs, as' cs, as' cs, |
  gs'16 cs, gs' cs, gs' cs, |
  fs16 es ds es fs ds |
  es16 ds cs ds es cs |
  ds16 es ds cs bs as |
  
  \barNumberCheck 9
  gs4( gs'8 |
  as,4 gs'8 |
  bs,4 gs'8 |
  cs,4 gs'8 |
  bs,4 gs'8 |
  as,4 fss'8 |
  gs,4 gs'8->~ |
  gs8) fs!16 es ds es |
  
  \barNumberCheck 17
  fs16 ds as ds fs ds |
  gs16 ds gs ds gs ds |
  as'16 ds, as' ds, as' ds, |
  b'16 ds, b' ds, b' ds, |
  as'16 ds, as' ds, as' ds, |
  gs16 fs es fs gs es |
  fs16 es ds es fs ds |
  es fs es ds cs bs |
  
  \barNumberCheck 25
  as4( as'8 |
  bs,4 as'8 |
  cs,4 as'8 |
  ds,4 as'8 |
  cs,4 as'8 |
  bs,4 gss'8 |
  as,4 as'8->~ |
  as8) gs!-. fss-. |
  
  \barNumberCheck 33
  gs8-. gs, gs'->~ |
  gs8 fs!-. es-. |
  fs16 es ds es fs ds |
  gss16 fss ess fss gss ess |
  as16 gss as bs as gs |
  fss16 es ds es fss ds |
  gs8-. gs,-. gs'->~ |
  gs8 fs!-. es-. |
  
  \barNumberCheck 41
  fs8-. fs,-. fs'->~ |
  fs8 es-. ds-. |
  es16 ds cs ds es cs |
  fss16 es ds es fss ds |
  gs16 fss gs as gs fs |
  es16 ds cs ds es cs |
  fs,4-\slurShapeA ( fs'8 |
  gs,4 fs'8 |
  
  \barNumberCheck 49
  as,4 fs'8 |
  b,4 fs'8 |
  as,4 fs'8 |
  gs,4 es'8 |
  fs,4 fs'8->~ |
  fs8) es16 ds cs ds |
  % like 1
  es16 cs gs cs es cs |
  fs16 cs fs cs fs cs |
  
  \barNumberCheck 57
  gs'16 cs, gs' cs, gs' cs, |
  as'16 cs, as' cs, as' cs, |
  gs'16 cs, gs' cs, gs' cs, |
  fs16 es ds es fs ds |
  es16 ds cs ds es cs |
  ds16 es ds cs bs as |
  bs16( gs) r gs[-. r gs]-. |
  bs16( gs) r gs[-. r gs]-. |
  
  \barNumberCheck 65
  cs16( gs) r gs[-. r gs]-. |
  cs16( gs) r gs[-. r gs]-. |
  fs'16( gs,) r gs[-. r gs]-. |
  fs'16( gs,) r gs[-. r gs]-. |
  es'16( gs,) r gs[-. r gs]-. |
  es'16( gs,) r gs[-. r gs]-. |
  fss'16 as, r as[ r as] |
  fss'16 as, r as[ r as] |
  
  \barNumberCheck 73
  gs'16 bs, r bs[ r bs] |
  gs'16 bs, r bs[ r bs] |
  gs'16 cs, r gs r cs |
  r16 es[ r gs r as] |
  b16 as gs fs es ds |
  es fs gs b as gs |
  as16 ds, r fs, r as |
  r16 ds[ r fs r gs] |
  
  \barNumberCheck 81
  a16 gs fs e ds cs |
  ds16 e fs a gs fs |
  gs16 cs, r e r cs |
  r16 a[ r fs r ds'] |
  r16 gs,[ r e r cs'] |
  r16 a[ r fs r ds] |
  bs16 gs r gs[ r gs] |
  bs16 gs r gs[ r gs] |
  
  \barNumberCheck 89
  cs16 gs r gs[ r gs] |
  cs16 gs r gs[ r gs] |
  fs'16 gs, r gs[ r gs] |
  fs'16 gs, r gs[ r gs] |
  es'16 gs, r gs[ r gs] |
  es'16 gs, r gs[ r gs] |
  fss'16 as, r as[ r as] |
  fss'16 as, r as[ r as] |
  
  \barNumberCheck 97
  \staffDown \voiceFour gs,16[-\slurShapeE ^( bs ds] \voiceOne fs[ a bs] |
  \staffUp \voiceFour cs16[ e fss] \voiceOne as[ cs e]) |
  \oneVoice bs16 ds fs ds bs gs |
  fs16 ds bs s8. |
  es!16 gs cs gs es cs |
  \staffDown \voiceOne as fss e s8. |
  \staffUp \oneVoice r8 <es'! gs cs> <ds gs bs> |
  <cs gs' cs>4. |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  cs4( cs'8 |
  ds,4 cs'8 |
  es,4 cs'8 |
  fs,4 cs'8) |
  es,4-\slurShapeC ( cs'8 |
  ds,4 bs'8 |
  cs,4 cs'8->~ |
  cs8) bs16 as gs as |
  
  \barNumberCheck 9
  bs16 gs ds gs bs gs |
  cs16 gs cs gs cs gs |
  ds'16 gs, ds' gs, ds' gs, |
  es'16 gs, es' gs, es' gs, |
  ds'16 gs, ds' gs, ds' gs, |
  cs16 bs as bs cs as |
  bs16 as gs as bs gs |
  as b as gs fs es |
  
  \barNumberCheck 17
  ds4-\slurShapeD ( ds'8 |
  es,4 ds'8 |
  fs,4 ds'8 |
  gs,4 ds'8 |
  fs,4 ds'8 |
  es,4 css'8 |
  ds,4 ds'8->~ |
  ds8) cs!16 bs as bs |
  
  \barNumberCheck 25
  cs16 as es as cs as |
  ds16 as ds as ds as |
  es'16 as, es' as, es' as, |
  fs'16 as, fs' as, fs' as, |
  es'16 as, es' as, es' as, |
  ds16 cs bs cs ds bs |
  cs16 bs as bs cs as |
  dss16 css bs css dss bs |
  
  \barNumberCheck 33
  es16 dss es fss es ds |
  css16 bs as bs css as |
  ds8-. ds,-. ds'->~ |
  ds8 cs!-. bs-. |
  cs8-. cs,-. cs'~ |
  cs8 bs-. as-. |
  bs16 as gs as bs gs |
  css16 bs as bs css as |
  
  \barNumberCheck 41
  ds16 css ds es ds cs |
  bs16 as gs as bs gs |
  cs8-. cs,-. cs'->~ |
  cs8 b-. as-. |
  b8-. b,-. b'->~ |
  b8 as-. gs-. |
  as16 fs cs fs as fs |
  b16 fs b fs b fs |
  
  \barNumberCheck 49
  cs'16 fs, cs' fs, cs' fs, |
  ds'16 fs, ds' fs, ds' fs, |
  cs'16 fs, cs' fs, cs' fs, |
  b16 as gs as b gs |
  as16 gs fs gs as fs |
  gs16 as gs fs es ds |
  cs4-\slurShapeB ( cs'8 |
  ds,4 cs'8 |
  
  \barNumberCheck 57
  es,4 cs'8 |
  fs,4 cs'8 |
  es,4 cs'8 |
  ds,4 bs'8 |
  cs,4 cs'8->~ |
  cs8) bs16 as gs as |
  gs8-. fs'-. ds-. |
  gs,8-. fs'-. ds-. |
  
  \barNumberCheck 65
  gs,8-. es'-. cs-. |
  gs8-. es'-. cs-. |
  gs8-. ds'-. bs-. |
  gs8-. ds'-. bs-. |
  gs8-. es'-. cs-. |
  gs8-. es'-. cs-. |
  gs8-. e'-. cs-. |
  gs8-. e'-. cs-. |
  
  \barNumberCheck 73
  gs8-. ds'-. bs-. |
  gs8-. ds'-. bs-. |
  gs8-. es'-. cs-. |
  gs8-. es-. ds-. |
  css8-. es-. as-. |
  css8-. es-. gs-. |
  fs8-. ds-. as-. |
  fs8 ds cs |
  
  \barNumberCheck 81
  bs8 ds gs |
  bs ds fs |
  e8 cs a |
  fs8 ds' bs |
  e,8 cs' a |
  fs8 ds bs |
  gs8-. fs'-. ds-. |
  gs,8-. fs'-. ds-. |
  
  \barNumberCheck 89
  gs,8-. es'-. cs-. |
  gs8-. es'-. cs-. |
  gs8-. ds'-. bs-. |
  gs8-. ds'-. bs-. |
  gs8-. es'-. cs-. |
  gs8-. es'-. cs-. |
  gs8-. e'-. cs-. |
  gs8-. e'-. cs-. |
  
  \barNumberCheck 97
  s4. * 2 |
  gs8 r r |
  s8. gs'16 bs ds |
  gs,8 r r |
  s8. cs,16 e fss |
  <<
    { d8\rest <cs es! gs> <ds fs gs> }
    \\
    { gs,4. }
  >> |
  <cs es gs>4. |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s4\p s16 \tag layout { s^\crescWO } \tag midi { s\cresc } |
  s4. * 2 |
  s4\f s8-\tweak bound-details.left.padding 0 \dim |
  s4. * 2 |
  s4.\p |
  s4. |
  
  \barNumberCheck 9
  s4 \tag layout { s8^\crescWO } \tag midi { s8\cresc } |
  s4. * 2 |
  s4\f s8-\tweak bound-details.left.padding 0 \dim |
  s4. * 2 |
  s4.\p |
  s4. |
  
  \barNumberCheck 17
  s4.\cresc |
  s4. * 2 |
  s4-\tweak Y-offset 0.5 \f s8-\tweak Y-offset 0.5 
    -\tweak bound-details.left.padding 0 \dim |
  s4. * 2 |
  s4.-\tweak Y-offset 1 \p  |
  s4. |
  
  \barNumberCheck 25
  s8. s\cresc |
  s4. * 2 |
  s4\f s8-\tweak bound-details.left.padding 0 \dim |
  s4. * 4 |
  
  \barNumberCheck 33
  s4. * 2 |
  s4.\f |
  s4. * 5 |
  
  \barNumberCheck 41
  s4. * 5 |
  s16 s\dim s4 |
  s4.\p |
  s16 s\cresc s4 |
  
  \barNumberCheck 49
  s4. |
  s4.\f |
  s4.\dim |
  s4. * 3 |
  s8.\p s\cresc |
  s4. |
  
  \barNumberCheck 57
  s4. |
  s4.-\tweak Y-offset 0.5 \f |
  s4. |
  s4.\dim |
  s4. * 2 |
  s4.\p |
  s4. |
  
  \barNumberCheck 65
  s4. * 2 |
  s4.\cresc |
  s4. * 3 |
  s4.\f |
  s4. |
  
  \barNumberCheck 73
  s4. * 3 |
  s16 s\< s8. s16\! |
  s4\sf\> s16 s\! |
  s4. * 2 |
  s16 s\< s8. s16\! |
  
  \barNumberCheck 81
  s4\sf\> s16 s\! |
  s4. |
  s4.\f |
  s4. * 2 |
  s4.\dim |
  s4.\p |
  s4. |
  
  \barNumberCheck 89
  s4. * 2 |
  s8 s4\cresc |
  s4. * 3 |
  s4.\f |
  s4. |
  
  \barNumberCheck 97
  s4.\fz |
  s4. |
  s4.\fz |
  s4. |
  s4.\fz |
  s4. * 3 |
}

tempi = {
  \tempo "Vivace" 4. = 92
  s4. * 100 |
  \set Score.tempoHideNote = ##t
  \tempo 4. = 84
  s4. |
  \tempo 4. = 76
  s8. \tempo 4. = 69 s |
  \tempo 4. = 63
  s8 \tempo 4. = 58 s4 |
  \tempo 4. = 40
  s4. |
}

forceBreaks = {
  % page 1
  \repeat unfold 5 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 5 { s4.\noBreak } s4.\pageBreak
  
  % page 2
  \repeat unfold 5 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 5 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 6 { s4.\noBreak } s4.\pageBreak
  
  % page 3
  \repeat unfold 5 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 5 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 5 { s4.\noBreak } s4.\break\noPageBreak
  \repeat unfold 5 { s4.\noBreak } s4.\break\noPageBreak
}

preludeThreeNotes =
\score {
  \header {
    title = "Prelude 3"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
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

preludeThreeMidi =
\book {
  \bookOutputName "prelude-3-bwv-848"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

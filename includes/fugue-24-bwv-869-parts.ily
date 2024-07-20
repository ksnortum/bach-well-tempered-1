%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Shapes and Positions %%%

tieShapeA = \shape #'((0 . 1) (0 . 1) (0 . 1) (0.5 . 1)) \etc
tieShapeB = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) \etc
tieShapeC = \shape #'((1 . -1) (1 . -1) (-1 . -1) (-1 . -1)) \etc
tieShapeD = \shape #'((0 . 0) (0 . -0.25) (0 . -0.25) (0 . 0)) \etc
tieShapeE = \shape #'((1 . -0.5) (1 . -0.75) (-1 . -0.75) (-1 . -0.5)) \etc
tieShapeF = \shape #'((-0.5 . -1) (-0.5 . -1) (0 . -1) (0 . -1)) \etc
tieShapeG = \shape #'((0 . 1.5) (0 . 1.5) (0 . 1.5) (0 . 1.5)) \etc
tieShapeH = \shape #'((0 . -0.25) (0 . -0.5) (0 . -0.5) (0 . -0.25)) \etc

stemLengthA = \tweak Stem.length 11 \etc
stemLengthB = \tweak Stem.length 8 \etc

%%% Music %%%

global = {
  \time 4/4
  \key b \minor
}

rightHandUpper = \relative {
  r8 fs'( d b)  g'( fs) b->( as) |
  e8->( ds) c'->( b)  fs->( es) d'( cs) |
  bs8( cs a fs  gs2)\trill |
  fs8. es16(  fs gs a cs  b gs a c  fs4 |
  e4 d cs! b~ |
  b8) as b4(~  b16 cs d e!  fs g b, as) |
  \voiceOne d2~  d8 c b ds |
  e2~  e8 d! cs! es |
  
  \barNumberCheck 9
  fs8. g16  fs e! d b  cs e d b  fs8 fs'~ |
  fs8. g16  fs e ds cs!  b cs32 d cs8~  cs16 b a d |
  gs,4 a b2-\tieShapeA ~ |
  b4 a g2 |
  r8 b a fs  d'( b) e!( ds) |
  a!8( gs) f'( e)  b( as) g'( fs) |
  es8 fs d b  cs2~ |
  cs16 cs d e  fs g b, as  b2~ |
  
  \barNumberCheck 17
  b16 es, fs gs  a! b cs fs,  d' e! fs8~  fs e16 d |
  \oneVoice cs16 d e8~  e d16 cs  b cs d8~  d cs16 b |
  \voiceOne a4 r8 fs'~ fs e16 d  cs d e8~ |
  e8 d16 cs  b cs d8~  d cs16 b  as b cs8~ |
  cs8 b16 as  b4~  b16 as b d  cs4 |
  b4 a! gs fs |
  fs8 es fs4-\tieShapeB ~  fs16 gs a b!  cs d fs, es |
  fs4 fs'~  fs8 e ds fs |
  
  \barNumberCheck 25
  g2~  g8 fs es gs |
  cs,8 d!16 e!  d e fs8~  fs e16 d  cs d e8~ |
  e8 d16 cs  b cs d8~  d cs16 b  as b cs8~ |
  cs8  b r b'~  b a!16 g  fs g a8~ |
  a8 g16 fs  e fs g8~  g fs16 e  ds e fs8~ |
  fs8 e16 ds  e fs g b  a8 g fs4 |
  e4 d! cs!  b16 cs d e |
  d16 cs8. b4~  b16 cs d e  fs g b, as |
  
  \barNumberCheck 33
  d2 cs4. ds8 |
  es4 r8 fs~  fs16 es fs a  gs4 |
  r8 fs d b  g'! fs b as |
  e8 ds g4~  g16 fs gs as  b gs fs es |
  fs4 f4~  f16 e fs gs  a b e, ds |
  e16 fs, g a  b cs d fs  e cs d fs  g e fs as |
  b4 a gs fs~ |
  fs16 es fs es  fs4~  fs16 a, b cs  d e fs, es |
  
  \barNumberCheck 41
  fs8 fs' d b  g' fs b as |
  e8 ds r e~  e16 ds e g  fs4 |
  e16 d! cs! b  a b cs e  d b cs e  fs d e gs |
  a16 g! fs e  d cs b a  g e fs a  b g a cs |
  d16 e d e  fs g a fs  d f e d  c b c d |
  c16 b8. a4~  a8 d16 e  fs g a, gs |
  e'16 fs g,! fs  d' e fs, e  cs' b cs d  e fs g e |
  a2 g4 f |
  
  \barNumberCheck 49
  e4 d~  d16 cs d cs  d4~ |
  d16 e fs g  a b d, cs  d2~ |
  d4 cs8 fs~  fs16 b, cs d!  e fs b, as |
  d4 cs8 b  cs2 |
  r16 fs, gs a  b cs fs, es  a4 r |
  r4 gs' fs e |
  ds4 cs-\tieShapeG ~  cs8 gs cs4~ |
  cs16 ds e fs  gs a cs, bs  e2~ |
  
  \barNumberCheck 57
  e16 e fs gs  a b ds, cs  ds4 r |
  r4 fs( e d |
  cs4 b~  b16) as b as  b4~ |
  b16 cs d e  fs g b, as  d4~  d16 cs d cs |
  e16  d fs e  g4~  g8. fs16  a4~ |
  a8. gs16 b8 a  gs4~ gs16 es fs8~ |
  fs16 fs gs a  b gs fs es  a2~ |
  a2~  a16 fs g! a  b c fs, e |
  
  \barNumberCheck 65
  fs4~  fs16 fs d b  g' a b8~  b a16 g |
  fs16 g a8~  a g16 fs  e fs g8~  g fs16 e |
  d4~  d16 e fs8~  fs e16 d  cs d e8~ |
  e8 d16 cs  b cs d8~  d cs16 b  as b cs8~ |
  cs16 fs, gs as  b cs d fs  e cs d fs  g e fs as |
  b16 a! g fs  e d c b  a fs g b  c a b ds |
  e4 d! cs b~ |
  b16 as b as  b4~  b16 cs d e  fs g b, as |
  
  \barNumberCheck 73
  b16 d e fs  g a! c, b  c e fs g  as b d, cs |
  d2 cs2~ |
  cs4 c16 as b8~  b4 as |
  b1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s1 * 6 |
  \voiceDown b16 \voiceUp fs' gs as  b cs fs, es  a2~ |
  a8 g! fs as  b2~ |
  
  \barNumberCheck 9
  b8 as b4 r cs |
  b4 a! gs fs~ |
  fs8 es fs4~  fs16 gs a b  cs d \voiceDown fs, es |
  s1 |
  \voiceUp fs2  es8 ds r ds' |
  ds8 e r4  r8 \stemLengthA e d16 cs d b |
  cs4 b8 fs  g2~ |
  g8 cs,~ cs4  fs gs~ |
  
  \barNumberCheck 17
  gs4 fs8 r r2 |
  s1 |
  \voiceDown fs,16 \voiceUp b' cs8~  cs b16 a  g a b8~  b a16 g |
  fs16 g a8~  a g16 fs  e fs g8~  g \voiceDown fs16 e |
  d4 r \voiceUp g8 fs b[ as] |
  e8 ds c'[ b]  fs es d'![^( cs] |
  bs8) cs a[ fs]  gs2 |
  a2-\tieShapeC ^~  a8 c b ds |
  
  \barNumberCheck 25
  e2~  e8 d! cs! es |
  fs4 r8 b,16 a  g a b8~  b a16 g |
  fs16 g a8~  a g16 fs  e fs g8~  g fs16 e |
  d16 e fs8~  fs e16 d  c d e8~  e d16 c |
  b16 c d8~  d c16 b  a b c8~  c b16 a |
  g4 r8 e'16 ds~  ds e fs g  a g a b |
  c16 a b8~  b16 a gs fs!  e g fs as  b4~ |
  b8 b16 as  r16 a g! fs  e2 |
  
  \barNumberCheck 33
  r16 fs gs as  b cs fs, es  a2 |
  gs8 cs a[ fs]  d' cs fs[ es] |
  b8 as r b~  b16 as b d  cs4~ |
  cs8 b e[ as,]  b2~ |
  b16 as b cs  d e! a,! gs  a2-\tieShapeD ~ |
  a8 g fs4 r2 |
  r16 fs' a! g  fs e ds cs  b d cs b  a gs a fs |
  gs4  r16 e' d cs  b a gs a  b4-\tieShapeE ^~ |
  
  \barNumberCheck 41
  b8 as r b~  b16 as b d  cs4 |
  r8 b g e  c' b e[ ds] |
  a8 gs a4~  a8 gs cs[ b] |
  e8 r r fs,  d4 r8 g |
  a8 d c4 b a~ |
  a8 a16 gs  a g fs e  d cs b cs  d4 |
  cs4 b a2 |
  r16 g'' fs e  d c b c  d e d c  b cs d b |
  
  \barNumberCheck 49
  g16 bf a g  f e f d  e4  r16 c' b a |
  g16 fs e d  s2. |
  r16 e fs g  a b e, ds  g2~ |
  g8 fs es[ gs]~  gs16 es fs gs  a b d, cs |
  ds4 es8 gs-\tieShapeF ~  gs16 gs fs es  fs gs a cs |
  b16 gs a cs  b d cs b  cs d e d  cs b as gs |
  fs16 a! gs bs  cs ds e fs  e ds r a  gs b a gs |
  fs2 gs~ |
  
  \barNumberCheck 57
  gs16 cs, ds e  fs gs a b  a fs gs a  b cs ds e |
  fs16 ds e gs  fs cs b a  b cs d cs  b a gs fs |
  e16g! fs e  d cs d b  cs4  r16 a'! g fs |
  e4 r8 \stemLengthB cs'-\tieShapeH ~  cs16 cs b as  b4 |
  cs8 d  r16 e d cs  b as b8  r16 fs' e ds |
  cs16 bs cs8  r16 gs'8 fs16~  fs fs es gs  cs,8. d16 |
  b2-> cs->~ |
  cs16 fs, g! a  b c e, ds  e2~ |
  
  \barNumberCheck 65
  e16 e d! cs  d8 r  r e'16 d  cs d e8~ |
  e8 d16 cs  b cs d8~  d cs16 b  as b cs8~ |
  cs4 b8 a!  g16 a b8~  b a16 g |
  fs16 g a8~  a g16 fs  e fs g8~  g fs16 e |
  d4 b'~  b8 as d cs |
  fs8 r r4  r4 r8 b,~ |
  b16 cs! b a  gs4  r16 g fs8~  fs16 e d8 |
  cs4  r16 fs e d  cs2 |
  
  \barNumberCheck 73
  b4 r8 fs'  e4 r |
  r8 fs  d b  g' fs b as |
  e8 ds r gs  fs es fs8. e16 |
  ds1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  R1 * 3 |
  r8 b( a fs)  d'( b) e!->[( ds]) |
  a8->( gs) f'->[( e])  b->( as) g'!->[( fs]) |
  es8( fs d b  cs2)\trill |
  s1 * 2 |
  
  \barNumberCheck 9
  s1 * 3 |
  \voiceThree fs2. e!4~ |
  e8. d16  cs b a fs  gs b a fs  c'8 b16 a |
  b2 e,4 b'8 a! |
  gs8 fs fs'[ d]  e!2~ |
  e8 cs as fs  d'2 |
  
  \barNumberCheck 17
  cs2~  cs8 b16 a  gs a b8~ |
  b8 a16 gs  fs gs a8~  a gs16 fs  es fs gs8 |
  r8 fs' d b  r2 |
  s1 |
  \voiceUp r8 fs' d b s2
  s1 * 3 |
  
  \barNumberCheck 25
  s1 * 3 |
  \voiceDown r8 b g e  r2 |
  s1 |
  r8 b' g e  \oneVoice c'( b) e( ds) |
  a8( gs) f'( e)  b( as) g'!( fs) |
  es8 fs d b  cs2 |
  
  \barNumberCheck 33
  b2  r16 cs ds es  fs gs cs, bs |
  cs16 b! a gs  fs gs a cs  b gs a cs  d b cs es |
  \clef treble fs16 e! d cs  b cs d fs  e cs d fs  g e fs as |
  b16 a! g fs  e d e cs  d2~ |
  d8 cs b d  \clef bass c2~ |
  \voiceThree c8 b r b~  b16 as b d  cs4 |
  fs,4 r s2 |
  s1 |
  
  \barNumberCheck 41
  s1 * 3 |
  r8 a fs d  b' a d cs |
  g8 fs ef'[ d]  a gs f'[ e!] |
  \oneVoice ds8 e cs! a  b2~ |
  \voiceThree b8 a4 g8~  g fs e cs |
  s1 |
  
  \barNumberCheck 49
  s1 |
  s4  cs'16 b a g  fs a b cs  d e a, gs |
  a2  b8 as16 b  cs8 e, |
  b'8 r r4  r16 cs, ds es  fs gs a es |
  fs4 gs  r8 cs a fs |
  \clef treble \oneVoice d'8( cs) fs( es)  b( as) g'( fs) |
  cs8( bs) a'( gs)  fss( gs e cs) |
  \clef bass ds2~  ds16 gs, as bs  cs ds fs, e |
  
  \barNumberCheck 57
  \voiceThree fs4 r r2 |
  s1 * 2 |
  r2  r8 fs'_( d b) |
  \clef treble \oneVoice g'8( fs) b( as)  e( ds) c'( b) |
  fs8( es) d'![( cs])  bs cs a[ fs] |
  gs2~  gs16 cs, ds es  fs gs b, a |
  b1-> |
  
  \barNumberCheck 65
  as8 fs b d  e g a! cs, |
  d8 fs g b,  cs e fs as, |
  \clef bass b16 fs g a!  b c e, ds  e8 g a cs |
  d8 fs, g b  cs e, fs as |
  b8 fs d b  g' fs b as |
  \voiceThree e8 ds e2 fs4 |
  e4  r16 b' cs d  e8. e16  d16 cs b a! |
  gs8 fs~  fs16 a g fs  e!2 |
  
  \barNumberCheck 73
  fs4 s8 a  g4 s8 b |
  as16 fs gs as  b cs d b~  b b as b  cs d e cs |
  fs4 r8 d cs2 |
  b1 |
}

leftHandLower = \relative {
  s1 * 6 |
  R1 * 2 |
  
  \barNumberCheck 9
  r8 fs( d b)  g'->( fs) b->( as) |
  e8->( ds) c'->( b)  fs->( es) d'->( cs) |
  bs8( cs a fs)  gs2\trill |
  fs16 fs g! a  b c e, ds  e fs g e  \voiceTwo as b d, cs! |
  d8 b fs'2~ fs4 |
  e4 d! cs b~ |
  b8 as b4~  b16 cs d e  fs g! b, as |
  d2~  d16 as b cs  d e fs, es |
  
  \barNumberCheck 17
  fs4 fs'8 a  b d, e[ gs] |
  a8 cs, d[ fs]  gs b, cs[ es] |
  fs8 a, b d  \oneVoice e g, a cs |
  d8 fs, g b  \voiceTwo cs e, fs as |
  b4~  b16 cs d fs  e cs d fs  g e fs as |
  \oneVoice b16 g fs e  ds8. cs!16  d e d cs  b a gs fs |
  gs16 b! a gs  fs a d cs  b8 gs cs cs, |
  fs'16 g! a b  c d e, ds  g2~ |
  
  \barNumberCheck 25
  g16 b, cs d!  e fs b, as  b2~ |
  b8 as b d  e g, a cs |
  d8 fs, g b  cs e, fs as |
  \voiceTwo b8 d e g  a c d fs, |
  \oneVoice g8 b c e,  fs a b ds, |
  \voiceTwo e4 r r2 |
  s1 * 2 |
  
  \barNumberCheck 33
  s1 * 5 |
  r8 e d b g' fs b->[( as]) |
  e8->( ds) c'->[( b])  \oneVoice fs->( es) d'->( cs) |
  bs8( cs a fs)  gs2 |
  
  \barNumberCheck 41
  fs16 e d cs  b cs d fs  e cs d fs  g e fs as |
  b16 a! g fs  e fs g b  a fs g b  c a b ds |
  e8 e, cs! a  fs' e a gs |
  \voiceTwo d8 cs d4~  d2~ |
  d4 r r2 |
  R1 |
  r2  r8 d cs a |
  \oneVoice fs'8( d) g->( fs)  c->( b) a'->( gs) |
  
  \barNumberCheck 49
  d8->( cs!) bf'( a)  gs( a fs! d) |
  \voiceTwo e2 d4 r8 b |
  a4 r8 fs'  e4 r8 cs |
  b16 fs gs a  b cs fs, es  a2~ |
  a4 gs  fs8 r r4 |
  s1 * 3 |
  
  \barNumberCheck 57
  r2  r8 b( gs e) |
  \oneVoice cs'8->( b) e->[( ds])  a->( gs) f'->[( e]) |
  b8->( as) g'->[( fs!])  es fs d[ b] |
  \voiceTwo cs2  b8 r r4 |
  s1 * 4 |
  
  \barNumberCheck 65
  s1 * 5 |
  r8 b g e  c' b e-> ds |
  a8-> gs f'-> e  b-> as g'!-> fs |
  es8 fs d b  cs2 |
  
  \barNumberCheck 73
  d4 d8\rest ds e4 d8\rest es |
  fs1~ |
  fs16 as, b cs  ds es fs, es
    << 
      { fs2 | b1\fermata | } 
      \new Voice { \voiceThree fs'16\rest b, cs d!  e cs fs8_~ | fs1 |  } 
    >>
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
  s1-\tweak Y-offset -1 ^\pMoltoEspressivo |
  s1 * 2 |
  s2 s8.\< s16\! s4 |
  s1 |
  s2 s8.\< s16\! s8.\> s16\! |
  s2 s\cresc |
  s1 |
  
  \barNumberCheck 9
  s1\f |
  s1 |
  s2 s4\> s16 s8.\! |
  s1-\tweak Y-offset 1 \p |
  s2. s4\cresc |
  s1 |
  s2\f s16\sf \tag layout { s8. } \tag midi { s8.\f } s4 |
  s1 |
  
  \barNumberCheck 17
  s8 s4.-\tweak Y-offset -1 \dim s2\p |
  s2. s4-\tweak extra-offset #'(0 . -0.5) \cresc |
  s8 s4.\f s2\p |
  s1 * 4 |
  s1\cresc |
  
  \barNumberCheck 25
  s2 s\f |
  s2\dim s\p |
  s1 |
  s2\cresc s\p |
  s1 |
  s8 s2..\cresc |
  s1 |
  s2 s16\sf\> \tag layout { s } \tag midi { s\f } s4 s16 s\! |
  
  \barNumberCheck 33
  s1\p |
  s1\cresc |
  s1 |
  s2 s\f |
  s1-\tweak Y-offset -2 \dim |
  s1\p |
  s1 * 2 |
  
  \barNumberCheck 41
  s1\cresc |
  s1 * 2 |
  s1\f |
  s1 * 2 |
  s2 s16 s8.\> s s16\! |
  s1\p |
  
  \barNumberCheck 49
  s2 s16 s4..\cresc |
  s1 * 2 |
  s2 s16-\tweak Y-offset -1.5 \sf \tag layout { s } \tag midi { s\f } s4. |
  s2 s\p |
  s1 * 3 |
  
  \barNumberCheck 57
  s2 s-\tweak Y-offset -1.5 \f |
  s1 * 2 |
  s4.\> s8\! s16 s4..\p |
  s1 |
  s2 s8 s4.\cresc |
  s1 * 2 |
  
  \barNumberCheck 65
  s2-\tweak Y-offset -2 \f s4\> s16\! s s8\p |
  s1 |
  s8 s4.\< s2\p |
  s1 |
  s1\cresc |
  s8 s2..\f |
  s1 |
  s2\ff s\fz |
  
  \barNumberCheck 73
  s1 |
  \tag layout { s2-\tweak Y-offset -1 ^\sfDim } \tag midi { s2\dim } s^\rall |
  s4. s8\p s8 s4.\pp |
  s1 |
}

tempi = {
  \tempo "Largo" 8 = 92
  s1 * 73 |
  \set Score.tempoHideNote = ##t
  s2 \tempo 8 = 88 s2 |
  \tempo 8 = 84
  s4 \tempo 8 = 80 s \tempo 8 = 76 s \tempo 8 = 69 s |
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
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 3
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 4
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 5
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

fugueTwentyFourNotes =
\score {
  \header {
    title = "Fugue 24"
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

fugueTwentyFourMidi =
\book {
  \bookOutputName "fugue-24-bwv-869"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

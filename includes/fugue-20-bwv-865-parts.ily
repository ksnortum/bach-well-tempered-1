%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0.25) (0 . 0.25) (0 . 0) (0 . 0)) \etc
tieShapeC = \shape #'((0 . -1.5) (0 . -1.5) (0 . -1.5) (0 . -1.5)) \etc
tieShapeD = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
tieShapeE = \shape #'((-0.75 . -1.25) (0 . -1) (0 . -1) (0 . 0)) \etc

moveDynamicA = 
  \tweak X-offset -1
  \tweak Y-offset -3
  \tweak extra-offset #'(4 . 0)
  \etc
moveClefA = \once \override Staff.Clef.extra-offset = #'(0.5 . 0)

beamPositionsA = \tweak Beam.positions #'(1 . 0.5) \etc
beamPositionsB = \tweak Beam.positions #'(3.5 . 3) \etc

forceHShiftA = \tweak NoteColumn.force-hshift -1.5 \etc
forceHShiftB = \tweak NoteColumn.force-hshift -0.5 \etc
forceHShiftC = \tweak NoteColumn.force-hshift -0.5 \etc
forceHShiftD = \tweak NoteColumn.force-hshift -0.25 \etc
forceHShiftE = \tweak NoteColumn.force-hshift 0.7 \etc

%%% Music %%%

global = {
  \time 4/4
  \key a \minor
}

rightHandUpper = \relative {
  \beamQuarterNotes.44
  R1 * 3 |
  r8 e'16( ds  e8-.) fs-.  g-. g16( fs  g8-.) a-. |
  b16( a g a  b8-.) c-.  ds,-. b-. r e( |
  fs16 g e fs  g a fs g  a8 g fs b |
  e,8 fs16 gs  a b c d  e8-.) a,-. gs!4^( |
  \voiceOne a8[ a g! f!]  e c' b a |
  
  \barNumberCheck 9
  gs8 e' d c)  b16 c d b  c b a c |
  d16 e f d  e4~  e8 a,  b16 c d8~ |
  d8 c b a  g e' d c |
  b4 r8 a~  a g16 fs  g a b g |
  c4 r8 b  a16 g a b  c8 fs, |
  b16 a c b  a g fs g  e8 e'16 f!  e8 d |
  c8 c16 d  c8 b  a16 b c b  a8 g |
  fs'8 a r e  d16 c e d  c b d c |
  
  \barNumberCheck 17
  b8 c  d16 b a g  e'32 fs e16 fs g  fs8.\trill g16 |
  g2~  g8 g16 a  g8 f |
  e16 d c d  e f g8~  g16 f e f  g a bf g |
  a8. bf16  g8. a16  f e f g  a8 a, |
  d16 g f e  e8.\trill d16  d4. e8 |
  f2.~ f16 e d c |
  b8 c4 b8  c4. bf8 |
  a2~ a8 gs a b |
  
  \barNumberCheck 25
  e,4~  e16 fs gs a  b a b c  d4~ |
  d8 c4 b8~  b a16 gs  a4~ |
  a4 gs  a8-. a16( gs  a8-.) b-. |
  \oneVoice c8-. c16( b  c8-.) d-.  e16( d c d  e8-.) f-. |
  gs,8-. e-. r a  b16 c a b  c d b c |
  d8( c b e)  a, a'4 g!8~ |
  g8 c16 b  a g fs e  \voiceOne ds8 b cs ds |
  e16 d! c! b  c4  b8 e16 ds  e8 fs |
  
  \barNumberCheck 33
  g8 g16 fs  g8 a  b,2~ |
  b4. e16 d!  c b a b  c8 b16 a |
  g4 c~  c8 b16 a  b8 cs |
  d2~  d8 c16 b  c8 d |
  e8 a, a'4~  a16 gs a gs  a8 b |
  e,4. d16 c  b8 e16 d  c b a gs |
  a8 r gs r  a4 r |
  s1 |
  
  \barNumberCheck 41
  s1 * 2 |
  r8 c16 b  c8 d  e e16 d  e8 f |
  g16 f e f  g8 a  b,^\sf g r c |
  d16 e c d  e f d e  f8 e d g |
  c,16 b! d c  b a g f  e8 f16 g  a b c d |
  b8 a16 g  c2 b4 |
  c8 e16 f  e8 d  c cs d e |
  
  \barNumberCheck 49
  a,8 d16 e  d8 c!  b!16 c d c  b8 a |
  g4 r r2 |
  s1 * 2 |
  r2  r8 d'16 e  d8 c |
  b8 b16 c  b8 a  g16 a b a  g8 fs |
  e'8 g r d  c16 b d c  b a c b |
  a8 b c g  d'16 e d e  e8.\trill d32 e |
  
  \barNumberCheck 57
  f2~  f8 e16 f  e8 d |
  c8 c16 d  c8 b  a16 b c b  a8 b |
  % third beat, 2nd 16th note, c, SrcB, SrcC
  f'8 a r e  d16 c! e d  c b d c |
  b4. a8~  a16 b gs a  b4~ |
  b16 c a b  c4~  c16 d b c  d c b a |
  gs16 b c d  e f g!8~  g16 a g f  g4~ |
  g16 f e f  g4~  g16 bf a g  f e d cs |
  d16 e d e  e8.\trill d16  d2~ |
  
  \barNumberCheck 65
  d4 r r2 |
  R1 |
  r2  r8 e16 f  e8 d |
  c8 c16 d  c8 bf  a16 bf c bf  a8 g |
  f'8 a r e  d16 cs e d  cs b! d c |
  b8 cs d a  e'2~ |
  e16 cs d f  g4~  g16 e f a  bf4~ |
  bf16 g a c  d,8 e16 g  c,4~ c16 f, g bf~ |
  
  \barNumberCheck 73
  bf16 \once \omit Accidental bf a g  g8.\trill f16  f4 c'~ |
  c1-\tieShapeD ~ |
  c8 a ef'4~  ef8 d  c16 bf d c |
  bf16 c d c  bf a g f!  g a bf a  g f e! d |
  e'2  r8 e16 d  e8 f |
  g8 g16 f  g8 a  bf16 a g a  bf g a e |
  f16 e d e  f d e cs  d c bf c  d bf c a |
  <e' gs>4\fermata s  a2~ |
  
  \barNumberCheck 81
  a8 e16 d  e8 fs  gs gs16 fs  gs8 a |
  b16 a gs a  b8 c  <b, ds>4 b8\rest <b e> |
  c8 b16 a  c b a gs  a4 r |
  r2  r8 d16 cs  d8 e |
  f8 f16 e  f8 g  a16 g f g  a8 bf |
  \beamPositionsB cs,8 a r d~  d16 c b! c  d e fs gs |
  a1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \beamQuarterNotes.44
  s1 * 7 |
  \voiceFour c'16 b c4 d8  e16 d e4 f8~ |
  
  \barNumberCheck 9
  % second 16th, fs, SrcB, SrcC
  f16 fs e fs  gs8 a b4 r8 a |
  g!4~ g16 f e g  fs4 gs |
  a8 a g! fs  e c' b a |
  g16 fs e fs  g8 fs~  fs e16 ds e4~ |
  e8 a16 ds, e2~  e8 ds |
  e4. ds8  e r r4 |
  r8 e[ fs g]  a r r4 |
  r8 d,[ e fs]  g r r4 |
  
  \barNumberCheck 17
  r2  r8 d'16 e  d8 c |
  b8 b16 c  b8 a g4  a8 b |
  c4 r8 d  cs8. d16 e4~ |
  e16 cs d8~  d16 b! cs8  d4 r8 f, |
  g16 cs d e  cs4  d8 a16 bf  a8 g |
  f8 a b! c!  d16 c b a  g8 f~ |
  f8 e d4  r16 a' g f  e8 g~ |
  g8 f16 g  f8 e  d d16 e  d8 c |
  
  \barNumberCheck 25
  b16 c d c  b8 a  gs' b r f |
  e16 d f e  d c e d  c8 d  e16 d b a |
  f'16 d e f  b,8.\prall a16  a8 r r4 |
  s1 * 3 |
  r2  r8 e'16 ds  e8 fs |
  g8 g16 fs  g8 a  b16 a g a  b8 c |
  
  \barNumberCheck 33
  ds,8 b r e  fs16 g e fs  g a fs g |
  a8 g fs b  e,4. ds8 |
  e8 c'16 b  a g fs e  d!8 g16 fs  e d cs b |
  a8 d'16 c!  b a gs fs  e4 a |
  r8 a16 gs  a8 b  c c16 b  c8 d |
  e16 d c d  e8 f  gs, e r a |
  b16 c a b  c d b c  d8 c b e |
  % second beat, 4th 16th note, b, SrcB, SrcC
  % fourth beat, 4th 16th note, a, SrcB, SrcC
  \oneVoice a,4~ a16 f' d b  g4~ g16 e' c a |
  
  \barNumberCheck 41
  f8 g16 a  g f e f  e2~ |
  e16 d e f  g a b c  d, e d e  f4~ |
  \voiceFour f16 a g f  e8 a  g2~ |
  g8 c b a  g4 f8 e |
  d16 g a b  c2  b8 bf |
  a8 r r4  r r8 d,~ |
  d16 e c d  e f d e  f8 e d g |
  e16 f e d  c b a gs  a8 a'16 bf  a8 g! |
  
  \barNumberCheck 49
  f8 f16 g  f8 e  d16 e f e  d8 c |
  b'8 d r a  g16 f a g  f e g f |
  \oneVoice e8 f g d  a'16 b a b  b8.\trill a32 b |
  c16 d c d  d8.\trill c32 d  e16 d c b  a g fs e |
  \voiceFour fs8 d e fs  g fs g a |
  d,4. ds8  e e16 ds  e8 r |
  r8 g[ a b]  c g4 fs16 g |
  a8 r r4 r2 |
  
  \barNumberCheck 57
  r16 e' d c  b a gs a  b2~ |
  b8 e,16 f  e8 d  c c16 d  c8 bf |
  % second through fourth 16th notes, b cs b, SrcB, SrcC
  a16 b! cs b  a8 g  fs' a r e |
  d16 c e d  c b d c  b8 c  d16 c e d |
  c8 d  e16 d f e  d8 e  f4->~ |
  f8 e r r16 bf'  a4~  a16 cs e d |
  e4~  e16 a, cs d  e cs d8  r a16 g |
  f8 bf a g~  g f16 e  f g a f |
  
  \barNumberCheck 65
  d4 r r2 |
  R1 * 2 |
  r8 a'16 b  a8 g  f f16 g  f8 e |
  d16 e f e  d8 cs  bf'-. d-. r a |
  g16 f a g  f e g f  e8 f g4 |
  f4 e8 a~  a16 cs d8  g, c~ |
  c16 e f8  bf,4~  bf16 g a c  d,4 |
  
  \barNumberCheck 73
  e8 f4 e8  f8 c'16 d  c8 bf |
  a8 a16 bf  a8 g  fs16 g a g  fs8 ef |
  d'8-. fs-. r c  bf16 a c d  a g bf a |
  g8 r r4 r2 |
  r8 a16 g  a8 b!  cs cs16 b  cs8 d |
  e16 d cs d  e8 f  g, e r a~ |
  a8 d a g  f d f f |
  b!4 b\rest  r8 a16 gs  a8 b |
  
  \barNumberCheck 81
  c8 c16 b  c8 d  e16 d c d  e8 f |
  \voiceOne \beamPositionsA gs,8 e b'\rest a  \voiceFour <fs a>4 s8 e |
  a4 a8 e  e4 r8 e |
  a,8 a'16 bf  a8 g!  f f16 g  f8 g |
  r8 a16 g  a8 b!  cs cs16 b  cs8 d |
  e16 d cs d  e8 f  gs,4 r8 d'~ |
  << 
    { \voiceThree \forceHShiftE d8 e16 f! <cs e>8 <b d>  cs2\fermata | } 
    \new Voice { \voiceFour r8 cs16 d  r8 r16 gs,  a2 | } 
  >>
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \beamQuarterNotes.44
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 2 |
  \voiceThree r8 e16 ds  e8 fs  g! g16 fs  g8 a |
  b16 a g a  b8 c  ds, b r e |
  fs16 g e fs  g a fs g  a8 g fs b |
  e,4 b'8 a  gs e fs gs |
  a8 r r4  fs8[ a b cs] |
  d8 r r4  r8 b a4 |
  
  \barNumberCheck 17
  g2-\tieShapeA ~  g8 a4 d,8~ |
  d8 \clef treble g'16[ a]  g8 f!  e e16 f  e8 d |
  \oneVoice c16 d e d  c8 bf  a' cs r g |
  f16 e g f  e d f e  d8 e  f16 e d c! |
  \clef bass \voiceThree bf8 a16 g  a4~  a8 a b! cs |
  d8 r8 r4  s2 |
  s1 |
  r2  r8 b16 c  b8 a |
  
  \barNumberCheck 25
  gs4. e8  d f!16 e  d8 c |
  b8 c d b  e4. f8~
  f8 d e d  c r r4 |
  r8 a'16 gs  a8 b  c c16 b  c8 d |
  e16 d c d  e8 f  gs,8 e r a |
  b16 c a b  c d b c  d8 c b e |
  a,2~  a8 g16 fs  g8 a |
  b8 e4 ds8  e r r4 |
  
  \barNumberCheck 33
  s1 * 3 |
  s2 r8 a,16 gs  a8 b |
  c8 c16 b  c8 d  e16 d c d  e8 f |
  gs,8-. e-. r a  b16 c a b  c d b c |
  d8 c b e  a,4. g!8~ |
  g8 f16 e f4~  f8 e16 d e4~ |
  
  \barNumberCheck 41
  e4 d~  d16 c d e  f g a b |
  c2.~ c16 e d c |
  b8 e16 d  c b a b  c2~ |
  c8 g4 d'8~  d[ e d c] |
  g4 r  r r8 g |
  a16 b g a  b c a b  c8 b a d |
  g,4. c8  d16 f, g a  b c d b |
  g4 r r2 |
  
  \barNumberCheck 49
  r8 a16 bf  a8 g  f f16 g  f8 e |
  d16-> e f e  d8 c  b'-> d r a |
  g16 f a g  f e g f  e8 f g d |
  a'16 b a b  b8.\trill a32 b  c2~ |
  c8 fs, g a  b d, e fs |
  g4. a8 b2~ |
  b8 e, fs g  a d, e d16 e |
  fs16 g e fs  g a fs g  a8 b16 c  b c a b |
  
  \barNumberCheck 57
  c8 d16 e  d8 c  b gs a b |
  a8 e fs gs  a4 r8 e |
  f8 g! a bf  a gs16 fs  e8 a |
  f!8 e4 f16 ds  e2~ |
  e1~ |
  e8 r r4  r8 e16 f e8 d |
  cs8 cs16 d  cs8 bf  a4 d8\rest f'16 e |
  d4. cs8  d a r4 |
  
  \barNumberCheck 65
  r8 a16 gs a8 b!  c c16 b  c8 d |
  e16( d c d  e8-.) f-.  gs,-> e-> r a |
  b16 c a b  c d b cs  d8 c b e |
  a,4 r  r8 a16 bf  c8 bf |
  a8 \clef treble d16 e  \tieDown f g a8~  a g4 f8~ |
  \oneVoice \tieNeutral f8 e d4~  d16 cs e d  cs b d cs |
  d4~  d16 b cs e  f4~  f16 d e g |
  a4~  a16 f g bf  e,8 f \moveClefA \clef bass \voiceThree bf,4 |
  
  \barNumberCheck 73
  c2~  c8 c, d e |
  f8 e f g  a16 g fs g  a bf c8 |
  fs,8 a g fs  g f ef d~ |
  d8 g16 a  g8 f!  e! e16 f  e8 d |
  cs16 d e d  cs8 b!  a' cs r a' |
  bf8. a16  g f e d  cs4 r8 cs |
  d8 f d a  bf f bf d |
  <b! e>4 s  <a c> s |
  
  \barNumberCheck 81
  q4 s <b d> s |
  \voiceUp r8 b16 c  d e fs gs  \voiceDown a,4 s8 b |
  <c e>8 <d! f> <c e> <b d>  <a cs>  a16 bf  a8 g! |
  f8 f16 g  f8 e  d16 e f e  d8 cs |
  <<
    { 
      \voiceFour d8[ f] e d  g4 d8\rest f |
      e4 d8\rest d  b'!2 |
      a1 |
    }
    \\
    { 
      \voiceThree \forceHShiftB d8 a16 b  cs8 d  e4 r8 d |
      \forceHShiftC g4 r8 f16 e  d4 r8 d16 e |
      f8 <cs e>16 <b d>  <cs e>8 <d f>  e2\fermata
    }
  >> 
}

leftHandLower = \relative {
  \beamQuarterNotes.44
  r8 a16( gs  a8-.) b-.  c-. c16( b  c8-.) d-. |
  e16( d c d  e8-.) f-.  gs,-. e-. r8 a( |
  b16c a b  c d b c  d8 c b e) |
  a,4( g!8 fs  e[ c' b a]) |
  g16( fs e fs  g8 a)  b16( a g a  b8) c~ |
  c8 b16 a  b8 e~  e d!16 cs  d4~ |
  d8 c!16 b c4~  c16a' g! f!  e d c b |
  r8 a,16( gs  a8-.) b-.  c8-. c16( b  c8-.) d-. |
  
  \barNumberCheck 9
  e16( d c d  e8-.) f!  gs,-. e-. r a |
  b16 c a b  cs d b cs  d8 c b e |
  % third eighth, cs, SrcB, SrcC
  \voiceTwo a,8 b cs ds  e e16 ds  e8 fs |
  g4 r8 a  b b,16 a  g8 e |
  a4 b  c8 b  a b16 a |
  g8 a b4  e8 d! c b |
  a8[ b' a g!]  fs[ g fs e] |
  d8 e d c!  b g'4 fs8 |
  
  \barNumberCheck 17
  g16 e d c  b8 e  c a d d, |
  g8 r r4  r2 |
  s1 * 2 |
  r8 a'16 bf  a8 g  f8 f16 g  f8 e |
  d16( e f e  d8-.) c!-.  \oneVoice b'!-. d-. r a |
  g16 f a g  f e g f  e8 f  g16 e d c |
  f16 e d c  d e f d  \voiceTwo b!4 c8 d~ |
  
  \barNumberCheck 25
  d8 e d c  b d16 c  b8 a |
  gs8 a b gs  a[ b c f] |
  d8 b e e,  a a' c, e |
  a,8 f' e d  c a' g f |
  e8 a16 g!  f e d c  b8 c'16 b  a g f e |
  d8 r e r  f( e d e) |
  c8 b c a  b4. a8 |
  g8 e'16 ds  e8 fs  g g16 fs  g8 a |
  
  \barNumberCheck 33
  \oneVoice b16 a g a  b8 c  ds,-. b-. r e |
  fs16 g e fs  g a fs g  a8 g fs b |
  e,8 e16 ds  e8 fs  g2~ |
  g8 fs16 e  fs8 gs  \voiceTwo a r r4 |
  r8 a g! f!  e4 r |
  r8 a,16 b  c8 d~  d c16 d  e8 f~ |
  f8 e16 d  e8 c  f8 e16 d  e f e d |
  cs8 a d c  b g c b |
  
  \barNumberCheck 41
  a8 b16 c  b8 g  c4 r8 b |
  a4 r8 g  f16 g' f e  d c b a |
  g8 g' a f  c' c,16 b  c8 d |
  e8 e16 d  e8 fs  g16 f e f  g8 a |
  b,8-.\sf g-. r c  d16 e c d  e f d e |
  f8 e d g  c, d16 e  f4~ |
  f4 e8 a  d, e16 f  g8 g, |
  c4 r8 e  a,16 bf' a g!  f e d cs |
  
  \barNumberCheck 49
  d2~ d4. e8 |
  f2-\tieShapeC ~  f16 g f e  d4~ |
  d8 c4 b8  c d g,4~ |
  g8 a' g f  e d c e |
  d8 d16 e  d8 c  b b16 c  b8 a |
  g16 a b a  g8 fs  e' g r d! |
  c16 b d c  b a c b  a8 b c g |
  d'4 e fs gs |
  
  \barNumberCheck 57
  a4 b8 a  gs e fs gs |
  a8 c, d e  f4  r8 cs |
  d8 e f cs  d4 a4~ |
  a8 gs a4 e2~ |
  e1~ |
  e8 e'16 f  e8 d  cs cs16 d  cs8 b |
  a16 b cs b  a8 g  f4 s8 f' |
  bf8 g a4  d,8 d16 cs  d8 e |
  
  \barNumberCheck 65
  f8 f16 e  fs8 gs  a16 gs fs gs  a8 b |
  c,8-. a-. r d  e16( f d e  f! g! e fs) |
  g8 f! e a  d, a'~  a16 gs a gs |
  a4~  a16 g! f! e  f4~  f16 e d cs |
  d8 r r4  r2 |
  s1 * 3 |
  
  \barNumberCheck 73
  r8 c16 d  c8 bf  a8 a16 bf  a8 g |
  f16 g a g  f8 ef  d'-. fs-. r c |
  bf16 a c bf  a g bf a  g4. fs8 |
  g1~ |
  g2~  g8 e'16 f  g f e d |
  cs8 r r4  r8 e'[ cs a] |
  d,8 r r4  d8 r r4 |
  d4\fermata d\rest ds d\rest |
  
  \barNumberCheck 81
  e4 d\rest e d\rest |
  r2 fs4 d8\rest gs |
  a8 d,! e4  a,2~ |
  a1~ |
  \forceHShiftA a1-\tieShapeE ~ |
  \forceHShiftD a1~ |
  a1\fermata |
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
  s8 s\p s2. |
  s2-\tweak Y-offset 1.5 \cresc s4.\f s8\p |
  s1 * 2 |
  s2\cresc s4.\f s8\p |
  s1 * 2 |
  s8 s4.-\tweak Y-offset -1 \cresc s2 |
  
  \barNumberCheck 9
  s2 s4.\f s8\p |
  s1\cresc |
  s1\f |
  s2 s8-\tweak Y-offset -1.5 \sf \tag layout { s4. } \tag midi { s4.\f } |
  s1 |
  s2 s8 s4.\dim |
  s2 s8 s4.\cresc |
  s4.-\tweak Y-offset 1 \f s8\p s2 |
  
  \barNumberCheck 17
  s1 * 2 |
  s2.\cresc s4\p |
  s1 |
  s4 s2.\cresc |
  s2. s4\p |
  s1 |
  s1\cresc |
  
  \barNumberCheck 25
  s2 s4.\f s8\p |
  s1 |
  s2. s4\cresc |
  s1 |
  s4-\tweak Y-offset 1 \f s-\tweak Y-offset 1 \p s\f s\p |
  s2 s8 s4.-\tweak Y-offset 1 \cresc |
  s1 * 2 |
  
  \barNumberCheck 33
  s1\f |
  s1 |
  s2 s8\sf \tag layout { s4. } \tag midi { s4.\f } |
  s8\sf \tag layout { s4. } \tag midi { s4.\f } s2 |
  s1 |
  s8\sf \tag layout { s4. } \tag midi { s4.\f } s2 |
  s2 s8 s4.\dim |
  \tag layout { s1^\pDolce\! } \tag midi { s1\p } |
  
  \barNumberCheck 41
  s2 s\cresc |
  s1 |
  s2-\moveDynamicA \f s8\sf \tag layout { s4. } \tag midi { s4.\f } |
  s1 * 4 |
  s8 s4.\dim s2 |
  
  \barNumberCheck 49
  s1\p |
  s1 |
  s2 s\cresc |
  s2 s8\sf \tag layout { s4. } \tag midi { s4.\f } |
  s2\p s8 s4.\cresc |
  s2 s8-\tweak Y-offset -2 \sf \tag layout { s4. } \tag midi { s4.\f } |
  s2\f s\dim |
  s2\p s\cresc |
  
  \barNumberCheck 57
  s8\sf \tag layout { s4. } \tag midi { s4.\f } s2 |
  s1 |
  s2-\tweak Y-offset -2 \f s4.\fz s8\dim |
  s2 \tag layout { s^\pDolce\! } \tag midi { s\p } |
  s4. s8-\tweak Y-offset -2 \cresc s2 |
  s16 s-\tweak Y-offset -1 \dim s4. s2\p |
  s8 s4\< s16 s\! s4\> s\! |
  s2 s\p |
  
  \barNumberCheck 65
  s1 * 2 |
  s2 s8 s4.-\tweak Y-offset 2 \cresc |
  s1 |
  s2\f s8\sf s\sf \tag layout { s4 } \tag midi { s4\f } |
  s4 s2.\dim |
  s4\p s2.\cresc |
  s4 s2.-\tweak Y-offset 1 \dim |
  
  \barNumberCheck 73
  s2.\p s4\cresc |
  s2 s\f |
  s8\sf s\sf \tag layout { s2. } \tag midi { s2.\f } |
  s1\dim |
  s8 s4.\cresc s2 |
  s1-\tweak X-offset -0.5 -\tweak Y-offset 1 \f |
  s2\fz s-\tweak Y-offset -1 \fz |
  s2-\tweak Y-offset 0 ^\ffz s\ff |
  
  \barNumberCheck 81
  s1 |
  s2 s\fz |
  s2 s8 s4.-\tweak Y-offset 1 \dim |
  s2 s\p |
  s1\cresc |
  s2\fz s^\fzDimERall |
  s2-\tweak Y-offset 0 \fp s-\tweak Y-offset 0.5 \pp |
}

tempi = {
  \tempo "Andante maestoso ma con moto" 4 = 72
  s1 * 79 |
  \set Score.tempoHideNote = ##t
  \tempo 4 = 60
  s4 \tempo 4 = 72 s2. |
  
  \barNumberCheck 81
  s1 * 5 |
  s2 \tempo 4 = 69 s4 \tempo 4 = 66 s |
  s8 \tempo "Adagio" 4 = 63 s \tempo 4 = 60 s \tempo 4 = 58 s 
    \tempo 4 = 56 s2 |
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
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 4
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
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

fugueTwentyNotes =
\score {
  \header {
    title = "Fugue 20"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
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

fugueTwentyMidi =
\book {
  \bookOutputName "fugue-20-bwv-865"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

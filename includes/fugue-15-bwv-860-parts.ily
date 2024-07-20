%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveRestA = \once \override Rest.X-offset = 1

%%% Music %%%

global = {
  \time 6/8
  \key g \major
}

rightHandUpper = \relative {
  g'8-. a16( g fs g  a8-) b16( a g a |
  b8-.) a-. g-.  d-. c'4->( |
  b8-.) a-. g-.  fs-. e'4->( |
  d8-.) e16( d c b)  a8-.  c16( b a g) |
  \voiceOne fs8-. g-. a-.  g-. a-. b-. |
  a8 b16 cs d b  cs b cs d e cs |
  d16 cs d e fs d  e d e fs g e |
  fs8 g16 fs e d  g4.~ |
  
  \barNumberCheck 9
  g16 fs e g d g  cs, g' b, g' a, g' |
  fs8-. d-. e-.  fs-. g-. a~ |
  a8 d, g~  g fs e |
  d8 c b  a4 r8 |
  r4 d8~  d c a'~ |
  a8 g4~  g8 a16 g fs e |
  d2.~ |
  d8 d c  b a g |
  
  \barNumberCheck 17
  c16 d e4~  e16 d c b a c |
  b16 c d4~  d16 c b a g b |
  a16 b c4~  c16 b a g fs a |
  g16 a b4~  b8 e, a~ |
  a16 g a8[ b]  c16 d c b a g |
  \oneVoice fs!8.\prall e32 fs g8~  g16 b a g fs e |
  d8 r r r4 r8 |
  \voiceOne a'8 g16 a b a  g8 fs16 g a g |
  
  \barNumberCheck 25
  \oneVoice fs8-. g-. a-.  d-. e,4->( |
  fs8-.) g-. a-.  b-. cs,4->( |
  d8) d16 e fs g  a8 fs16 g a b |
  \voiceOne c4 b8 a4. |
  g16 g' fs e d fs  e fs e d c e |
  d e d c b d  c d c b a c |
  b16 a g b fs b  e, b' d, b' cs, b' |
  a16 g fs a e a  d, a' cs, a' b, a' |
  
  \barNumberCheck 33
  g16 fs e g d g  cs, g' b, g' a, g' |
  \oneVoice fs16 d' c! b a g  fs e d c b a |
  g16 a b g c g  d' g, e' g, f' g, |
  e'16 c' b d a d  gs, d' fs,! d' e, d' |
  c16 a b cs ds e  fs g a b c! ds, |
  e8-. fs16( e ds e)  fs8-. g16( fs e fs) |
  g8-. fs-. e-.  b-. a'4->( |
  \voiceOne g8-.) fs-. e-.  ds-. c'4->( |
  
  \barNumberCheck 41
  b8) c16( b a g  fs8-.) a16( g fs e |
  ds8-.) a'-. g-.  fs-. e-. ds-. |
  e8-. d!-. c-.  d-. c-. b-. |
  c16 c' b a g b  a b a g fs a |
  g16 a g fs e g  fs g fs e ds fs |
  e8 fs16 g a8~  a g16 a b8~ |
  b8 a g  fs16 g a8 ds, |
  e4 b8  a4.~ |
  
  \barNumberCheck 49
  a4 a8 g4.~ |
  \oneVoice g4 g8 fs4.~ |
  fs16 b cs b as b  cs8 d16 cs b cs |
  d8-. cs-. b-.  as-. g'4->( |
  fs8-.) g16( fs e d  cs8-.) e16 d cs b |
  as16 b cs as d as  e' as, fs' as, g' as, |
  fs'16 as, b fs'  e32[ d cs e]  e16 gs, as e'  d32[ cs b cs] |
  \voiceOne d2.~ |
  
  \barNumberCheck 57
  d2.~ |
  d16 fs,32 gs a16 e b' e,  cs' e, d' fs, e' g, |
  \oneVoice fs16 g32 a b16 fs cs' fs,  d' fs, e' g, fs' a, |
  g16 fs g b e g,  fs b a cs d8~ |
  d8 cs4  d8-. e16( d cs d |
  e8-.) fs16( e d e  fs8-.) g16( fs e d) |
  cs8-. b'4~  b16 a b a g fs |
  e2.~\trill |
  
  \barNumberCheck 65
  e16 a32 g fs16 a e a  d, a' cs, a' b, a' |
  g16 fs e g d g  cs, g' b, g' a, g' |
  fs16 e d fs cs fs  b, fs' a, fs' g, fs' |
  e16 d cs e b e  a, e' g, e' fs, e' |
  d16 fs, e g d' cs  d4.~ |
  \voiceOne d2.~ |
  d8 c4~  c8 b4~ |
  b8 \oneVoice a4~  a16 g a g fs! g |
  
  \barNumberCheck 73
  fs16 d32 e fs16 d g d  a' d, b' d, c' d, |
  \oneVoice b'16 g' f e d c  b a g f e d |
  c16 e' d c b a  gs fs e d c b |
  a16 b cs a d a  e' a, fs'! a, g'! a, |
  \voiceOne fs'8 b g  e a fs |
  g4.~  g16[ a] a8.\trill g32 a |
  b8-. c16( b a b)  c8-. d16( c b c) |
  d8-. c-. b-.  a-. g'4-> |
  
  \barNumberCheck 81
  fs8-. e-. d-.  cs-. bf'4-> |
  a16 g fs e d8  r16 g8 c,16 g' fs |
  g16 fs32 e d16 g c, g'  b,8 g' a, |
  b16 d32 c b16 d a d  g,8 c4~ |
  c32 g a b c16 g d' g,  e'32 b c d e16 c fs! c |
  g'4~ g16 fs  g4. |
  \bar "|."
}

rightHandLower = \relative {
  s2. * 4 |
  \voiceFour d'8 e16( d cs d  e8) fs16( e d e |
  fs8-.) e-. d-.  a-. g'4->( |
  fs8-.) e-. d-.  cs-. b'4->( |
  a8-.) b16( a g fs)  e8-. g16( fs e d) |
  
  \barNumberCheck 9
  cs8-. g'-. fs-.  e-. d-. cs-. |
  d16 e fs d g d  a' d, b' d, c'! d, |
  b'4. c~ |
  c8 fs, g~  g fs16 g a fs |
  g16 fs g a b g  a g a b c a |
  b8 c16 b a g  c4.->~ |
  c16 b a c g c  fs, c' e, c' d, c' |
  b8 f e  d c b |
  
  \barNumberCheck 17
  r4 g'8  fs!4.~ |
  fs4 fs8  e4.~ |
  e4 e8  d4.~ |
  d8 c16 d e d  c8 b16 c d c |
  b8-. c-. d-.  g-. \voiceDown a,4( |
  b8-.) c-. d-.  e-. fs,4->( |
  g8-.) g16( a b cs  d8) b16 cs d e |
  \voiceUp fs8-. e-. ds-.  e-. d-. cs-. |
  
  \barNumberCheck 25
  \voiceDown d8 cs16 b a c  b c b a g b |
  a16 b a g fs a  g a g fs e g |
  fs16 g fs e d e  fs g a b c! d |
  fs,8 \voiceUp a' g~  g g fs |
  g8 r r r4 r8 |
  R2. |
  r4 d8 cs r r |
  r4 cs8 b r r |
  
  \barNumberCheck 33
  r4 b8 a r r |
  s2. * 6 |
  e'16 ds e fs g e  fs e fs g a fs |
  
  \barNumberCheck 41
  g8 a16 g fs e  a4.~ |
  a16 g fs a e a  ds, a' cs, a' b, a' |
  g8 fs16( g a g)  fs8 e16( fs g fs) |
  e8-. fs-. g-.  c-. ds,4->( |
  e8-.) fs-. g-.  a-. b,4-> |
  c16 b a b c d  e ds e fs g a |
  b4.~  b8 c fs, |
  e16 fs g4->~  g16 fs e ds cs e |
  
  \barNumberCheck 49
  d16 e fs4->~  fs16 e d cs b d |
  \voiceDown cs16 d e4->~  e16 d cs b as cs |
  b8 r r s4. |
  s2. * 4 |
  \voiceUp b16 cs d b e b  fs' b, gs' b, a'! b, |
  
  \barNumberCheck 57
  gs'8 e fs  gs a b |
  e,8. d16 cs b  \voiceDown a b a g! fs e |
  d8 r r r4 r8 |
  r4 r8  d e16 d cs d |
  e8 fs16( e d e  fs8-.) e-. d-. |
  cs8-. b'4->  a8 b16 a g fs |
  e8 g16 fs e d  cs4 d8~ |
  d16 g32 fs e16 g d g  cs,g' b, g' a, g'|
  
  \barNumberCheck 65
  fs16 g a4~  a16 g fs e d fs |
  e16 fs g4~  g16 fs e d cs e |
  d16 e fs4~  fs16 b, cs d e fs |
  g16 a g fs e d  cs8 r r |
  s2. |
  \voiceUp r4 r8  r16 g'' f e d f |
  e16 f e d c e  d e d c b d |
  \voiceDown c16 d c b a c  b4. |
  
  \barNumberCheck 73
  a8 \voiceUp r r r4 r8 |
  s2. * 3 |
  d8 c!16 d e d  c8 b16 c d c |
  \voiceDown b8 c b  e fs,4 |
  g8-. \voiceUp a'16( g fs g)  a8-. b16( a g a) |
  b8-. a-. g~  g d' cs |
  
  \barNumberCheck 81
  d8 g, fs  e cs'4 |
  c!4~ c16 b32 a  b8 a4 |
  b8 b a  g4 fs8 |
  g8 g f  e4 ef8 |
  d8[ e! <f b>8*1/2] \hideNoteHead g16~  <g c>8 g a |
  << 
    { \voiceFour b4 <a c>8  <b d>4. | } 
    \new Voice { 
      \voiceTwo \moveRestA e16\rest d[ e c]_~ \hideNoteHead c8 s4. | 
    } 
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

leftHand = \relative {
  \global
  \clef bass
  R2. * 8 |
  
  \barNumberCheck 9
  R2. * 2 |
  g8-. a16( g fs g  a8-.) b16( a g a |
  b8-.) a-. g-.  d-. c'4->( |
  b8-.) a-. g-.  fs-. e'4->( |
  d8) e16 d c b  a8 c16 b a g |
  fs4( e8  d16 e d c b a) |
  g16 a b g c g  d' g, e' g, f' g, |
  
  \barNumberCheck 17
  e'16 d c e b e  a, e' g, e' fs, e' |
  d16 c b d a d  g, d' fs, d' e, d' |
  c16 b a c g c  fs, c' e, c' d, c' |
  b8-. a-. g-.  a-. g-. fs-. |
  g16 g' f e d f  \voiceTwo e f e d c e |
  d16 e d c b d  c d c b a c |
  b16 c b a g a  b cs d e fs g |
  \oneVoice fs8 b b,  e a a, |
  
  \barNumberCheck 25
  \voiceTwo d8 e fs~  fs g cs, |
  d8 r r r4 r8 |
  R2. |
  d8 c16 d e d  \oneVoice c8 b16 c d c |
  b8-. c-. d-.  g-. a,4->( |
  b8-.) c-. d-.  e-. fs,4->( |
  g16) a b4->~  b16 a g fs e g |
  fs16 g a4~  a16 g fs e d fs |
  
  \barNumberCheck 33
  e16 fs g4~  g16 fs e d cs e |
  \oneVoice d16 e fs d g d  a' d, b' d, c'! d, |
  b'16 g' f e d c  b a g f e d |
  c16 d e fs! gs a  b c d e fs gs |
  a16 g! fs a e a  ds, a' cs, a' b, a' |
  g8-. c!-. b-.  a-. b-. b,-. |
  e16 fs g e a e  b' e, cs' e, ds' e, |
  e8 r r r4 r8 |
  
  \barNumberCheck 41
  R2. * 6 |
  r16 b32 cs ds16 b e b  fs' b, g' b, a' b, |
  g'16 fs e g d! g  cs, g' b, g' a, g' |
  
  \barNumberCheck 49
  fs16 e d fs cs fs  b, fs' a, fs' g, fs' |
  \voiceTwo e16 d cs e b e  as, e' gs, e' fs, e' |
  d16 fs e d cs b  \oneVoice as cs b as gs fs |
  b8 cs16( b as b  cs8-.) d16( cs b cs |
  d8-.) cs-. b-.  as-. g'4-> |
  fs16 gs as fs b fs  cs' fs, d' fs, e' fs, |
  d'16 fs, g d'  cs32[ b as b]  cs16 e, fs cs'  b32[ as gs as] |
  \oneVoice b8 r r r4 b,8 |
  
  \barNumberCheck 57
  e16 fs gs e a e  b' e, cs' e, d' e, |
  cs'8 r r  \voiceTwo r4 cs,8 |
  \mergeDifferentlyDottedOn
  d8. e16 d cs  b cs b a g fs |
  e8 d' cs  d4 b8 |
  g8 a4  d8 cs b |
  a2.~ |
  a2.~ |
  a4.~ a4 r8 |
  
  \barNumberCheck 65
  r8 r16 e' d cs  b4 r8 |
  r8 r16 d cs b  a4 r8 |
  r8 r16 cs b a  g8 r r |
  r4 r8  r16 a b cs d e |
  \oneVoice fs16( g) a8-. a,-.  d-. c!16( d e d) |
  c8-. b16( c d c)  b8-. c-. d-. |
  g8-. a,4->  b8-. c-. d-. |
  \voiceTwo e8-. fs,4->  g8 fs16 g a b |
  
  \barNumberCheck 73
  c,8 c''16 b a g  \oneVoice fs e d c b a |
  g16 a b g c g  d' g, e' g, f' g, |
  e'16 e,32 fs! gs16 e a e  b' e, c' e, d' e, |
  cs'16 a' g! fs e d  cs b a g fs e |
  d2._~ |
  \voiceTwo d16 d' c d e d  c8 b16 c d c |
  b8-. a16( b c b)  \oneVoice a8-. g16( a b a) |
  g16 g'32 fs e16 g d g  cs, a' b, a' a, a' |
  
  \barNumberCheck 81
  d,16 c! bf d a d  g, e' fs, e' e, e' |
  fs,8 d g  e c d |
  <\snh g, g'>4.~  g'16 g32 a b16 g c g_~ |
  << 
    { \voiceTwo g8 g4~  g4.~ | g2.~ | g2. | } 
    \new Voice {  
      \voiceThree d'8 g, b  c32 b c d e16 c fs! c | g'2.~ | g2. |
    } 
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 2 |
  s2.\cresc |
  s2. * 5 |
  
  \barNumberCheck 17
  s2.\f |
  s2. |
  s2.\dim |
  s2. * 4 |
  s2.\cresc |
  
  \barNumberCheck 25
  s2. * 3 |
  s2.\f |
  s2. * 4 |
  
  \barNumberCheck 33
  s2. |
  s16\sf \tag layout { s } \tag midi { s\f } s4 s4. |
  s16-\tweak Y-offset -1 \sf \tag layout { s } \tag midi { s\f } s4 s4. |
  s16\sf \tag layout { s } \tag midi { s\f } s4 s4. |
  s2.\ff |
  s4.\sf s\sf |
  s4\fp s2^\dolce |
  s2. |
  
  \barNumberCheck 41
  s2. * 4 |
  s4. s8. s\cresc |
  s2. |
  s2.\f |
  s2. |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 2 |
  s2.\cresc |
  s4. s\f |
  s2. * 2 |
  s8 s16-\tweak Y-offset 1 \sf \tag layout { s } \tag midi { s\f } s8 s4. |
  s2. |
  
  \barNumberCheck 65
  s8\< s4\! s4. |
  s8\< s4\! s4. |
  s8\< s4\! s4. |
  s2. |
  s4.\dim s\p |
  s2.^\dolce |
  s2. * 2 |
  
  \barNumberCheck 73
  s4. s\cresc |
  s2. |
  s2.\f |
  s2.-\tweak Y-offset 0.5 \fz |
  s2.\fz |
  s2. |
  s2.-\tweak Y-offset 3 \sf |
  s2 s4\sf |
  
  \barNumberCheck 81
  s2 s4-\tweak Y-offset 1 \sf |
  s2. |
  s8\sf \tag layout { s4^\dimERall } \tag midi { s4\dim } s4. |
  s2. |
  s2.\p |
  \tag layout { s2.^\ppRit } \tag midi { s2.\pp } |
}

tempi = {
  \tempo "Allegretto vivace" 4. = 80
  s2. * 82 |
  \set Score.tempoHideNote = ##t
  s4. \tempo 4. = 76 s |
  \tempo 4. = 72
  s4. \tempo 4. = 69 s |
  \tempo 4. = 66
  s4. \tempo 4. = 63 s |
  \tempo 4. = 60
  s4. \tempo 4. = 50 s |
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
}

fugueFifteenNotes =
\score {
  \header {
    title = "Fugue 15"
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

fugueFifteenMidi =
\book {
  \bookOutputName "fugue-15-bwv-860"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

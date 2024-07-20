%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Shape and Positions %%%

moveRestA = \tweak MultiMeasureRest.Y-offset 2 \etc

%%% Music %%%

global = {
  \time 9/8
  \key a \major
}

rightHandUpper = \relative {
  \voiceOne a'8\ff-. r r  r gs(\p cs  a d b) |
  e8^\p cs fs  e a d,~  d cs ds |
  gs8 e a  gs4 fs8  b, e d!~ |
  d8 cs ds  e b e~  e fs4 |
  gs4 a8  gs4 fs8  gs a4~ |
  a8 gs b  e,4 ds8  e4.~ |
  e8 d! cs  d4 cs8  b4.~ |
  b8 a cs  fs,4.~  fs16[ gs] gs8.\trill fs32 gs |
  
  \barNumberCheck 9
  a8^\ff r r  r gs(^\p cs  a d b) |
  e8 cs fs  e a d,~  d cs ds |
  e4.~  e8 d! g  cs, fs d |
  b4.~  b8 a d  gs, cs b |
  a4.~  a8 gs fs  d'4.~ |
  d8 cs fs~  fs e d  cs4.~ |
  cs8 b as  b4 cs8  fs, b as |
  b8 d4~  d8 cs fs~  fs e a~ |
  
  \barNumberCheck 17
  a8 gs16 fs gs8~  gs fs e~  e ds fs |
  b,4.~  b4 a8~  a8 gs4~ |
  gs8 fs a  ds, b' gs  cs fs,4 |
  e8 e' b  cs fs cs  d!4.~ |
  d8 b e  cs fs d  gs e a |
  fs4 b8  e, a4~  a8 gs4 |
  a8 r r \oneVoice gs,16 a b gs fs e  fs e fs a gs fs |
  gs16 b a gs a b  cs b cs d e fs  gs b a gs fs a |
  
  \barNumberCheck 25
  gs16 a b fs e d!  cs8 r r  r \voiceOne cs a |
  d b e  cs fs e  a fs4\trill |
  e16 fs gs e gs a  b8 r r  r4 r8 |
  \moveRestA R1*9/8 |
  r8 b16 a gs fs  e fs gs e d! cs  d cs d fs e d |
  cs8 a d  cs a' d,  b e cs |
  d8 r r  r e, a  fs b cs~ |
  cs8 d g~  g fs e  a, d cs |
  
  \barNumberCheck 33
  d8 fs16\p e d cs  b8 e4~  e8 d4~ |
  d8 cs4  r16 b as b cs d  e d e fs g e |
  as16 fs b a g fs  e d cs b as b  g' fs e d cs b |
  b8 d4~  d8 b e  cs fs ds |
  b4.~  b8 gs cs  a4.~ |
  a8 b4~  b8 a es  fs4.~ |
  fs8 ds gs  es16 cs ds es fs gs  \oneVoice a fs gs a b cs |
  d!16 b cs ds es fs  d e d cs b a  gs b a gs fs es |
  
  \barNumberCheck 41
  \voiceOne b'4.~  b16 a b gs a8~  a16[ b] gs8.\trill fs16 |
  fs8-. cs( fs  e!4 a8  fs b gs) |
  cs8 a d~  d cs b  e, a4~ |
  a8 gs b  e, a4  gs8 cs a |
  d4.  cs8 fs4~  fs8 e d~ |
  d8 cs4~  cs8 b a~  a gs b |
  e4.~  e4 d8~  d cs4~ |
  cs8 b d  gs, e' cs  fs b,4 |
  
  \barNumberCheck 49
  a8 e'16 d cs b  a b cs a g fs  g fs g b a g |
  fs8( d a'  gs! e' a,  fs' b, gs' |
  a8) e4~  e8 d fs  b,4.~ |
  b8 a g  fs4.  b8 e, a |
  d,4.~  d8 cs a'~  a a gs |
  a2.\fermata 
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour R1*9/8 |
  e'8-.\ff r r  r cs(\p fs  e a fs) |
  b8 gs cs  b e a,~  a gs b |
  e,8 a fs  gs4.  cs8 a d |
  b8 e d~  d cs4  b8 e fs |
  b,8 e d!~  d cs16 b cs a  gs8 e a |
  fs8 b a~  a gs a  d,4.~ |
  d8 cs e  a,4. d~ |
  
  \barNumberCheck 9
  d8 cs\p fs  b, e gs~  gs fs gs~ |
  gs8 a b  cs4.  b4 a8~ |
  a8 gs cs  fs, b4~  b8 a!4 |
  gs4.~  gs8 fs4~  fs8 es gs~ |
  gs8 fs e!  d4 cs8~  cs b b' |
  es,8 fs4  gs8 as b  e,4. |
  d4 g8  fs e4  d cs8 |
  d8 fs b  gs!4 cs8  b e cs |
  
  \barNumberCheck 17
  b4.~  b8 a cs  fs,4.~ |
  fs8 e gs  cs,4.  fs8 b, e |
  cs4.  b4 e8~  e e ds |
  e8 r r  r a e  fs b fs |
  gs4 r8  e a fs  b gs cs |
  a8 d4~  d8 cs fs  b,8. fs'16 e d |
  cs16 d\p e cs b a  s2. |
  s2. s4. |
  
  \barNumberCheck 25
  \voiceDown e8-. r r  r cs fs  e \voiceUp a fs |
  b gs cs  a d cs  fs ds4 |
  e8 r r  r ds, gs  e a fs |
  b8 gs cs  b e a,~  a gs a |
  gs8 r r  r4 r8  r4 r8 |
  R1*9/8 |
  r8 a, d~  d cs fs  d g e |
  a8 fs b  a d g,~  g fs e |
  
  \barNumberCheck 33
  fs8 r r  r16 d' cs b as gs!  fs cs' b a g fs |
  e16 b' as gs! fs e  d8 e4  fs8 b4 |
  cs8 fs,4  g8 e fs  b, as4 |
  r8 fs' b  gs4.~  gs8 cs a~ |
  a8 gs ds  e4.~  e8 cs fs |
  ds8 gs es  cs4.~  cs8 a d |
  b4.~  b8 a b  \voiceDown es, r r |
  s2. s4. |
  
  \barNumberCheck 41
  \voiceUp r8 gs' ds  es cs fs~  fs es4 | |
  fs8 r r  r gs, cs  a d b |
  e8 cs fs  e a d,~  d cs ds |
  e8 b\p d!~  d cs ds  e4 fs8~ |
  fs8 b e,~  e d! cs  b gs' b |
  e,4.~  e8 d fs  b,4.~ |
  b8 a cs  fs4.  b8 e, a |
  fs4.  e4 a8~  a8 a gs |
  
  \barNumberCheck 49
  a8 r r  r4 r8  r4 r8 |
  R1*9/8 |
  r8 cs4~  cs8 b a~  a gs e |
  cs8 d e~  e a, d~  d cs4~ |
  cs8 b d  \voiceDown gs, e' cs  \voiceUp fs b,4 |
  cs2. 
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
  R1*9/8 * 3 |
  a8\ff-. r r  r gs(\p cs  a d b) |
  e8 cs fs  e a d,~  d b ds |
  e,8-.\ff r r  r cs(\p fs  e a fs) |
  b8 gs cs  b e a,~  a gs b |
  cs,4.~  cs8 a d  b e e, |
  
  \barNumberCheck 9
  a8 a'4~  a8 gs e  fs b, e |
  cs8 fs d  a' fs b  e, a fs |
  cs'4 b8  as b e, fs4.~ |
  fs8 es gs  a,!4 b8  cs4 cs,8 |
  fs8-.\ff r r  r es'\p a  fs b gs |
  cs8 a d  cs fs b,~  b gs as |
  b8 b, e  d g e  fs4 fs,8 |
  b8-.\ff r r  r e\p a  gs! cs a |
  
  \barNumberCheck 17
  ds8 b e  a,4.~  a8 b fs |
  gs4.~  gs8 cs, fs  ds e4 |
  a,4.~  a8 gs cs  a b4 |
  e,8 r r  r4 r8  r4 r8 |
  R1*9/8 * 2 |
  a8-.\ff r r  r gs(\p cs  a d b) |
  e8 cs fs  e a d,~  d cs ds |
  
  \barNumberCheck 25
  e8 fs gs  a r r  r a, d |
  b8 e cs  fs d a'  fs b16 a gs fs |
  gs16 a b gs fs e  ds e fs ds cs b  cs b cs e ds cs |
  ds16 fs e ds e fs  gs fs gs a b cs  ds fs e ds cs b |
  e8 e, a  gs e' a,  fs' b, gs' |
  a16 fs e d cs b  a b cs a g fs  g fs g b a g |
  fs16 g a fs e d  a'8. fs16 g a  b a g b a g |
  fs16 e d fs e d  cs a b cs d e  fs g a fs g a |
  
  \barNumberCheck 33
  d,8-.\ff r r  r cs\p fs  d g e |
  as8 fs b  gs! cs as  d b e~ |
  e8 d cs  b g d  e fs fs, |
  b16 fs' b a! gs! fs  e fs e d cs b  a b a gs fs e |
  ds16 b' e ds cs b  cs gs' cs b a gs  fs gs fs e ds cs |
  b16 cs b a gs fs  es cs' fs e! d! cs  d e d cs b a |
  gs16 a gs fs es ds  cs8 a' d!  \voiceTwo cs fs ds |
  \oneVoice gs8 es a  fs b gs  cs a d~ |
  
  \barNumberCheck 41
  d16 e! d cs b a  gs8 es fs  b, cs cs, |
  fs8 a fs  cs'4 a8  d b e |
  cs8 fs d  a' a, b  cs fs b, |
  e8-.\ff r r  r cs(\p fs  e a fs) |
  b8 gs cs  a d! fs,  gs e gs |
  a8 a, cs  d,4 d'8~  d e b |
  cs4.~  cs8 fs, b  gs a4 |
  d,8 d'4~  d8 cs fs  d e e, |
  
  \barNumberCheck 49
  a8 a( d  cs a' d,  b' e, cs') |
  d16 cs b a gs! fs  e fs gs e d cs  d cs d fs e d |
  cs16 b a b cs a  d cs d e cs d  e d e fs d e |
  % second 16th, gs, SrcB, SrcC
  fs16 gs fs e d cs  d e d cs b a  gs! b a gs fs e |
  fs16 a gs fs e d  \voiceTwo cs cs' d e fs gs  \oneVoice a[ d,] e8 e, |
  a2._\fermata 
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1*9/8 * 8
  
  \barNumberCheck 9
  s1*9/8 |
  s2.-\tweak Y-offset -1 \cresc s4. |
  s2. s4\> s8\! |
  s2.\p s4. |
  s1*9/8 |
  s4. s2.\cresc |
  s4. s2.-\tweak Y-offset -1 \dim |
  s4. s4 s8\cresc s4. |
  
  \barNumberCheck 17
  s1*9/8 * 2 |
  s2.-\tweak Y-offset -2 \f s4. |
  s8 s1\p |
  s1*9/8 * 3 |
  s4 s8\cresc s2. |
  
  \barNumberCheck 25
  s16-\tweak X-offset -2.5 \ff s-\tweak X-offset 0.5 \p s8 s2 s16 
    s-\tweak Y-offset -1 \cresc s4 |
  s2.\! s4. |
  s16\ff s\p s8 s2 s4. |
  s1*9/8 * 5 |
  
  \barNumberCheck 33
  s2. s4. |
  s8 s-\tweak extra-offset #'(0 . -0.5) \cresc s2 s4. |
  s2.-\tweak Y-offset 1 \f s4. |
  s8 s\p s2 s4. |
  s8 s-\tweak extra-offset #'(0 . -0.5) \cresc s2 s4. |
  s2. s4. |
  s2.-\tweak Y-offset -1.5 \f s4. |
  s2. s4. |
  
  \barNumberCheck 41
  s4. s4.-\tweak Y-offset -1 \dim s8 s4\p |
  s16\ff s\p s8 s2 s4. |
  s1*9/8 * 2 |
  s2.-\tweak Y-offset -1 \cresc s4. |
  s4. s8\sf \tag layout { s4 } \tag midi { s4\mf } s4. |
  s1*9/8 * 2 |
  
  \barNumberCheck 49
  s8 s4-\tweak Y-offset -2 \p s2. |
  s4 s8-\tweak extra-offset #'(0 . -1) \cresc s2. |
  s2.-\tweak Y-offset -2 \f s4. |
  s2. s4. |
  s4.^\pocoRall s s8 s4\ff |
  s2.
}

tempi = {
  \tempo "Allegro moderato" 4. = 69
  s1*9/8 * 52 |
  \set Score.tempoHideNote = ##t
  \tempo 4. = 63
  s4. \tempo 4. = 58 s4. \tempo 4. = 54 s4. |
  \tempo 4. = 40
  s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\pageBreak
  
  % page 2
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\pageBreak
  
  % page 3
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
}

fugueNinteenNotes =
\score {
  \header {
    title = "Fugue 19"
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

fugueNinteenMidi =
\book {
  \bookOutputName "fugue-19-bwv-864"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    % Override the global MIDI contexts so we can have dynamics by Voice
    \midi {
      \context {
        \Staff
        \remove "Dynamic_performer"
      }
      \context {
        \Voice
        \consists "Dynamic_performer"
      }
    }
  }
}

%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeB = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . -1.5) (0 . 0) (0 . 0) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key b \minor
}

rightHandUpper = \relative {
  \repeat volta 2 {
    \voiceOne r2 cs''4 fs~ |
    fs e d2~ |
    d4 cs8 b  as4 b8 cs |
    fs,4 b2 a!4 |
    g2 fs |
    b4 e a, d~ |
    d4 cs  d16 cs b a  d4~ |
    d4 cs b e~ |
    
    \barNumberCheck 9
    e4 d cs fs~ |
    fs4 es fs gs |
    cs,4 fs2 es4 |
    fs4 r e! a~ |
    a4 g! fs b~ |
    b4 as b4. a16 g |
    fs4. g8 d4 cs |
    b8 g'4 fs8~  fs b as b |
    
    \barNumberCheck 17
    as8 b e, d  cs2 |
  }

  \repeat volta 2 {
    a'!2~  a8 fs b a |
    g4 fs g2~ |
    g8 e a g  fs4 e |
    fs2~ fs8 fs gs a |
    b4 a2 g!8 fs |
    es8 cs fs e d2~ |
    d4 cs8 b  a b cs4~ |
    
    \barNumberCheck 25
    cs4 b2 a4~ |
    a4 gs8 fs  es d' cs b |
    a4 gs fs r |
    ds'4 e8 fs  b, c' b a |
    g4 fs e bf'~ |
    bf4 a8 g  fs cs d e |
    a,8 d4 cs8  fs, b!4 a8 |
    d,8 g4 fs8  gs4 as8 b |
    
    \barNumberCheck 33
    cs2~  cs8 b cs d |
    e2~  e8 d e fs |
    g2. fs4~ |
    fs8 a g! fs  g4 gs~ |
    gs8 b a gs  a4 as~ |
    as8 c b as  b4. a8 |
    g2 fs |
    e2 d~ |
    
    \barNumberCheck 41
    d4 cs8 b  as g' fs e |
    d4 cs b2~ |
    b8 b4-> as8  e'2~ |
    e8 e4-> ds8  g2~ |
    g8 fs4-> es8  b' e,16 ds  e8 g |
    d!4 cs  ds8 e as, b |
    g'4\rest r8 as,  b2\fermataOverBarline |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    \voiceFour fs'4 b2 a4 |
    gs4 cs2 b8 a! |
    g!2~ g8 fs e4~ |
    e4 d cs fs~ |
    fs4 e2 d4~ |
    d4 g2 fs4 |
    e2 fs4 r |
    e4 a2 g4 |
    
    \barNumberCheck 9
    fs4  b2 a4 |
    gs4 cs2 b4~ |
    b4 a gs2 |
    a4 d2 cs4 |
    b4 e2 d4 |
    cs4 fs4. b,8 e4~ |
    e8 d16 cs  d8 b  b4 as |
    b4 cs d4. e8~ |
    
    \barNumberCheck 17
    e8 d cs b  as2 |
  }

  \repeat volta 2 {
    r8 cs fs e  ds2 |
    e4 ds  e8 b e d |
    cs2 d4 cs |
    d8 a b cs  d2~ |
    d8 cs fs e!  d cs b4~ |
    b4 a~  a8 a gs fs |
    es8 fs gs2 fs8 e! |
    
    \barNumberCheck 25
    d2 cs |
    b2~  b8 es fs gs |
    cs,8 fs4 es8 fs4 c'~ |
    c4 b8 a  g ds' e fs |
    b,8 e4 ds8  e4 r |
    cs4 d!8 e  a, bf a g |
    fs4 e d cs |
    b4 a b e~ |
    
    \barNumberCheck 33
    e8 g! fs e  d4 g~ |
    g8 b a g  fs4 b~ |
    b8 d cs b  cs e d cs |
    d4 b~  b8 d cs b |
    e4 cs~  cs8 e d cs |
    fs4 d~  d8 e fs4~ |
    fs4 e2 d4~ |
    d4 cs2 b8 a! |
    
    \barNumberCheck 41
    g2~  g8 as b cs |
    fs,8 b4 as8  b e,4-> ds8 |
    g2~  g8 g4-> fs8 |
    b2~  b8 b4-> as8 |
    d2~  d8 c b4~ |
    b4 as  a8 g4 fs8~ |
    % third beat, ds, SrcB, SrcC
    << 
      { fs8 e cs4  <ds fs>2 | } 
      \new Voice { \voiceThree g2 s2 | } 
    >>
  }
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
  \repeat volta 2 {
    b,8-\slurShapeA ( cs d e  fs gs\< a b\! |
    cs8\> b as fs\!  b a g fs) |
    e8-\slurShapeB ( cs d e  fs fs, gs as) |
    b8 cs d e  fs gs a! fs |
    b8 b, cs a  d cs b a |
    g8 fs' e d  cs a' b fs |
    g8 e a a,  d e fs g |
    a,8 b cs d  e fs g a |
    
    \barNumberCheck 9
    b,8 cs d e  fs gs a b |
    cs8 b cs a  d cs d b |
    es,8 cs' d a  b gs cs cs, |
    fs8 e! fs gs  a b cs d |
    e,8 fs g! a  b cs d e |
    fs,8 e fs d  g fs g e |
    as8 fs b e,  fs e fs fs, |
    b4 a! g2\trill |
    
    \barNumberCheck 17
    fs1 |
  }

  \repeat volta 2 {
    fs'8( g a fs  b a g fs |
    e8 g, a b  e, fs g e) |
    a8-\slurShapeC ( g fs e  d fs g a |
    d,8 e' d cs  b a gs fs) |
    es8-\slurShapeD ( fs' gs a  b cs d b |
    cs fs,, gs a  b cs d b) |
    cs8 ds es cs  fs gs a fs |
    
    \barNumberCheck 25
    b8 a gs fs  es cs fs e |
    d8 cs d b  cs b a b |
    cs8 b cs cs,  fs cs' ds e! |
    fs8 a g fs  e fs g a |
    b8 a b b,  e b' cs! d! |
    e8 g, fs e  d e fs g |
    a8 g a a,  b d fs fs, |
    g8 b d4~  d8 d cs b |
    
    \barNumberCheck 33
    as8 fs gs as  b fs' e d |
    cs8 a! b cs  d a' g fs |
    e8 cs d e  as, fs' gs as |
    b8 b, cs d  e fs e d |
    cs8 cs' d e  fs g! fs e |
    d8 d, e fs  g fs e ds |
    e8 d! cs b  as fs' b a! |
    gs8 fs gs as  b b, cs d |
    
    \barNumberCheck 41
    e8 fs g e  fs e d e  |
    fs8( e fs fs,  g4-> fs-> |
    e4-> d!->  cs8) b''( as a |
    gs8 g fs b  e,) e'( d! cs |
    b8 c cs d  es, fs g! e |
    fs8 e fs fs,)  b2~ |
    b1\fermataUnderBarline |
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1^\ppSempreMoltoLegato |
    s1 * 2 |
    s4 s2\< s4\! |
    s8 s4.\> s4 s\! |
    s1 |
    s2 s16 s4..\cresc |
    s1 |
    
    \barNumberCheck 9
    s1 |
    s2.\f s4\> |
    s8 s\! s2.\dim |
    s2\p s8 s4.\cresc |
    s1 |
    s1\f |
    s1\dim |
    s4\p s4-\tweak Y-offset 1 \< s4.-\tweak Y-offset 1 \> s8\! |
    
    \barNumberCheck 17
    s1\pp |
  }

  \repeat volta 2 {
    s1\f |
    s4 s2.\dim |
    s1 |
    s2..\p\< s8\! |
    s2-\tweak Y-offset 1 \> s8 s4.\! |
    s1 |
    s1\cresc |
    
    \barNumberCheck 25
    s2. s4-\tweak Y-offset 0.5 \dim |
    s1 |
    s2-\tweak Y-offset -1 \p s\cresc |
    s1 |
    s4.\> s8\! s2\cresc |
    s4 s2\> s4\! |
    s1\dim |
    s2 s4.\< s8\! |
    
    \barNumberCheck 33
    s2\cresc s4.\< s8\! |
    s2 s4.\< s8\! |
    s1\f |
    s1 |
    s1^\piuF |
    s2-\tweak Y-offset 0.5 \ff s\dim |
    s1 |
    s1\p |
    
    \barNumberCheck 41
    s1 |
    s2 s-\tweak Y-offset -1 \cresc |
    s1 |
    s2 s\f |
    s2 s4.-\tweak Y-offset 1 \> s8\! |
    s2\p s4-\tweak Y-offset -1 \pp s-\tweak Y-offset -2 ^\rall |
    s1 |
  }
}

tempi = {
  \tempo "Andante" 4 = 80
  \repeat volta 2 { 
    s1 |
    \set Score.tempoHideNote = ##t
    s1 * 16 | 
  }
  \repeat volta 2 {
    \tempo 4 = 80
    s1 * 28 |
    s2. \tempo 4 = 72 s4 |
    \tempo 4 = 66
    s4 \tempo 4 = 60 s \tempo 4 = 50 s2 |
  }
  
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
}

preludeTwentyFourNotes =
\score {
  \header {
    title = "Prelude 24"
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

preludeTwentyFourMidi =
\book {
  \bookOutputName "prelude-24-bwv-869"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

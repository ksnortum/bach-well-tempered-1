%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . -1) (0 . 1) (-3 . 1) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -1) (0 . 1) (-3 . 1) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key bf \major
}

rightHand = \relative {
  \global
  \stemUp r32 f' d' f,  r f c' f,  r f d' f,  r a f' a,  r d, bf' d,
    r d a' d,  r d bf' d,  r f d' f, |
  r32 bf, g' bf,  r bf f' bf,  r bf g' bf,  r d bf' d,  r d ef d  r d g d
    r c f c  r a ef' a, |
  r32 d f d  r bf d bf  \voiceDown r f bf f  r d f d  s2 |
  \staffUp \oneVoice r32 e' g e  r c e c  \voiceDown r g c g  r e g e  s2 |
  \staffUp \oneVoice r32 f' a f  r d f d  r a d a  \voiceDown r f a f
    r f d' f,  r f bf f  r f c' f,  r f ef' f, |
  r32 f d' f,  r f bf f  r f c' f,  r f ef' f,  r f d' f,  r g f' g,  r g e' g,
    r a g' a, |
  \staffUp \oneVoice r32 a f' a,  r bf a' bf,  r bf g' bf,  r c bf' c,
    r c a' c,  r d c' d,  r d bf' d,  r e d' e, |
  s8  s32 \stemUp g[ a bf]  c bf a g  s8  d32[ bf a g]  \voiceDown f s16.
    s32 ef[ d c]  bf s16. |
    
  \barNumberCheck 9
  \staffUp \oneVoice r32 c' bf' c,  r c a' c,  r bf a' bf,  r bf g' bf,
    r a g' a,  r a f' a,  r g f' g,  r g e' g, |
  a32 c f c  a[ f' c a]  \voiceDown f a c a  f[ c' a f]  s2 |
  \staffUp \oneVoice r4
    << 
      { \voiceOne f''8. f16 f4~ } 
      \new Voice { \voiceFour <af, bf d>8. q16 <g b d>4 } 
    >> \oneVoice f'32 g af g f ef d ef |
  f32 ef d c b c d c  b a! g a b a g f  \stemUp ef d c bf! \staffDown 
    af g f ef  d c bf af g f ef d |
  \staffUp \oneVoice r4
    << { ef'''8. ef16 ef4 } \\ { <g, bf c>8. q16 <f a c>4 } >> r4 |
  s2  ef32 d c d ef f g a  bf c d ef f g a f |
  bf8 r 
    << 
      { d,8. d16  d4 df8. c16 } 
      \\ 
      { <f, af bf>8. q16  <ef g bf>4 <g bf>8. q16 } 
    >> |
  << 
    { \set Staff.connectArpeggios = ##t \voiceFour <f a>4~\arpeggio } 
    \new Voice { \set Staff.connectArpeggios = ##t \voiceOne c'4\arpeggio } 
  >> \oneVoice a32[ c a f]  \stemDown ef \stemUp f[ a c]  a[ c a f]  \stemDown
    ef \stemUp f[ a c]  \stemDown gf' f ef df c bf a g! |
  
  \barNumberCheck 17
  \stemUp a32 \stemDown f[ a c]  ef \stemUp gf[ a c]
    <<
      { 
        s8 df,8*1/2\noBeam bf16  \connectArpeggios <f bf c>4\arpeggio 
          <f a c>\arpeggio 
      }
      \\
      { bf'16. c,32 df a bf e,  \connectArpeggios c8\arpeggio d! ef4\arpeggio }
    >> |
  << { \voiceTwo d4~ } \new Voice { \voiceOne <f bf>4 } >> \oneVoice d32 f d bf
    s bf[ d f]  d f d bf  s bf[ d f]  cf'[ af f d]  s16. d32 |
  ef8~\mordent  ef32 d c! d  ef d c bf a! bf c bf s2 |
  \voiceDown r32 d, f d  r f bf f  \staffUp \oneVoice  r bf d bf  r d f d
    \voiceOne r f bf f  r bf d bf  r d f d  bf'8\noBeam |
  r1\fermata |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  bf8-. a-. bf-. f-.  g-. f-. g-.  d-. |
  \stemDown ef8-. d-. ef-. bf-.  \stemUp c-. bf-. a-. f-. |
  \beamQuarterNotes.44 \slurCloserToNoteHeadOn
  \stemDown bf8-. f'-. \voiceTwo d-. bf-.  g32[-\slurShapeA ^( d' e fs]
    g \stemUp a[ bf c]  bf \stemDown g[ a bf]  c \staffUp \stemUp d[ e f!]) | 
  \staffDown \stemDown c8-. g-. e-. c-.  a32[-\slurShapeB ^( e' f g]  a \stemUp
    b[ c d]  c \stemDown a[ b c]  d \staffUp \stemUp e[ f g]) |
  \staffDown \stemDown d8-. a-. f-. d-.  bf-. g-. a-. f-. |
  bf8 g a f  bf b c cs |
  \stemUp d8 d, e e'  f f, g g' |
  \stemDown a32[ c d e]  f s16.  s8  \voiceUp f32 ef! d c  s8  s32 \staffDown
    ef,[ d c]  d s16.  s32 a g f |
  
  \barNumberCheck 9
  \oneVoice e8 f d e  f a bf c |
  f,4 r  \stemDown c'32 \stemUp f([ e d]  c \stemDown bf[ a g]  f a c f
    \staffUp \stemUp a[ c ef! gf!]) |
  \staffDown \oneVoice d,,8 r 
    << { <f' bf d>8. q16 <d g d'>4 } \\ { d8. d16 b4 } >> r4 |
  s1 |
  \stemDown c,8 r 
    << 
      { \voiceTwo c'8. c16 f4~ }  
      \new Voice { \voiceThree <ef g c>8. q16 <a! c>4 } 
    >> f32 c d ef f g a bf |
  a32 g f g a bf c d  c bf a bf c d ef f  s2 |
  \oneVoice r4 
  <<
    { <d, f bf>8. q16  <g bf>4  q8. <g c>16 }
    \\
    { bf,8. bf16  ef4 e8. e16 }
  >> |
  <f a c ef>4\arpeggio s2. |
  
  \barNumberCheck 17
  s2 
    <<
      { \connectArpeggios f4\arpeggio f8\arpeggio g }
      \\
      { \connectArpeggios <f, c'>4\arpeggio <f c' ef>\arpeggio }
    >> |
  << { <d' f af>4 } \\ { bf4 } >> s8  af'32 s16.  s8  af32 s16.  s8
    cf32[ af f] s |
  g8 s4.  \stemUp a32 g f g a g f ef  d ef f ef d c bf a |
  \stemDown bf8 d f bf  \voiceUp d f bf r |
  \voiceDown <bf,,, bf'>1\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1^\pLeggiermente
  s1 |
  s2 s\cresc |
  s1 |
  s4\f s-\tweak Y-offset -1 \dim s2\p |
  s2 s\cresc |
  s2 s\f |
  s2\fz s4 s32 s16.-\tweak Y-offset 0.5 \dim s8 |
  
  \barNumberCheck 9
  s1\p |
  s8 s4.-\tweak Y-offset -1 \cresc s4 s8\< s16. s32\! |
  s2\f s4\fz\> s8 s16. s32\! |
  s4\p s2.\cresc |
  s2.\ff s8\> s16. s32\! |
  s4\p s2.\cresc |
  s1-\tweak extra-offset #'(0 . -1) \ff |
  s4 s2\p s4\cresc |
  
  \barNumberCheck 17
  s8 s4.^\pocoRit s4\f s\fz |
  s4^\aTempo s-\tweak Y-offset -1.5 \p s8 s4.\cresc |
  s8\sf \tag layout { s } \tag midi { s\f } s2.\dim |
  s32-\tweak Y-offset 2 \p s16.-\tweak Y-offset 2 \dim s4. s4^\rall s\pp |
  s1 |
}

tempi = {
  \tempo "Vivace" 4 = 84
  s1
  \set Score.tempoHideNote = ##t
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s8 \tempo 4 = 76 s4. \tempo 4 = 69 s4 \tempo 4 = 63 s |
  \tempo 4 = 84
  s1 * 2 |
  s2 \tempo 4 = 76 s4 \tempo 4 = 69 s |
  s1 |
}

forceBreaks = {
  % page 1
  s1\noBreak s2\break\noPageBreak
  s2\noBreak s1\break\noPageBreak
  s1\noBreak s2\break\noPageBreak
  s2\noBreak s1\break\noPageBreak
  s1\noBreak s2\break\noPageBreak
  s2\noBreak s1\pageBreak
  
  % page 2
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
}

preludeTwentyOneNotes =
\score {
  \header {
    title = "Prelude 21"
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
    \context {
      \Staff
      \consists Span_arpeggio_engraver
    }
  }
}

\include "articulate.ly"

preludeTwentyOneMidi =
\book {
  \bookOutputName "prelude-21-bwv-866"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}

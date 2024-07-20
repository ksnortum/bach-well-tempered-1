\version "2.24.0"

titlePage = \bookpart {

  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }

  \markup { \fill-line { \center-column {
    \vspace #14
    \line { \abs-fontsize #36 \bold "Well-Tempered Clavier, I" }
    \vspace #3
    \line { \abs-fontsize #20 "BWV 846-869" } % TODO, double check
    \vspace #4
    \fill-line { \abs-fontsize #20 "by Johann Sebastian Bach" }
    \vspace #4	
    \fill-line { \abs-fontsize #14 "for Piano"}
  } } } 
}

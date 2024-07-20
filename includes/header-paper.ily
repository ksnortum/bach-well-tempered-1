%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

#(set-global-staff-size 18)

\header { 
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/0/06/IMSLP335891-SIBLEY1802.26606.a095-39087032500474score.pdf" % SrcA
  source = "https://vmirror.imslp.org/files/imglnks/usimg/9/9a/IMSLP22080-PMLP05948-Busoni-Bach_WTC_1,_Book_1_No_1_-_No_12_(78p).pdf" % SrcB
  source = "https://s9.imslp.org/files/imglnks/usimg/3/30/IMSLP22081-PMLP05948-Busoni-Bach_WTC_1,_Book_2_No_13_-_No_24_(134p).pdf" % SrcB
  source = "https://imslp.hk/files/imglnks/euimg/c/c0/IMSLP582208-PMLP5948-Bach,_JS_-_WTC_1_(NBA_5-6.1),_Appendix_-_Earliest_Extant_Version,_all,_full-size.pdf" % SrcC
  copyright = \markup { 
    \center-column {
      "Copyright © 2024 Knute Snortum. This work is licensed under the" 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "Creative Commons Attribution-ShareAlike 4.0 International License."
    }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  % These settings are scaled to paper-size
  top-margin = 5\mm % default 5
  bottom-margin = 6\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
  
  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
  
  tocTitleMarkup = \markup \huge \bold \column {
    \fill-line { "Table of Contents" }
    \hspace #1
  }
  tocItemMarkup = \tocItemWithDotsMarkup
  
  print-all-headers = ##t
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \override Slur.details.free-head-distance = 0.5
  }
  \context {
    \Voice
    \override Tie.minimum-length = 3
  }
  % Helps keep dynamics from intersecting the span bar line.
  \context { 
    \Dynamics
    \consists Pure_from_neighbor_engraver
    \remove Bar_engraver
  }
}

% Better dynamic performance
\midi {
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
  \context {
    \Score
    midiMinimumVolume = #0.20
    midiMaximumVolume = #0.99
  }
}

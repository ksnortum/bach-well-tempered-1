%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/prelude-1-bwv-846-parts.ily"
\include "includes/fugue-1-bwv-846-parts.ily"
\include "includes/prelude-2-bwv-847-parts.ily"
\include "includes/fugue-2-bwv-847-parts.ily"
\include "includes/prelude-3-bwv-848-parts.ily"
\include "includes/fugue-3-bwv-848-parts.ily"
\include "includes/prelude-4-bwv-849-parts.ily"
\include "includes/fugue-4-bwv-849-parts.ily"
\include "includes/prelude-5-bwv-850-parts.ily"
\include "includes/fugue-5-bwv-850-parts.ily"
\include "includes/prelude-6-bwv-851-parts.ily"
\include "includes/fugue-6-bwv-851-parts.ily"
\include "includes/prelude-7-bwv-852-parts.ily"
\include "includes/fugue-7-bwv-852-parts.ily"
\include "includes/prelude-8-bwv-853-parts.ily"
\include "includes/fugue-8-bwv-853-parts.ily"
\include "includes/prelude-9-bwv-854-parts.ily"
\include "includes/fugue-9-bwv-854-parts.ily"
\include "includes/prelude-10-bwv-855-parts.ily"
\include "includes/fugue-10-bwv-855-parts.ily"
\include "includes/prelude-11-bwv-856-parts.ily"
\include "includes/fugue-11-bwv-856-parts.ily"
\include "includes/prelude-12-bwv-857-parts.ily"
\include "includes/fugue-12-bwv-857-parts.ily"
\include "includes/prelude-13-bwv-858-parts.ily"
\include "includes/fugue-13-bwv-858-parts.ily"
\include "includes/prelude-14-bwv-859-parts.ily"
\include "includes/fugue-14-bwv-859-parts.ily"
\include "includes/prelude-15-bwv-860-parts.ily"
\include "includes/fugue-15-bwv-860-parts.ily"
\include "includes/prelude-16-bwv-861-parts.ily"
\include "includes/fugue-16-bwv-861-parts.ily"
\include "includes/prelude-17-bwv-862-parts.ily"
\include "includes/fugue-17-bwv-862-parts.ily"
\include "includes/prelude-18-bwv-863-parts.ily"
\include "includes/fugue-18-bwv-863-parts.ily"
\include "includes/prelude-19-bwv-864-parts.ily"
\include "includes/fugue-19-bwv-864-parts.ily"
\include "includes/prelude-20-bwv-865-parts.ily"
\include "includes/fugue-20-bwv-865-parts.ily"
\include "includes/prelude-21-bwv-866-parts.ily"
\include "includes/fugue-21-bwv-866-parts.ily"
\include "includes/prelude-22-bwv-867-parts.ily"
\include "includes/fugue-22-bwv-867-parts.ily"
\include "includes/prelude-23-bwv-868-parts.ily"
\include "includes/fugue-23-bwv-868-parts.ily"
\include "includes/prelude-24-bwv-869-parts.ily"
\include "includes/fugue-24-bwv-869-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDF

\tocItem \markup "Prelude and Fugue 1 in C major"
\preludeOneNotes
\pageBreak
\fugueOneNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 2 in C minor"
\preludeTwoNotes
\pageBreak
\fugueTwoNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 3 in C" \raise #0.75 \teeny \sharp " major" 
}
\preludeThreeNotes
\pageBreak
\fugueThreeNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 4 in C" \raise #0.75 \teeny \sharp " minor" 
}
\preludeFourNotes
\pageBreak
\fugueFourNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 5 in D major"
\preludeFiveNotes
\pageBreak
\fugueFiveNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 6 in D minor"
\preludeSixNotes
\pageBreak
\fugueSixNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 7 in E" \raise #0.75 \teeny \flat " major" 
}
\preludeSevenNotes
\pageBreak
\fugueSevenNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 8 in E" \raise #0.75 \teeny \flat " minor" 
}
\preludeEightNotes
\pageBreak
\fugueEightNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 9 in E major"
\preludeNineNotes
\pageBreak
\fugueNineNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 10 in E minor"
\preludeTenNotes
\pageBreak
\fugueTenNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 11 in F major"
\preludeElevenNotes
\pageBreak
\fugueElevenNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 12 in F minor"
\preludeTwelveNotes
\pageBreak
\fugueTwelveNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 13 in F" \raise #0.75 \teeny \sharp " major" 
}
\preludeThirteenNotes
\pageBreak
\fugueThirteenNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 14 in F" \raise #0.75 \teeny \sharp " minor" 
}
\preludeFourteenNotes
\pageBreak
\fugueFourteenNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 15 in G major"
\preludeFifteenNotes
\pageBreak
\fugueFifteenNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 16 in G minor"
\preludeSixteenNotes
\pageBreak
\fugueSixteenNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 17 in A" \raise #0.75 \teeny \flat " major" 
}
\preludeSeventeenNotes
\pageBreak
\fugueSeventeenNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 18 in G" \raise #0.75 \teeny \sharp " minor" 
}
\preludeEighteenNotes
\pageBreak
\fugueEighteenNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 19 in A major"
\preludeNinteenNotes
\pageBreak
\fugueNinteenNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 20 in A minor"
\preludeTwentyNotes
\pageBreak
\fugueTwentyNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 21 in B" \raise #0.75 \teeny \flat " major" 
}
\preludeTwentyOneNotes
\pageBreak
\fugueTwentyOneNotes
\pageBreak

\tocItem \markup \concat { 
  "Prelude and Fugue 22 in B" \raise #0.75 \teeny \flat " minor" 
}
\preludeTwentyTwoNotes
\pageBreak
\fugueTwentyTwoNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 23 in B major"
\preludeTwentyThreeNotes
\pageBreak
\fugueTwentyThreeNotes
\pageBreak

\tocItem \markup "Prelude and Fugue 24 in B minor"
\preludeTwentyFourNotes
\pageBreak
\fugueTwentyFourNotes

% Midi

\preludeOneMidi
\fugueOneMidi
\preludeTwoMidi
\fugueTwoMidi
\preludeThreeMidi
\fugueThreeMidi
\preludeFourMidi
\fugueFourMidi
\preludeFiveMidi
\fugueFiveMidi
\preludeSixMidi
\fugueSixMidi
\preludeSevenMidi
\fugueSevenMidi
\preludeEightMidi
\fugueEightMidi
\preludeNineMidi
\fugueNineMidi
\preludeTenMidi
\fugueTenMidi
\preludeElevenMidi
\fugueElevenMidi
\preludeTwelveMidi
\fugueTwelveMidi
\preludeThirteenMidi
\fugueThirteenMidi
\preludeFourteenMidi
\fugueFourteenMidi
\preludeFifteenMidi
\fugueFifteenMidi
\preludeSixteenMidi
\fugueSixteenMidi
\preludeSeventeenMidi
\fugueSeventeenMidi
\preludeEighteenMidi
\fugueEighteenMidi
\preludeNinteenMidi
\fugueNinteenMidi
\preludeTwentyMidi
\fugueTwentyMidi
\preludeTwentyOneMidi
\fugueTwentyOneMidi
\preludeTwentyTwoMidi
\fugueTwentyTwoMidi
\preludeTwentyThreeMidi
\fugueTwentyThreeMidi
\preludeTwentyFourMidi
\fugueTwentyFourMidi

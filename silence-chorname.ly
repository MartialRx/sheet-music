\language "français"
\score {
 <<
  \new Staff \relative do'' {
   do2 mi_\markup\raise #-0 { \center-column { \teeny"Do/Sol" \raise #1  \teeny\musicglyph "rests.2" }  } |
   do1
  }
  \new ChordNames \chordmode {
   do2.
   s4 |
   do1
  }
 >>
}

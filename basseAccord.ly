\language "français"
basseAccord = {
  <do mi sol>1-\markup { 
   \hspace #-4.4
   \raise #-2.7 
    { 
    \fontsize #1 "(" \super {
     \fontsize #-1
     \center-column { 
       { "SOL" }
     \raise #1  { "NC" }
     }
    } \fontsize #1 ")" }
  }
}
  
chExceptions = #(append
                 (sequential-music-to-chord-exceptions basseAccord #t)
                 ignatzekExceptions)
  
\score { << \new Staff \relative do'' { do2 mi | do1 }
            \new ChordNames \chordmode {  
             do2. 
             \set chordNameExceptions = #chExceptions 
             do4/sol | 
                \unset chordNameExceptions  
             do1 } >>
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
up =  \drummode { tri4 tri8 tri tri2 }
down = \drummode { tomfl8 tomfl  tomfl4 tomfl16 tomfl tomfl 8 tomfl4 }

\score { <<
  \new RhythmicStaff \with {  instrumentName = "Triangle"  } { \voiceOne \up }
  \new RhythmicStaff \with {  instrumentName = "Tom"  } { \voiceTwo \down }
 >>
 \layout {  }
% \midi {  }
}
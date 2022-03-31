
%exemple arbitraire d'accordage de violon
scordatura = \markup {
 %nom des cordes
 \fontsize #-6 \bold \column { "F""D""G""E" }
}

A=   \tweak NoteHead.text \markup\normal-text\lower #0.8 \box  "a"\etc
B=   \tweak NoteHead.text \markup\normal-text\lower #0.8 \box  "b"\etc
C=   \tweak NoteHead.text \markup\normal-text\lower #0.5 \box  "c"\etc
D=   \tweak NoteHead.text \markup\normal-text\lower #0.8 \box  "d"\etc
E=   \tweak NoteHead.text \markup\normal-text\lower #0.5 \box  "e"\etc
F=   \tweak NoteHead.text \markup\normal-text\lower #0.9 \box  "f"\etc
G=   \tweak NoteHead.text \markup\normal-text\lower #0.7 \box  "g"\etc
%exemple corde à vide
cordes = \relative c { <gis\4 cis f\2 ais\1 >1 }
%musique
music  = \relative c' {
 % \easyHeadsOn
 \override NoteHead.stencil = #ly:text-interface::print
 \G gis4 \C cis \F f8 \A ais \F f' \E e \C c2 \B bes
}

Scordatura = { \override TabStaff.Clef.stencil = ##f  \cordes }

\score {
 <<
  \new TabStaff %\with { instrumentName = \markup\scordatura }
  \Scordatura
  \new Staff %\with { \magnifyStaff #4/3  }
  \music
 >>

 \layout {
  \context {
   \TabStaff
   %   proportionalNotationDuration = #(ly:make-moment 1/32)
   tablatureFormat = #fret-letter-tablature-format
   stringTunings = \stringTuning <e, g, d  f> %son des  cordes
   % a = corde à vide, b 1er case c 2e etc.
   fretLabels = #'( "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l")

  }
 }
}
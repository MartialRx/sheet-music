\language "english"
%------------------ BARRED
% make barred  chord(s)
Barre = #(define-event-function (txt1)(markup?)
          #{
           \tweak bound-details.left.text \markup\normal-text \fontsize #-2 $txt1
           \tweak #'dash-period 0.8
           \tweak style #'line
           \tweak bound-details.left.stencil-align-dir-y #0
           \tweak bound-details.left-broken.text ##f
           \tweak bound-details.left-broken.attach-dir -1
           \tweak bound-details.left-broken.padding -1.5
           \tweak bound-details.right.padding -1 %pos x du trait vertical
           \tweak bound-details.right.attach-dir 2
           \tweak bound-details.right-broken.text ##f
           \tweak bound-details.right.text
           \markup
           \with-dimensions #'(0 . 0) #'(-.3 . 0)
           \draw-line #'(0 . -1.5)
           \startTextSpan
          #})

#(define startB Barre)
stopB=\stopTextSpan

% Make C or B with slash
#(define-markup-command (Cslh layout props txt) (markup?)
  (interpret-markup layout props
   (markup
    #:line
    (#:with-dimensions
     (cons 0 0.8)
     (cons 0 1.0)
     (#:combine
      "C"
      ;"B"
      (#:translate (cons 0.15 0.25) "|"))
     #:simple
     txt
     ))))

%syntaxe : {note or Chord \startB "numberCase" notes or chords ... \stopB }
\relative c' {
 <c g''>4\startB "BIII" d'8 e-4 g4 a-4 \break <bf, d g>2\stopB e2  \break
 %% or
<c, g''>4\startB\markup\Cslh"3" d'8 e-4 g4 a-4 \break <bf, d g>2\stopB  e,2
}

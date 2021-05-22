%/usr/bin/python

\header {
  enteredby =   "Bruno Sciolla"
  maintainer =  "Bruno Sciolla"
  copyright =   "Public Domain"
  filename =  ""
  title =   "Two scales"
  opus =  ""
  composer =  ""
  style = ""
  source =  "Bruno Sciolla"

  mutopiainstrument = ""
  mutopiatitle =      ""
  mutopiacomposer =   ""
  mutopiaopus =       ""
  maintainerEmail =   ""

 footer = ""
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column 
{ \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line 
{ \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.18.2"

voiceone =   {
  
  \time 4/4
  \clef "treble"
 
  \repeat "volta" 2 {
c'4 d'4 e'4 f'4 | g'4 a'4 b'4 c''4 |
  }
}

voicetwo =  {

  \time 4/4
  \clef "bass"
  \repeat "volta" 2 {
c d4 e4 f4 | g4 a4 b4 c'4 |
  }
}


\score {

  \context PianoStaff << 
    \context Staff = "one" <<
       \override Staff.StaffSymbol.line-count = #6
       \override Staff.StaffSymbol.line-positions = #'(-5.85 -6 -6.15 -2  0.85 1 1.15)
       \voiceone
    >>
    \context Staff = "two" <<
      \override Staff.StaffSymbol.line-count = #6
      \override Staff.StaffSymbol.line-positions = #'(-0.85 -1 -1.15  3 5.85 6 6.15 10)
      \voicetwo
    >>
  >>

  \layout{}
  \midi {}
}

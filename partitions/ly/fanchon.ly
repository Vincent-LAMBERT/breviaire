\version "2.23.4"

\header {
    title = "Fanchon"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c'' {
        \key c \major \time 6/8
        \partial 4. g4. |
        \repeat volta 5 {
            c->~ c4 g8 g4 a8 g4 f8 e4.( d) c4 d8 e4 f8 g4 8 d4 8 g4-. r8 r4 8
            g4.~ 4 8 a4 g8 a4 b8 c4 8 b4 c8 d4 c8 b4 a8 b4.( a) g \breathe g \bar "||" \break
            c4-.-> r8 g4 a8 g4 f8 e4 d8 c4 d8 e4 f8 g4 8 d4 8 g4.~( 4 a8) g4 r8 r4 d8
            4.~ 4 e8 g4 e8 d4 e8 c2. g4. r4 d'8 4.~ 4 e8 g4 e8 d4 e8 c4 e8 4 f8 g4 f8 e4 f8
            g4 f8 e4 f8 g4 f8 e4 f8 g4-. r8 r4 e'8-> |
            e4.->~ e4 d8 f4 e8 d4 e8 c2. g4. r4 e'8-> |
            e4.->~ e4 d8 f4 e8 d4 e8 c4. g e g c g e'2. d c4 d8 e4 d8 
        }
        \alternative {
            \volta 1,2,3,4 { \set Score.repeatCommands = #'((volta "1. 2. 3. 4.")) c4->-. r8 g4. }
            \volta 5 { c4.->\fermata r }
        }
        \bar "|."
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        A -- mis, il faut faire u -- ne pau -- se. J'a -- per -- çois l'om -- bre d'un bou -- chon;
        Bu -- vons à l'ai -- ma -- ble Fan -- chon, chan -- tons pour el -- le quel -- que cho -- se! 
        \markup { \small \bold "R." Et, } ah! Que son en -- tre -- tien est bon, qu'elle a de mé -- rite et de gloi -- re
        Elle aime à rire, elle aime à boi -- re,
        elle aime à chan -- ter com -- me nous, elle aime à rire, elle aime à boire, elle aime à chan -- ter com -- me nous,
        Elle aime à rire, elle aime à boi -- re,
        Elle aime à chan -- ter com -- me nous, oui com -- me nous, oui com -- me nous! Oui com -- me nous!
        \set stanza = "2." Fan... nous!
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords { s4.
            c2. s s4. g:7 c2. g4. d:m7 g2.:7
            s2. s c s g4.:/d d:7 g2.
            c s4. g:7 c2. s4. d:m7 g2. s
            g:7 s c s g:7 s c s s s s
            d:m9 s4. g:7 c2. s
            d:m9 s4. g:7 c2. s
            a:m c:/g g:7 c
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

\markup { \vspace #4 }

\markup {
    \fill-line {
        \combine \null \hspace #2
        \column {
            \line { \bold "2. "
                \column {
                    \line { "Fanchon, quoique bonne chrétienne" }
                    \line { "Fut baptisée avec du vin." }
                    \line { "Un Bourguignon fut son parrain," }
                    \line { "Une Bretonne sa marraine !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "Fanchon préfère la grillade," }
                    \line { "À d'autres mets plus délicats." }
                    \line { "Son teint prend un nouvel éclat," }
                    \line { "Lorsqu'on lui verse une rasade !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
        \combine \null \hspace #7
        \column {
            \line { \bold "4. "
                \column { 
                    \line { "Un jour, le copain la Grenade" }
                    \line { "Lui mit la main dans le corset," }
                    \line { "Elle répondit par un soufflet" }
                    \line { "Sur le museau du camarade !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column {
                    \line { "Fanchon ne se montre cruelle" }
                    \line { "Que lorsqu'on lui parle d'amour." }
                    \line { "Mais moi, je ne lui fais la cour" }
                    \line { "Que pour m'enivrer avec elle !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
        \combine \null \hspace #-2
    }
}
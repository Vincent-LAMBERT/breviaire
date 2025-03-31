\version "2.23.4"

\header {
    title = "Les filles de la Rochelle"
    composer = "Les Quatre Barbus"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c'' {
        \key e \minor \time 2/4
        \repeat volta 9 {
            <\tweak font-size #-3 g b>8 q q q q4. <\tweak font-size #-3 fis a>8 q4 <\tweak font-size #-3 e g>
            g8( b) b( fis) fis( a) a( e) e( fis) g( a) b2-- \breathe
            <\tweak font-size #-3 g b>8 q q q q4. <\tweak font-size #-3 fis a>8 q4 <\tweak font-size #-3 e g>
            e8 fis g a b4 e-^ b2--
            e,8 fis g a g4 fis e2--
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Les fil -- les de la Ro -- chel -- le,
        \override LyricText.font-shape = #'italic
        la -- la -- la -- la -- la -- la -- la,
        \revert LyricText.font-shape
        Les fil -- les de la Ro -- chel -- le,
        Ne sont pas bé -- gueules du tout,
        ne sont pas bé -- gueules du tout.
    }
}

\markup { \vspace #2 }

\score {
    <<
        \chords {
            r2 s s e:m d c b
            r s s c b4:m c g2 c4 g:/b a:7 b:7 e2:m
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

\markup { \vspace #1 }

\markup {
    \fill-line {
        \column {
            \line { \bold "2. "
                \column {
                    \line { "Elles portent des chemisettes," }
                    \line { \italic "La, la, la, la, la, la, la,"}
                    \line { "Elles portent des chemisettes," }
                    \line { "Qui n'leur viennent même pas aux g'noux" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column {
                    \line { "Le tailleur qui les a faites," }
                    \line { \italic "La, la, la, la, la, la, la,"}
                    \line { "Le tailleur qui les a faites," }
                    \line { "A regardé par en d'ssous" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Il a vu une chapelle," }
                    \line { \italic "Ding, dong, ding, dong, ding, dong, dong,"}
                    \line { "Il a vu une chapelle," }
                    \line { "Qui n'est pas celle de Saint-Cloud" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column {
                    \line { "Pour entrer dans cette chapelle," }
                    \line { \italic "Oh, oh, oh, oh, oh, oh, oh,"}
                    \line { "Pour entrer dans cette chapelle," }
                    \line { "Il faut se mettre à genoux" \italic "(bis)" }
                }
                \hspace #1 \column { \lower #4 \right-brace #55 }
                \column { \lower #4.7 \bold "(plus lent)" }
            }
        }
        \column {
            \line { \bold "6. "
                \column {
                    \line { "Il faut présenter un cierge," }
                    \line { \italic "La, la, la, la, la, la, la,"}
                    \line { "Il faut présenter un cierge," }
                    \line { "Qui n'a pas de mèche au bout" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Car s'il avait une mèche," }
                    \line { \italic "La, la, la, la, la, la, la,"}
                    \line { "Car s'il avait une mèche," }
                    \line { "Ça foutrait le feu partout" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "8. "
                \column {
                    \line { "Et les pompiers d'la Rochelle," }
                    \line { \italic "Pin, pon, pin, pon, pin, pon, pon,"}
                    \line { "Et les pompiers d'la Rochelle," }
                    \line { "N'en viendraient jamais à bout" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "9. "
                \column {
                    \line { "Et les p'tits gars d'la Rochelle," }
                    \line { \italic "La, la, la, la, la, la, la,"}
                    \line { "Et les p'tits gars d'la Rochelle," }
                    \line { "N'pourraient pas tirer leur coup !" \italic "(bis)" }
                }
            }
        }
    }
}

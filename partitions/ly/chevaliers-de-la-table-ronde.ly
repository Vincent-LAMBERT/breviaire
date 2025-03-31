\version "2.23.4"

\header {
    title = "Chevaliers de la Table Ronde"
    composer = "Traditionnel"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c' {
        \key g \major \time 3/4
        \partial 4 \repeat volta 3 {
            d8 g g4 g8 b b d d4 b c8 b a4 d,8 a' a a g2 d8 g
            g4 g8 b b d d4 b c8 b a4 d,8 a' a a g2 d'8 8 \bar "||" \time 4/4
            e4 \magnifyMusic 0.7 { c8-. 8-. 4-. } e8 8 d4 \magnifyMusic 0.7 { b8-. 8-. 4-. } d8 8 \time 3/4
            c4 a8 d d d b2-- d8 8 \time 4/4
            e4 \magnifyMusic 0.7 { c8-. 8-. 4-. } e8 8 d4 \magnifyMusic 0.7 { b8-. 8-. 4-. } d8 8 \time 3/4
            c4 a8 d d d g,2.--\fermata
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Che -- va -- liers de la Ta -- ble Ron -- de,
        goû -- tons voir si le vin est bon.
        Che -- va -- liers de la Ta -- ble Ron -- de,
        goû -- tons voir si le vin est bon.
        Goû -- tons voir, \markup \italic "(oui" \markup \italic "oui" \markup \italic "oui!)"
        goû -- tons voir, \markup \italic "(non" \markup \italic "non" \markup \italic "non!)"
        goû -- tons voir si le vin est bon.
        Goû -- tons voir, \markup \italic "(oui" \markup \italic "oui" \markup \italic "oui!)"
        goû -- tons voir, \markup \italic "(non" \markup \italic "non" \markup \italic "non!)"
        goû -- tons voir si le vin est bon.
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            s4 g2. s c2:6 d4:7 g2.
            s s c2:6 d4:7 g2 g4:7
            c1 g d2.:7 g
            c1 g d2.:7 g
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

\markup { \vspace #2 }

\markup {
    \fill-line {
        \column {  }
        \column {
            \line { \bold "2. "
                \column {
                    \line { "S'il est bon, s'il est agréable," }
                    \line { "J'en boirai jusqu'à mon plaisir."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column {
                    \line { "J'en boirai cinq à six bouteilles," }
                    \line { "Une femme sur les genoux."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Et si le tonneau se débonde," }
                    \line { "J'en boirai jusqu'à mon loisir."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column {
                    \line { "Et s'il en reste quelques gouttes," }
                    \line { "Ça sera pour nous rafraîchir."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column {
                    \line { "Mais voici qu'on frappe à ma porte," }
                    \line { "Je crois bien que c'est le mari."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Si c'est lui, que le diab'l'emporte," }
                    \line { "Car il vient troubler mon plaisir."}
                }
            }
        }
        \column { }
        \column {
            \line { \bold "8. "
                \column {
                    \line { "Si je meurs, je veux qu'on m'enterre," }
                    \line { "Dans une cave où y'a du bon vin."}
                }
            }
            \combine \null \vspace #1.07
            \line { \bold "9. "
                \column {
                    \line { "Les deux pieds contre la muraille," }
                    \line { "Et la tête sous le robinet."}
                }
            }
            \combine \null \vspace #1.07
            \line { \bold "10. "
                \column {
                    \line { "Et mes os, de cette manière," }
                    \line { "Resteront imbibés de vin."}
                }
            }
            \combine \null \vspace #1.07
            \line { \bold "11. "
                \column {
                    \line { "Et les quatre plus grands ivrognes," }
                    \line { "Porteront les quat'coins du drap."}
                }
            }
            \combine \null \vspace #1.07
            \line { \bold "12. "
                \column {
                    \line { "Sur ma tombe, je veux qu'on inscrive," }
                    \line { "\"Ici-gît le roi des buveurs.\""}
                }
            }
            \combine \null \vspace #1.07
            \line { \bold "13. "
                \column {
                    \line { "La morale de cette histoire," }
                    \line { "Est qu'il faut boire avant d'mourir."}
                }
            }
        }
        \column { }
    }
}
\markup { \vspace #2 }
\markup { \fill-line { \column {
    \line { \italic "Seules les paroles qui changent de couplet en couplet ont été transcrites, pour des raisons de place." }
}}}
\version "2.23.4"

\header {
    title = "Les prisons de Nantes"
    composer = "Tri Yann"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c'' {
        \time 3/4 \key a \minor
        \repeat volta 2 {
            a4 e8 a a b a4 g8-. \noBeam a b16 16 16 16 e,8 b'16 16 8 c d e
            \time 2/4 d16 16 c c b4-.
            \time 3/4 a4 e8 a a b a4 g8-. c[ b a] g4 a e8. 16
            g8 a b c b( a~ a2) r4
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Dans les pri -- sons de Nan -- tes,
        lan di -- gi -- di -- gi -- dan, di -- gi -- di, lan di, lan di -- gi -- di -- gi -- dan,
        Dans les pri -- sons de Nan -- tes,
        y'a -- vait un pri -- son -- nier,
        y'a -- vait un pri -- son -- nier. __
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            a1:m s4 g:/a s1 s4
            a1:m s4 g:/a s1 s2 a2.:m
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
                    \line { "Personne ne l'y vint voir," }
                    \line { "Que la fille du geôlier."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column {
                    \line { "Elle lui apporte à boire," }
                    \line { "À boire et à manger."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Et des chemises blanches," }
                    \line { "Quand il veut en changer."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column {
                    \line { "Un jour, il lui demande," }
                    \line { "Mais que dit on de moi ?"}
                }
            }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column {
                    \line { "L'on dit de vous en ville," }
                    \line { "Que vous serez pendu."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Mais s'il faut qu'on me pende," }
                    \line { "Déliez-moi les pieds."}
                }
            }
        }
        \column { }
        \column {
            \line { \bold "8.  "
                \hspace #0.6
                \column {
                    \line { "La fille était jeunette," }
                    \line { "Les pieds lui a délié."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "9.  "
                \hspace #0.6
                \column {
                    \line { "Le prisonnier alerte," }
                    \line { "Dans la Loire s'est jeté."}
                }
            }
            \combine \null \vspace #1
            \line { \bold "10. "
                \column {
                    \line { "Dès qu'il fut sur les rives," }
                    \line { "Il se mit à chanter,"}
                }
                \hspace #1 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.3 \italic "(lent)" }
            }
            \combine \null \vspace #1
            \line { \bold "11. "
                \column {
                    \line { "Je chante pour les belles," }
                    \line { "Surtout celle du geôlier."}
                }
                \hspace #1 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.3 \italic "(scandé, plus vite)" }
            }
            \combine \null \vspace #1
            \line { \bold "12. "
                \column {
                    \line { "Si je reviens à Nantes," }
                    \line { "Oui, je l'épouserai !"}
                }
                \hspace #1 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.3 \italic "(scandé, plus vite)" }
            }
            \combine \null \vspace #1
            \line { \bold "13. "
                \column {
                    \line { "Dans les prisons de Nantes," }
                    \line { "Y'avait un prisonnier."}
                }
                \hspace #1 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.3 \italic "(lent)" }
            }
        }
        \column { }
    }
}
\markup { \vspace #2 }
\markup { \fill-line { \column {
    \line { \italic "Seules les paroles qui changent de couplet en couplet ont été transcrites, pour des raisons de place." }
}}}

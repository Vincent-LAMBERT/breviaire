\version "2.23.4"

\header {
    title = "Pelot d'Hennebont"
    composer = "Tri Yann"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

reponses = {
    \override Lyrics.LyricText.font-shape = #'italic
}

chant = {
    \revert Lyrics.LyricText.font-shape
}

music = {
    \new Voice = "default" { \relative c'' {
        \key a \minor \time 2/4
        r8. a16 8 8 \bar ".|:" e'8. d16 e8 f16 e~ e8. d16 c8 b d8. c16 b8 c16 b~ b8. 
        \magnifyMusic 0.75 { a16 8 8 e'8. d16 e8 f16 e~ e8. d16 c8 b d8. c16 b8 c16 b~ b8. }
        a16 8 8 b8. d16 b8 c16 c( a8.) 16 8 8 b8. d16 b8 c16 c( a8.)
        \magnifyMusic 0.75 { a16 8 8 b8. d16 b8 c16 c( a8.) 16 8 8 b8. d16 b8 c16 c( a8.) }
        a16 8 8 \bar ":|."
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Ma chère ma -- man, je vous é -- cris __ que nous sommes en -- trés dans Pa -- ris __
        \reponses Ma chère ma -- man, je vous é -- cris __ que nous sommes en -- trés dans Pa -- ris __
        \chant Que nous sommes dé -- jà ca -- po -- ral __ et se -- rons bien -- tôt gé -- né -- ral __ 
        \reponses Que nous sommes dé -- jà ca -- po -- ral __ et se -- rons bien -- tôt gé -- né -- ral. 
        \chant \set stanza = "2." À la ba...
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            s2 \repeat unfold 2 { a:m c g e:m7 }
            \repeat unfold 2 { g a:m g a:m }
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
                    \line { "À la bataille, je combattions" }
                    \line { "Les ennemis de la nation" \italic "(bis)" }
                    \line { "Et tous ceux qui se présentions" }
                    \line { "À grand coups de sabre, les émondions" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "Le roi Louis m'a z'appelé" }
                    \line { "C'est Sans-Quartier qu'il m'a nommé" \italic "(bis)" }
                    \line { "Mais Sans-Quartier, c'est point mon nom," }
                    \line { "J'lui dis \"J'm'appelle Pelot d'Hennebont\"" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "J'y acquiris un biau ruban," }
                    \line { "Et je n'sais quoi au bout d'argent" \italic "(bis)" }
                    \line { "Il m'dit \"Boute ça sur ton habit," }
                    \line { "Et combats toujours l'ennemi\"" \italic "(bis)" }
                }
            }
        }
        \column {
            \line { \bold "5. "
                \column { 
                    \line { "Faut qu'ce soit queq'chose de précieux" }
                    \line { "Pour que les autres m'appellent Monsieur" \italic "(bis)" }
                    \line { "Et foutent lou main à lou chapiau" }
                    \line { "Quand ils veulent conter au Pelot" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column {
                    \line { "Ma mère si j'meurs en combattant," }
                    \line { "J'vous enverrai ce biau ruban" \italic "(bis)" }
                    \line { "Et vous l'foutrez à votre fusiau" }
                    \line { "En souvenir du gars Pelot" \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Dites à mon père, à mon cousin," }
                    \line { "À mes amis que je vais bien" \italic "(bis)" }
                    \line { "Je suis leur humble serviteur" }
                    \line { "Pelot qui vous embrasse de cœur" \italic "(bis)" }
                }
            }
        }
    }
}

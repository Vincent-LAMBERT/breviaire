\version "2.23.4"

\header {
    title = "Chant des ingénieurs grenoblois"
    composer = ""
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c' {
        \key a \minor \time 6/8
        \partial 8 \repeat volta 6 {
            e8 4 a8 4 b8 c4 b8 c4 a8 g4.~ 4 e8 g4.~ 4 e8
            4 a8 4 b8 c4 b8 c4 d8 e4.~ 4 c8 e4.~ 8 c8 d
            e4 8 8 d c d4 8 8 c b
            c4 8 8 b a b4 8 4 d8
            e4.-> d->
            \alternative {
                \volta 1,2,3,4,5,6,7,8 { \set Score.repeatCommands = #'((volta "1. — 8.")) c-> b-> a8 8 8 4 g8 a4. r4 }
                \volta 9 { c4.-> \override NoteHead.style = #'cross g'4.-> 8-> 8-> 8-> 4-> 8-> 4.-> r4 }
            }
            \bar "|."
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        C'est nous les in -- gés gre -- no -- blois, hour -- ra, hour -- ra,
        Quand on nous voit, on dit "\"ceux" "là,\"" hour -- ra, hour -- ra,
        "\"sont" des guin -- dail -- leurs, sont des sé -- duc -- teurs,
        les plus grands bu -- veurs, tou -- jours mi -- jô -- "leurs,\""
        In -- gé -- nieurs, oui, peut -- être un jour nous se -- rons!
        oui, \override Lyrics.LyricText.font-shape = #'italic tou -- jours nous le res -- te -- rons!
    }
}

\markup { \vspace #1 }

\score {
    \new Staff = "staff" <<
        \chords \with { alignAboveContext = "staff" } {
            s8 a2.:m s4. f c2. s4. e:m7/b
            a2.:m s4. f4 g8 c2. s
            s g:/b a:m e:m c4. g a:m e:m7 f:maj7 e:m7 a4.:m s4
            a4.:m r4.
        }
        \music
        \paroles
    >>

    \layout { indent = #0 }
}

\markup { \vspace #-2 }

\markup {
    \fill-line {
        \column {
            \line { \bold "2. "
                \column {
                    \line { "Parmi nous il y a les Phelma," }
                    \line { "Hourra, hourra,"}
                    \line { "Leur physique vous interpellera," }
                    \line { "Hourra, hourra,"}
                    \line { \concat { "Nan" \undertie { "o-él" } "ectronique, mais pas nano-foie," } }
                    \line { "Jusqu'au bout de la nuit et à chaque fois," }
                    \line { "Ingénieurs, oui, peut-être un jour nous serons !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column {
                    \line { "Ensuite, il y a les Ense³," }
                    \line { "Hourra, hourra,"}
                    \line { "Au grand jamais ils ne titubent," }
                    \line { "Hourra, hourra,"}
                    \line { "Ils induisent en vous un flux électrique," }
                    \line { "Alors venez goûter leurs fluides magiques," }
                    \line { "Ingénieurs, oui, peut-être un jour nous serons !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Mais non, Papet' ils sont pas morts," }
                    \line { "Hourra, hourra,"}
                    \line { "Ça se saurait si c'était l'cas," }
                    \line { "Hourra, hourra,"}
                    \line { "Que ce soit au bar, que ce soit au taff," }
                    \line { "La papeterie, proche de l'orgie," }
                    \line { "Ingénieurs, oui, peut-être un jour nous serons !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column {
                    \line { "Loin à Valence, les Esisar," }
                    \line { "Hourra, hourra,"}
                    \line { "N'en sont pas les derniers pour boire," }
                    \line { "Hourra, hourra,"}
                    \line { "Embarquez pour le système 7e ciel," }
                    \line { "C'est bien avec eux que la vie est belle," }
                    \line { "Ingénieurs, oui, peut-être un jour nous serons !" }
                }
            }
        }
        \column {
            \line { \bold "6. "
                \column {
                    \line { "Au centre-ville, y'a les GI," }
                    \line { "Hourra, hourra,"}
                    \line { "Eux leur dada, c'est l'industrie," }
                    \line { "Hourra, hourra,"}
                    \line { "Mais pour picoler, jamais les derniers," }
                    \line { "Quand ils sont là, on ne s'ennuie pas," }
                    \line { "Ingénieurs, oui, peut-être un jour nous serons !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Et depuis peu, y'a Polytech," }
                    \line { "Hourra, hourra,"}
                    \line { "Toujours opés pour faire des secs," }
                    \line { "Hourra, hourra,"}
                    \line { "Prévention des risques, élec ou réseaux," }
                    \line { "Chez eux il y a tout ce qu'il vous faut," }
                    \line { "Ingénieurs, oui, peut-être un jour nous serons !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "8. "
                \column {
                    \line { "Finalement arrivent les Imag," }
                    \line { "Hourra, hourra,"}
                    \line { "Vous les croyiez nerds, la bonne blague," }
                    \line { "Hourra, hourra,"}
                    \line { "Travaillant pour eux, les ordinateurs," }
                    \line { "Leur permettent à tous de chanter en choeur," }
                    \line { "Ingénieurs, oui, peut-être un jour nous serons !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "9. "
                \column {
                    \line { "[ Nous restons tous très unis," }
                    \line { "Hourra, hourra,"}
                    \line { "Des dernières aux premières années," }
                    \line { "Hourra, hourra, ]" \italic "(lent)"}
                    \line { "C'est nous les ingés grenoblois," }
                    \line { "Et jusqu'à la mort nous boirons encore," }
                    \line { "Ingénieurs, oui," \bold \italic "toujours nous le resterons !" \italic "(crié)" }
                }
            }
        }
    }
}
\markup { \vspace #1 }
\markup { \fill-line { \column {
    \line { \italic "Attention à adapter les paroles à la mélodie selon le nombre de syllabes." }
    \line { \italic "La faluche se met au coeur pendant la partie lente du dernier couplet, et se remet sur la tête ensuite." }
}}}

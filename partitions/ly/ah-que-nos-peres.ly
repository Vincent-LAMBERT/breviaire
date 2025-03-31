\version "2.23.4"

\header {
    title = "Ah ! Que nos pères"
    composer = "Traditionnel"
    tagline = "Bréviaire Grenoblois 2021"
}

music = {
    \new Voice = "default" { \relative c' {
        \key d \minor \time 6/8
        \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
        \partial 2 f8^\p e4 f8
        \repeat volta 6 {
            \repeat unfold 3 { d4 f8 e4 f8 } d4. \breathe \magnifyMusic 0.8 { \parenthesize a'8^\markup { \tiny \bold "5." } \parenthesize 8 } a8^\f
            2.^> g4 f g a4.( e) a4\fermata \breathe f8^\p e4 f8
            \repeat unfold 3 { d4 f8 e4 f8 } d4. \breathe a'8^\f 8 8
            2.^> g4 f g a4.( e) a4\fermata \breathe 8 4 8 \bar "||"
            d4.->~  4 8 c4.~ 4 8 a2.~ 4. 8 8 8
            f4. g8 8 8 e4 a8 4.^>
            f8 f g f4 e8 d4 a'8 4.^>
        }
        \alternative {
            \volta 1,2,3,4,5 { \set Score.repeatCommands = #'((volta "1. — 5.")) f8 8 g f4. e d\fermata \breathe r4 f8^\p e4 f8 }
            \volta 6 { a8\< 8 8 b4. cis d->\! }
        } \bar "|."
    } }
}

paroles = {
    <<
        \new Lyrics \lyricsto "default" {
            \set stanza = "1. "
            Ah! que nos pères é -- taient heu -- reux, ah! que nos pères é -- taient heu -- reux.
            \skip 1 \skip 1
            Quand ils é -- taient à ta -- ble!
            Le vin cou -- lait à cô -- té d'eux, le vin cou -- lait à cô -- té d'eux,
            Ça leur é -- tait fort a -- gré -- a -- ble!
            \markup { \hspace #-1.5 \small \bold "R." Et } ils bu -- vaient à pleins ton -- neaux,
            Com -- me des trous, com -- me des trous, mor -- bleu!
            Bien au -- tre -- ment que nous, mor -- bleu!
            Bien au -- tre -- ment que nous.
            \set stanza = "2."
            Ils n'a -- vaient...
            L'a -- ve -- nir est à nous!
        }
        \new Lyrics \lyricsto "default" {
            \repeat unfold 50 { \skip 1 }
            \markup { \hspace #-1.8 \small \bold "6." A } -- mis, bu -- vons à pleins ton -- neaux,
            Com -- me des trous, com -- me des trous, mor -- bleu!
            L'a -- ve -- nir est à nous, mor -- bleu!
        }
    >>
}
\markup { \vspace #1 }
\score {
    <<
        \chords { s2
            r2.*4 d4.:m a:m/c g2.:m/bes a:sus4 a
            r2.*4 d4.:m a:m/c g2.:m/bes a:sus4 a
            bes c f s bes4. g:m a2.
            d4.:m a:7 d2.:m
            bes4. d:m/a a:7 d:m s2.
            a:7 s4. d:m
        }
        \music
        \paroles
    >>

    \layout { indent = #0 }
}

\markup { \vspace #3 }

\markup {
    \fill-line {
        \column {
            \line { \bold "2. "
                \column {
                    \line { "Ils n'avaient ni riches buffets," \italic "(bis)" }
                    \line { "Ni verres de Venise," }
                    \line { "Mais ils avaient des gobelets," \italic "(bis)" }
                    \line { "Aussi grands que leurs barbes grises." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column {
                    \line { "Ils ne savaient ni le latin," \italic "(bis)" }
                    \line { "Ni la théologie," }
                    \line { "Mais ils avaient le goût du vin," \italic "(bis)" }
                    \line { "C'était là leur philosophie." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Quand ils avaient quelque chagrin," \italic "(bis)" }
                    \line { "Ou quelque maladie," }
                    \line { "Ils plantaient là le médecin," \italic "(bis)" }
                    \line { "Apothicaire et pharmacie." }
                }
            }
        }
        \column {
            \line { \bold "5. "
                \column {
                    \line { "Et quand le petit dieu Amour," \italic "(bis)" }
                    \line { "Leur envoyait quelque donzelle," }
                    \line { "Sans peur, sans crainte et sans détour," \italic "(bis)" }
                    \line { "Ils plantaient là la demoiselle." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column {
                    \line { "Celui qui planta le Provins," \italic "(bis)" }
                    \line { "Au doux pays de France," }
                    \line { "Dans l'éclat du rubis divin," \italic "(bis)" }
                    \line { "Il a planté notre espérance." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold " " }
            \combine \null \vspace #1
            \line { \bold "   "
                \column {
                    \line { \bold "Amis, buvons à pleins tonneaux," }
                    \line { \bold "Comme des trous, comme des trous, morbleu !" }
                    \line { \bold "L'avenir est à nous, morbleu !" }
                    \line { \bold "L'avenir est à nous !" }
                }
            }
        }
    }
}

\version "2.23.4"

\header {
    title = "Amis buvons"
    composer = "Traditionnel bourguignon"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c'' {
        \key d \minor \time 2/4
        \repeat volta 3 {
            a4 8 8 g4. f8 g8. a16 g8 f e2
            a4 8 8 g4 f8 e f4 g a2
            8 8 g a c4 4 g8 8 f g a4 4
            8 8 g a f4 g8 a g4 a d,2
            d8 e f d a'8. \parenthesize 16 c8 d c4 b! a2
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "R. "
        A -- mis bu -- vons, mes chers a -- mis bu -- vons,
        Mais n'y per -- dons ja -- mais la rai -- son,
        À for -- ce de boi -- re, l'on perd la mé -- moi -- re,
        L'on va ti -- tu -- bant le soir à tâ -- tons.
        Et l'on court les rues \skip 1 à saut de mou -- ton!
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            d2:m c g:m a d:m c d4:m c f2
            s c s f s bes g4:m a:m d2:m
            s f s4 g a2
        }
        \chords {
            a2:m g s4 e:m a2:m s g f4 g a2:m
            s c g a:m s f c d
            d:m a:m f4 g a2:m
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
            \line { \bold "1. "
                \column {
                    \line { "J'en ai tant bu, de ce bon vin nouveau," }
                    \line { "Qu'il m'a troublé l'esprit du cerveau," }
                    \line { "Avant que je meure, servez moi sur l'heure," }
                    \line { "De ce bon vin clair qui brille dans mon verre." }
                    \line { "Et qui fait chanter tous les amants sur terre !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "2. "
                \column { 
                    \line { "Ah ! Si jamais je vais dedans les cieux," }
                    \line { "Je m'y battrai avec le bon Dieu," }
                    \line { "À grands coups de lance, tapant sur les anges," }
                    \line { "Je leur ferai voir que c'est mon devoir" }
                    \line { "De boire du vin du matin au soir !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column {
                    \line { "Ah ! Si jamais je vais dedans l'enfer," }
                    \line { "Je m'y battrai avec Lucifer," }
                    \line { "À grands coups de sabre, tapant sur les diables," }
                    \line { "Je leur ferai voir que c'est mon destin" }
                    \line { "De boire du vin du soir au matin !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
    }
}

\markup { \vspace #3 }
\markup { \fill-line { \column {
    \line { \italic "Il existe deux harmonisations pour cette chanson : je mets les deux." }
    \line { \italic "Les couplets se chantent sur le même air que le refrain." }
}}}
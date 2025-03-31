\version "2.23.4"

\header {
    title = "Passant par Paris"
    composer = "Traditionnel"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c' {
        \time 2/4 \key a \major \partial 4 \repeat volta 4 { 
            e8 8 a4 cis a b8 a e b' b4-- a-- \breathe 
            e8 8 a4 cis a b8 a e b' b4-- a-- \breathe 
            a8 b \time 3/4 cis4-- 4-- 4-- \time 2/4 a8 b cis d cis b
            \magnifyMusic 0.7 { cis-. a-. b-. e-.-^ cis-. a-. e2--~ 4 } b'8 cis |
            d4-- 4-- cis cis8 a e b' b4 a a8 b cis4 e d2~ 4\fermata cis8 a e b' b b 
            a \magnifyMusic 0.7 { cis-. a4~ 4\fermata }
        }
    }}
}

italicOn = { \override LyricText.font-shape = #'italic }
italicOff = { \revert LyricText.font-shape }

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Pas -- sant par Pa -- ris, vi -- dant la bou -- teil -- le,
        pas -- sant par Pa -- ris, vi -- dant la bou -- teil -- le,
        L'un de mes a -- mis me dit à l'o -- reil -- le:
        \italicOn
        \override LyricText.font-size = #-1
        pom pom pom pom pom pom pom...
        \revert LyricText.font-size \italicOff
        \set stanza = "R."
        Le bon vin m'en -- dort, l'a -- mour me ré -- veil -- le,
        Le bon vin m'en -- dort, l'a -- mour me ré -- veil -- le~en -- core!
        \italicOn
        \override LyricText.font-size = #-1
        (en -- core!) __
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            s4 a4 s s s s e:7 a s
            s s s s s e:7 a s s s s
            s s e a:/e e a:/e e s s s
            d: e:7 a s e:7 s a s s a:7 d s s
            a:/e e:7 s a s s
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
                    \line { "L'un de mes amis me dit à l'oreille" \italic "(bis)" }
                    \line { "\"Jean, prends garde à toi, on courtise ta belle.\"" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "\"Jean, prends garde à toi, on courtise ta belle.\"" \italic "(bis)" }
                    \line { "Courtise qui voudra, je me fie en elle !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column { 
                    \line { "Courtise qui voudra, je me fie en elle !" \italic "(bis)" }
                    \line { "J'ai eu de son coeur la fleur la plus belle." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column { 
                    \line { "J'ai eu de son coeur la fleur la plus belle," \italic "(bis)" }
                    \line { "Dans un grand lit blanc gréé de dentelles." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column { 
                    \line { "Dans un grand lit blanc gréé de dentelles," \italic "(bis)" }
                    \line { "J'ai eu trois garçons, tous trois capitaines." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column { 
                    \line { "J'ai eu trois garçons, tous trois capitaines," \italic "(bis)" }
                    \line { "L'un est à Bordeaux, l'autre à La Rochelle." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
        \column {
            \vspace #5.7
            \line { \bold "8. "
                \column { 
                    \line { "L'un est à Bordeaux, l'autre à La Rochelle," \italic "(bis)" }
                    \line { "Troisième à Paris, courtisant les belles." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "9. "
                \column { 
                    \line { "Troisième à Paris, courtisant les belles," \italic "(bis)" }
                    \line { "Le père est ici, tirant la ficelle." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "10. "
                \column { 
                    \line { "Le père est ici, tirant la ficelle," \italic "(bis)" }
                    \line { "Quand il a trois sous, s'en va boire bouteille." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "11. "
                \column { 
                    \line { "Quand il a trois sous, s'en va boire bouteille," \italic "(bis)" }
                    \line { "Quand il n'en a plus, il va chez sa belle." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "12. "
                \column { 
                    \line { "Quand il n'en a plus, il va chez sa belle," \italic "(bis)" }
                    \line { "La vie d'un garçon, bon dieu qu'elle est belle !" }
                }
            }
        }
    }
}

\markup {
    \vspace #3
    \fill-line {
        \line { \bold \italic "Refrain final : "
        \column {
            \line { \bold "Le bon vin m'endort, l'amour me réveille," }
            \line { \bold "Et quand vient l'aurore, l'amour me réveille encore !" }
        }
        }
    }
}
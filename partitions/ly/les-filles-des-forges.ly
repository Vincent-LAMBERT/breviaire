\version "2.23.4"

\header {
    title = "Les filles des forges"
    composer = "Version de Tri Yann"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

reponses = {
    \override Lyrics.LyricText.font-shape = #'italic
}

chant = {
    \revert Lyrics.LyricText.font-shape
}

music = {
    \new Voice = "default" { \relative c' {
        \key a \minor \time 3/4
        \partial 8 e16 16 |
        \tempo "Rapide" 4 = 160
        \repeat volta 7 {
            8 a8 8 g a c b a g4 e8 
            \magnifyMusic 0.75 { 16 16 8 a8 8 g a c b a g4 e }
            a4 b8 c d c b a16[ b] c8 b a g 
            a4 b8 c d c b a16[ b] c8 b a4
            \magnifyMusic 0.75 {
                <e a c>4 q8 8 8 8 <d g b> q16[ q] q8 q <e a c> q
                <e a c>4 q8 8 8 8 }
            \alternative { \volta 1,2,3,4,5,6 { 
                \set Score.repeatCommands = #'((volta "1. — 6.")) \magnifyMusic 0.75 { <d g b> q16[ q] q8 q <c e a>8 } e16[ e] 
                           } 
                           \volta 7 { \magnifyMusic 0.75 { <d g b>8 q16[ q] q8 q <c e a>4\fermata } } } \bar "|."
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Di -- gue -- din don -- don, ce sont les filles des for -- ges,
        \reponses Di -- gue -- din don -- don, ce sont les filles des for -- ges,
        \chant Des for -- ges de Paim -- pont, di -- gue -- din -- don -- dai -- ne,
        Des for -- ges de Paim -- pont, di -- gue -- din don -- don.
        \reponses Des for -- ges de Paim -- pont, di -- gue -- din -- don -- dai -- ne,
        Des for -- ges de Paim -- pont, di -- gue -- din don -- don.
        \set stanza = "2." \chant Di -- gue... \reponses
        -pont, di -- gue -- din don -- don!
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            s8 a1:m g2 a1:m g2
             a2.:m g a:m g2 a4:m
             s2. g2 a4:m s2. g2 a4:m
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
                    \line { "Diguedin dondon elles s'en vont à confesse" \italic "(bis)" }
                    \line { "Au curé du canton, diguedin dondaine," }
                    \line { "Au curé du canton, diguedin dondon." \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "Diguedin dondon, qu'avez-vous fait les filles" \italic "(bis)" }
                    \line { "Pour demander pardon, diguedin dondaine," }
                    \line { "Pour demander pardon, diguedin dondon." \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Diguedin dondon, j'avions couru les bals" \italic "(bis)" }
                    \line { "Et les jolis garçons, diguedin dondaine," }
                    \line { "Et les jolis garçons, diguedin dondon." \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column { 
                    \line { "Diguedin dondon, ma fille pour pénitence," \italic "(bis)" }
                    \line { "Nous nous embrasserons, diguedin dondaine," }
                    \line { "Nous nous embrasserons, diguedin dondon." \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column {
                    \line { "Diguedin dondon, je n'embrasse point les prêtres," \italic "(bis)" }
                    \line { "Mais les jolis garçons, diguedin dondaine," }
                    \line { "Qu'ont du poil au menton, diguedin dondon." \italic "(bis)" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Diguedin dondon, ce sont les filles des forges," \italic "(bis)" }
                    \line { "Des forges de Paimpont, diguedin dondaine," }
                    \line { "Des forges de Paimpont, diguedin dondon !" \italic "(bis)" }
                }
            }
        }
    }
}
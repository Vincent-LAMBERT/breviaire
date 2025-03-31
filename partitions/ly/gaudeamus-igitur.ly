\version "2.23.4"

\header {
    title = "Gaudeamus igitur"
    composer = "Hymne étudiant"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c'' {
        \key g \major \time 3/4
        \set Timing.beamExceptions = #'()
        \set Timing.beatStructure = 1,1,1
        \repeat volta 7 {
            \repeat unfold 2 { g8. d16 4 g4 e8. 16 2
            fis8. g16 a4 fis g8( b) g2 }
            \repeat unfold 2 { fis8. g16 a4 4 b8. g16 a4 \parenthesize 4 }
            g8 fis e( c') b( a) b4( a) g
            g8^\markup { \tiny \italic "ralentir au dernier couplet" } fis e( c') b( a) d4( fis,) g--\fermata
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Gau -- de -- a -- mus i -- gi -- tur, ju -- ve -- nes dum su -- mus!
        Gau -- de -- a -- mus i -- gi -- tur, ju -- ve -- nes dum su -- mus!
        Post ju -- cun -- dam ju -- ven -- tu -- tem, 
        post mo -- les -- tam se -- nec -- tu -- tem,
        nos ha -- be -- bit __ hu -- mus,
        nos ha -- be -- bit __ hu -- mus.
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            g2. c d:7 g s c d:7 g
            d g4:/d d2 d2. g4:/d d2
            g4:/b c s g:/d dis:dim e:m
            g4:/b c s g:/d d:7 g
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

\markup { \vspace #3.5 }

\markup {
    \fill-line {
        \column { }
        \column {
            \line { \bold "2. "
                \column {
                    \line { "Ubi sunt qui ante nos," }
                    \line { "In mundo fuere ?"}
                    \line { "Vadite ad superos," }
                    \line { "Transite ad inferos,"}
                    \line { \concat { "Ubi " \undertie "iam" " " \undertie "fu" \undertie "e" "re," } }
                    \line { \concat { "Ubi " \undertie "iam" " " \undertie "fu" \undertie "e" "re !" } }
                }
                \hspace #1 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.5 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column {
                    \line { "Vita nostra brevis est," }
                    \line { "Brevi finietur,"}
                    \line { "Venit mors velociter," }
                    \line { "Rapit nos atrociter,"}
                    \line { \concat { "Nemi" \undertie "ni" " " \undertie "par" \undertie "ce" "tur," } }
                    \line { \concat { "Nemi" \undertie "ni" " " \undertie "par" \undertie "ce" "tur !" } }
                }
                \hspace #1 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.5 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Vivat academia," }
                    \line { "Vivant professores !"}
                    \line { "Vivat membrum quodlibet," }
                    \line { "Vivat membra quaelibet,"}
                    \line { \concat { "Semper " \undertie "sint" " " \undertie "in" " " \undertie "flo" "re," } }
                    \line { \concat { "Semper " \undertie "sint" " " \undertie "in" " " \undertie "flo" "re !" } }
                }
                \hspace #-5.4 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.5 \italic "(bis)" }
            }
        }
        \column { }
        \column {
            \line { \bold "5. "
                \column {
                    \line { "Vivant omnes virgines," }
                    \line { "faciles, formosae !"}
                    \line { "Vivant et mulieres," }
                    \line { "tenerae, amabiles,"}
                    \line { \concat { "Bonae, " \undertie "la" \undertie "bo" \undertie "rio" "sae," } }
                    \line { \concat { "Bonae, " \undertie "la" \undertie "bo" \undertie "rio" "sae !" } }
                }
                \hspace #1 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.5 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column {
                    \line { "Vivat et respublica," }
                    \line { "Et qui illam regunt !"}
                    \line { "Vivat nostra civitas," }
                    \line { "Maecenatum caritas,"}
                    \line { \concat { "Qui nos " \undertie "hic" " " \undertie "pro" \undertie "te" "gunt," } }
                    \line { \concat { "Qui nos " \undertie "hic" " " \undertie "pro" \undertie "te" "gunt !" } }
                }
                \hspace #-0.75 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.5 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Pereat tristitia," }
                    \line { "Pereant osores !"}
                    \line { "Pereat diabolus," }
                    \line { "Quivit antiburschius,"}
                    \line { \concat { "Atque " \undertie "ir" \undertie "ri" \undertie "so" "res," } }
                    \line { \concat { "Atque " \undertie "ir" \undertie "ri" \undertie "so" "res !" } }
                }
                \hspace #-3.9 \column { \lower #0.8 \right-brace #23 }
                \column { \lower #1.5 \italic "(bis)" }
            }
        }
        \column { }
    }
}

\markup { \vspace #3.5 }
\markup { \fill-line { \column {
    \line { \italic "Les syllabes marquées correspondent à celles liées ensemble à la fin de chaque couplet." }
    \line { \italic "Pour le premier couplet, cela donnerait par exemple" \concat { "\"Nos ha" \undertie "be" \undertie "bit" " " \undertie "hu" "mus\"" } }
}}}
\version "2.23.4"

\header {
    title = "Chanson à boire"
    composer = "Tri Yann"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c'' {
        \key e \minor \time 6/8
        \repeat volta 4 {
            g4. 4 8 a4.~ 4 b8 4. a4( b8) a4. g
            \set melismaBusyProperties = #'()
            g \slurDashed a4( b8) \slurSolid \unset melismaBusyProperties e,4. g fis4.~ 4 e8 2.
            g4. 4 8 a4.~ 4 b8 4. a4( b8) a4. g
            g a4 b8 e,4. g fis4.~ 4 e8 4.\breathe \parenthesize 4.
            \bar "||" \break
            \repeat unfold 2 {
                b'4. a4 g8 fis4.~ 4 g8 a4 g8 fis4 e8 dis2.
                e4 8 4 8 4. dis e4 fis8 g4 a8 fis2.
                g4 8 4 8 a4. b fis4 g8 fis4 e8 2.
            }
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Qui veut chas -- ser __ u -- ne mi -- grai -- ne,
        n'a qu'à boi -- re tou -- jours __ du bon.
        Et main -- te -- nir __ la ta -- ble plei -- ne,
        de cer -- ve -- las et de __ jam -- bon. (Car)
        \set stanza = "R."
        L'eau ne fait rien __ que pour -- rir le pou -- mon,
        Bou -- te, bou -- te, bou -- te, bou -- te com -- pa -- gnon,
        Vi -- de nous ce ver -- re~et nous le rem -- pli -- rons.
        L'eau ne fait rien __ que pour -- rir le pou -- mon,
        Bou -- te, bou -- te, bou -- te, bou -- te com -- pa -- gnon,
        Vi -- de nous ce ver -- re_et nous le rem -- pli -- rons.
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            \repeat unfold 2 { e2.:m s s4. a:/e d:/e e:m c2. a:m b:m e:m }
            \repeat unfold 2 { e:m b:m d4. c:6 b2. e:m c4. b e2.:m b:5 e:m a:m/c b e:m }
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
                    \line { "Le vin goûté par ce bon père" }
                    \line { "Qui s'en rendit si bon garçon," }
                    \line { "Nous fait discourir sans grammaire," }
                    \line { "Et nous rend savant sans leçons." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "Loth, buvant dans une caverne" }
                    \line { "De ses filles enfla le sein." }
                    \line { "Montrant que sirop de taverne" }
                    \line { "Passe celui d'un médecin." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Buvons donc tous à la bonne heure" }
                    \line { "Pour nous émouvoir le rognon," }
                    \line { "Et que celui d'entre nous meure," }
                    \line { "Qui dédiera son compagnon." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
    }
}
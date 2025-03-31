\version "2.23.4"

\paper {
    bottom-margin = 12\mm
}

\header {
    title = "Le plaisir des dieux"
    composer = "Version de Pierre Perret"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

\markup { \vspace #1 }

music = {
    \new Voice = "default" { \relative c' {
        \key g \major \partial 2 \repeat volta 6 {
             r8. b16 b8. c16 |
             d4~ 8. 16 e8. d16 cis8. d16 b'4 g r8. d16 8. g16
             fis4~ 8. e16 d8. e16 d8. c16 b2-- r8. b16 b8. c16
             d4~ 8. 16 e8. d16 cis8. d16 b'4 g r8. d16 8. g16
             fis4~ 8. 16 8. 16 e8. fis16 g2 r8. g16 fis8. a16
             g4 fis8. a16 g4 fis8. a16 g4 4 r8. d16 e8. fis16
             g4~ 8. fis16 g8. fis16 g8. gis16 a2 r8. g16 fis8. e16
             d4~ 8. 16 e8. d16 cis8. d16 b'4 g r8. d16 8. g16
             fis4~ 8. e16 d8. e16 d8. c16 b4 \breathe b-- c-- cis--
             d4~ 8. 16 e8. d16 cis8. d16 b'4 g r8. d16 8. g16
             fis4~ 8. 16 8. 16 e8. fis16 g4 \breathe d b' g a fis g \tuplet 3/2 { d8 e fis } g4^^ r
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Du dieu Vul -- cain, quand l'é -- pou -- se fri -- pon -- ne,
        va bo -- xon -- ner loin de son vieux sour -- nois,
        Le noir é -- poux, que l'a -- mour ai -- guil -- lon -- ne,
        tran -- quil -- le -- ment se po -- lit le chi -- nois.
        "\"Va" -- "t-en,\"" dit -- il à sa fi -- chue fe -- mel -- le,
        "\"Je" me fous bien de ton con chas -- si -- "eux ;"
        De mes cinq doigts, je fais u -- ne pu -- cel -- "le,\""
        Mas -- tur -- bons -- nous, c'est le plai -- sir des dieux,
        De mes cinq doigts, je fais u -- ne pu -- cel -- le,
        Mas -- tur -- bons -- nous, c'est le plai -- sir des dieux.
        C'est le plai -- sir des dieux! Cré -- nom de dieu!
    }
}

\score {
    <<
        \chords {
            s2 g s s s d:7 s g s
            s s s s d:7 s g s
            c c:m g:/b s e:m7 a:7 d:7 s
            g s s s d:7 s g s
            s s s s d:7 s g g:/d d:7 g s
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

\markup {
    \fill-line {
        \column {
            \line { \bold "2. "
                \column {
                    \line { "Bah ! Laissons-lui ce plaisir ridicule," }
                    \line { "Chacun, d'ailleurs, s'amuse à sa façon ;" }
                    \line { "Moi, je préfère la manière d'Hercule," }
                    \line { "Jamais sa main ne lui servit de con." }
                    \line { "Le plus sale trou, la plus vieille fendasse," }
                    \line { "Rien n'échappait à son vit glorieux !" }
                    \line { "Nous serons fiers de marcher sur ses traces," }
                    \line { "Baisons, baisons, c'est le plaisir des dieux." }
                    \line { "C'est le plaisir des dieux ! Crénom de dieu !" }
                }
                \hspace #1 \column { \lower #18.9 \right-brace #23 }
                \column { \lower #19.6 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "Du dieu Bacchus, quand accablé d'ivresse," }
                    \line { "Le vit mollit et sur le con s'endort," \hspace #4 \italic "(en ralentissant)" }
                    \line { \bold "SOIXANTE-NEUF !" "et le vit se redresse," }
                    \line { "Soixante-neuf ferait bander un mort !" }
                    \line { "Ô clitoris, ton parfum de fromage," }
                    \line { "Fait regimber nos engins glorieux." }
                    \line { "À ta vertu, nous rendons tous hommage," }
                    \line { "Gamahuchons, c'est le plaisir des dieux." }
                    \line { "C'est le plaisir des dieux ! Crénom de dieu !" }
                }
                \hspace #-13.8 \column { \lower #18.9 \right-brace #23 }
                \column { \lower #19.6 \italic "(bis)" }
            }
        }
    }
}
\markup {
    \fill-line {
        \column {
            \combine \null \vspace #2
            \line { \bold "4. "
                \column {
                    \line { "Quant à Pluton, le dieu à large panse," }
                    \line { "Le moindre effort lui semble fatigant." }
                    \line { "Aussi veut-il, sans craindre la dépense," }
                    \line { "Faire sucer son pénis arrogant." }
                    \line { "Et nous, rêvant aux extases passées," }
                    \line { "Tout languissants, réjouissons nos yeux," }
                    \line { "En laissant faire une amante empressée." }
                    \line { "Laissons sucer, c'est le plaisir des dieux." }
                    \line { "C'est le plaisir des dieux ! Crénom de dieu !" }
                }
                \hspace #-1.85 \column { \lower #18.9 \right-brace #23 }
                \column { \lower #19.6 \italic "(bis)" }
            }
            \combine \null \vspace #1.5
            \line { \bold "5. "
                \column { 
                    \line { "Pour Jupiter, façon vraiment divine," }
                    \line { "Le con lui pue, il aime le goudron ;" }
                    \line { "D'un moule à merde, il fait un moule à pine," }
                    \line { "Et bat le beurre au milieu de l'étron." }
                    \line { "Cette façon est cruellement bonne," }
                    \line { "Pour terminer un gueuleton joyeux ;" }
                    \line { "Après l'dessert, on s'encule en couronne," }
                    \line { "Enculons-nous, c'est le plaisir des dieux." }
                    \line { "C'est le plaisir des dieux ! Crénom de dieu !" }
                }
                \hspace #-2.3 \column { \lower #18.9 \right-brace #23 }
                \column { \lower #19.6 \italic "(bis)" }
            }
            \combine \null \vspace #1.5
            \line { \bold "6. "
                \column {
                    \line { "Au reste, amis, qu'on en fasse à sa tête," }
                    \line { "Main, con, cul, bouche, au plaisir tout est bon," }
                    \line { "Sur quelqu'autel qu'on célèbre la fête," }
                    \line { "Toujours là-haut, on est sûr du pardon." }
                    \line { "Foutre et jouir : voilà l'unique affaire," }
                    \line { "Foutre et jouir : voilà quels sont nos voeux," }
                    \line { "Foutons, amis, qu'importe la manière," }
                    \line { "Foutons, foutons, c'est le plaisir des dieux." }
                    \line { "C'est le plaisir des dieux ! Crénom de dieu !" }
                }
                \hspace #-2.6 \column { \lower #18.9 \right-brace #23 }
                \column { \lower #19.6 \italic "(bis)" }
            }
        }
    }
}
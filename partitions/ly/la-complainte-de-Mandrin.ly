\version "2.23.4"

\header {
    title = "La complainte de Mandrin"
    composer = "Traditionnel"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c' {
        \key g \major \time 2/4
        \partial 8 d8
        \tempo "Lent" 4 = 80-84
        \repeat volta 9 {
            g8. a16 b8 c d4 8\noBeam 8 e8. d16 c8 a g4 d~ d r8 d
            g8. a16 b8 e d8. c16 b8 a g8. a16 b8 g a4\fermata r8 d,
             << { g8. a16 b8 e d8. c16 b8 a b4 a } 
                { \tweak font-size #-3 b,8. \tweak font-size #-3 d16 \tweak font-size #-3 g8 \tweak font-size #-3 c 
                  \tweak font-size #-3 b8. \tweak font-size #-3 a16 \tweak font-size #-3 g8 \tweak font-size #-3 d 
                  \tweak font-size #-3 g4 \tweak font-size #-3 d } 
             >>
        } 
        \alternative {
            \volta 1,2,3,4,5,6,7,8 { \set Score.repeatCommands = #'((volta "1. — 8.")) <\tweak font-size #-3 b g'>4\fermata r8 d }
            \volta 9 { <\tweak font-size #-3 b g'>2\fermata }
        }
        \bar "|."
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Nous é -- tions vingt ou tren -- te bri -- gands dans u -- ne ban -- de __
        Tous ha -- bil -- lés de blanc, à la mode des, vous m'en -- ten -- dez…
        Tous ha -- bil -- lés de blanc, à la mode des mar -- chands. 
        \set stanza = "2."
        La 
        -du.
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            s8 g2 s a4:m7 d:7 g2 s s4. c8 g2 e4:m7 a:7 d2
            g4. c8 g2 g4:/d d:7 g2 g
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
                    \line { "La première volerie que je fis dans ma vie," }
                    \line { "C'est d'avoir goupillé la bourse d'un, vous m'entendez..." }
                    \line { "C'est d'avoir goupillé la bourse d'un curé." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "J'entrai dedans sa chambre — mon Dieu, qu'elle était grande !" }
                    \line { "J'y trouvai mille écus, je mis la main, vous m'entendez..." }
                    \line { "J'y trouvai mille écus, je mis la main dessus." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "J'entrai dedans une autre — mon Dieu, qu'elle était haute !" }
                    \line { "De robes et de manteaux, j'en chargeai trois, vous m'entendez..." }
                    \line { "De robes et de manteaux, j'en chargeai trois chariots." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column { 
                    \line { "Je les portai pour vendre à la foire de Hollande," }
                    \line { "J'les vendis bon marché, ils n'm'avaient rien, vous m'entendez..." }
                    \line { "J'les vendis bon marché, ils n'm'avaient rien coûté." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column {
                    \line { "Ces messieurs de Grenoble, avec leurs longues robes," }
                    \line { "Et leurs bonnets carrés, m'eurent bientôt, vous m'entendez..." }
                    \line { "Et leurs bonnets carrés, m'eurent bientôt jugé." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Ils m'ont jugé à pendre, ah ! C'est dur à entendre," }
                    \line { "À pendre et étrangler sur la place du, vous m'entendez..." }
                    \line { "À pendre et étrangler sur la place du marché." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "8. "
                \column {
                    \line { "Monté sur la potence, je regardai la France," }
                    \line { "J'y vis mes compagnons à l'ombre d'un, vous m'entendez..." }
                    \line { "J'y vis mes compagnons à l'ombre d'un buisson." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "9. "
                \column {
                    \line { "Compagnons de misère, allez dire à ma mère," }
                    \line { "Qu'elle ne m'reverra plus, j'suis un enfant, vous m'entendez..." }
                    \line { "Qu'elle ne m'reverra plus, j'suis un enfant perdu." }
                }
            }
            \combine \null \vspace #1
            \line { \italic { Les couplets \bold 8. et \bold 9. se chantent plus lentement. } }
        }
    }
}
\version "2.23.4"

\header {
    title = "Chantons pour passer le temps"
    composer = "Chant de marins"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c' {
        \key g \major \time 2/4 \partial 8 d8
        \repeat volta 5 { 
            g4. \parenthesize 8^\markup {  \bold \tiny "2.3.5." } a8 g fis g
            a2 g8 a b c b4 a8 g a4. b8 g8[( fis) e] d 
            g4. \parenthesize 8^\markup {  \bold \tiny "2.3.5." } a8 g fis g
            a2 g8 a b c b4 a8 g a4 4 g2
            b4 4 2 g8 b d c b4 a8 \breathe \parenthesize 8^\markup { \bold \tiny "5." }
            a4 4 4. g8 fis g a b c[( b) a] b
            g4. 8 a g fis g a2 g8 a b c
            b4 a8 g a4. b8 g8[( fis) e] d
            g4. 8 a g fis g a2 g8 a b c
            b4 a8 g <\tweak font-size #-3 d a'>4 q
        }
        \alternative {
            \volta 1,2,3,4 { \set Score.repeatCommands = #'((volta "1. 2. 3. 4.")) <\tweak font-size #-3 b g'>4. d8 }
            \volta 5 { 
                <\tweak font-size #-3 b g'>4. b'8 4. 8
            }
        }
        8 8 c b a2 g8 a b c 
        b4 a8 g a4. b8 g8[( fis) e] d
        g4. 8 a g fis g a2 g8 a b c
        b4 a8 g <\tweak font-size #-3 d a'>4 q
        <\tweak font-size #-3 b g'>2\fermata
        \bar "|."
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Chan -- tons \skip 1 pour pas -- ser le temps,
        les a -- mours loin -- tains d'u -- ne jeu -- ne fil -- le,
        chan -- tons \skip 1 pour pas -- ser le temps,
        les a -- mours loin -- tains d'une fille de vingt ans.
        Aus -- si -- tôt qu'el -- le fut pro -- mi -- se, \skip 1
        aus -- si -- tôt, el -- le chan -- gea de mi -- se,
        Et prit l'ha -- bit de ma -- te -- lot,
        Et vint s'en -- ga -- ger à bord du na -- vi -- re
        Et prit l'ha -- bit de ma -- te -- lot,
        Et vint s'en -- ga -- ger à bord du vais -- seau.
        \set stanza = "2."
        Le
        don. Et vire, et vire et vi -- re donc,
        Sans ça t'au -- ras pas d'vin dans ta ga -- mel -- le, 
        et vire, et vire et vi -- re donc,
        Sans ça t'au -- ras pas d'vin dans ton bi -- don.
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords { s8
            g2 s d s g c:6 d:7
            g s d s g4 e:m7 c:6 d:7 g2
            s s s g4:/d d s2 s s d:7
            g2 s d s g c:6 d:7
            g s d s g2 d:7 g g s s 
            d s g c:6 d:7
            g s d s g2 d:7 g
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
                    \line { "Le capitaine du bâtiment," }
                    \line { "Était enchanté d'un si beau jeune homme," }
                    \line { "Le capitaine du bâtiment," }
                    \line { "Le fit appeler su'l gaillard d'avant." }
                    \line { "Matelot, ton joli visage," }
                    \line { "Tes cheveux et ton joli corsage," }
                    \line { "Me font toujours me souvenant," }
                    \line { "D'une jeune beauté que j'ai tant aimée," }
                    \line { "Me font toujours me souvenant," }
                    \line { "D'une jeune beauté du port de Lorient." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "Monsieur, vous vous moquez de moi," }
                    \line { "Vous me badinez, vous me faites rire," }
                    \line { "Je n'ai ni frère ni parent," }
                    \line { "Et ne suis pas née au port de Lorient." }
                    \line { "Je suis née z'à la Martinique" }
                    \line { "Et même, je suis enfant unique," }
                    \line { "Et c'est un vaisseau hollandais," }
                    \line { "Qui m'a débarquée au port de Boulogne," }
                    \line { "Et c'est un vaisseau hollandais," }
                    \line { "Qui m'a débarquée au port de Calais." }
                }
            }
        }
        \column {
            \line { \bold "4. "
                \column { 
                    \line { "Ils ont bien vécu sept ans," }
                    \line { "Sur le même navire, sans se reconnaître," }
                    \line { "Ils ont bien vécu sept ans," }
                    \line { "Se sont reconnus au débarquement." }
                    \line { "\"Puisqu'enfin, l'amour nous rassemble," }
                    \line { "Nous allons nous marier ensemble," }
                    \line { "L'argent que nous avons gagné," }
                    \line { "Il va nous servir dans notre ménage," }
                    \line { "L'argent que nous avons gagné," }
                    \line { "Il va nous servir à nous marier.\"" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column {
                    \line { "Celui qu'a écrit la chanson," }
                    \line { "C'est le gars Camus, gabier de misaine," }
                    \line { "Celui qu'a écrit la chanson," }
                    \line { "C'est le gars Camus, gabier d'artimon." }
                    \line { "Matelots, faut hisser de la toile," }
                    \line { "Au cabestan, il faut qu'tout l'monde y soye," }
                    \line { "[ Et vire, et vire et vire donc," }
                    \line { "Sans ça t'auras pas d'vin dans ta gamelle;" }
                    \line { "Et vire, et vire et vire donc," }
                    \line { "Sans ça t'auras pas d'vin dans ton bidon. ]" \italic "(bis)" }
                }
            }
        }
    }
}
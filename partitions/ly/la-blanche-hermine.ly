\version "2.23.4"

\header {
    title = "La blanche hermine"
    composer = "Gilles Servat"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

\markup { \vspace #1.5 }

music = {
    \new Voice = "default" { \relative c' {
        \key a \minor 
        \partial 8 \repeat volta 7 {
            c16 b a8 c e d e4 r8 16 16 d8 8 8 c d4 r8 16 16
            c8. 16 8 b8 c4 8 8 b8. g16 8 a a4 r8\fermata e'16 16 
            a8 8 8 g a4 r8 b16 c b8 8 8 a g4 r8 a16 b
            c8 8 8 b a4 8 8 g8. 16 8 a a4 r8\fermata e16 16 \bar "||"
            a8 8 8 g a4 8 b16 c b8 8 r b16 a g4 r8 a16 b
            c8 8 8 b a8. 16 8 8 g8. 16 8 a a4 \tweak X-offset #2 r8\fermata s8
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        J'ai ren -- con -- tré ce ma -- tin de -- vant la haie de mon champ
        U -- ne trou -- pe de ma -- rins, d'ou -- vri -- ers, de pa -- y -- sans.
        \set stanza = "2."
        Où al -- lez -- vous, ca -- ma -- rades, a -- vec vos fu -- sils char -- gés,
        Nous ten -- dons des em -- bus -- cades, viens re -- join -- dre notr -- e~a -- rmée!
        \override LyricText.font-series = #'bold La voi -- là la blan -- che~her -- mi -- ne, vi -- ve la mouette et l'a -- jonc;
        La voi -- là la blan -- che~her -- mi -- ne, vi -- vent Fou -- gères et Clis -- son! 
    }
}

\score {
    <<
        \chords {
            s8 a2:m s g s a:m s g a:m
            s s g s f s e:m a:m
            s s g s f s e:m a:m
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

\markup { \vspace #1.5 }

\markup {
    \fill-line {
        \column {
            \line { \bold "2. "
                \column {
                    \line { "Où allez vous, camarades, avec vos fusils chargés ?" }
                    \line { "Nous tendons des embuscades, viens rejoindre notre armée !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "Ma mie dit que c'est folie d'aller faire la guerre aux Francs," }
                    \line { "Moi, je dis que c'est folie d'être enchaîné plus longtemps !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Elle aura bien de la peine pour élever les enfants," }
                    \line { "Elle aura bien de la peine, car je m'en vais pour longtemps !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column { 
                    \line { "Je viendrai à la nuit noire, tant que la guerre durera," }
                    \line { "Comme les femmes en noir, triste et seule elle attendra !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column {
                    \line { "Et sans doute pense-t-elle que je suis en déraison," }
                    \line { "De la voir mon coeur se serre, là-bas, devant la maison !" }
                }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Et si je meurs à la guerre, pourra-t-elle me pardonner" }
                    \line { "D'avoir préféré ma terre à l'amour qu'elle me donnait ?" }
                }
            }
                        \combine \null \vspace #1
            \line { \bold "8. "
                \column {
                    \line { "J'ai rencontré ce matin, devant la haie de mon champ" }
                    \line { "Une troupe de marins, d'ouvriers, de paysans." }
                }
            }
        }
    }
}

\markup { \vspace #2.5 }
\markup { \column {
    \wordwrap \italic { Les couplets de cette chanson se décalent progressivement : on chantera \bold "1. 2. Refrain" \italic "puis" \concat { \bold "2. 3. Refrain" \italic ", etc." } }
    \vspace #0.5
    \wordwrap \italic { La version de Gilles Servat prend des libertés sur le rythme des paroles : j'ai choisi de représenter une version de base, qui peut être ornementée. }
}}
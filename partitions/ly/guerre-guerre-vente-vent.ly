\version "2.23.4"

\header {
    title = "Guerre, guerre, vente vent"
    composer = "Tri Yann"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c' {
        \key e \minor \time 2/4
        \partial 4 \repeat volta 7 {
            e8 fis a8. g16 fis8 a16 g~ g8. fis16 e8 g16 fis~
            fis8. e16 fis8 d16 d( e4) 
            \magnifyMusic 0.7 { e8 fis a8. g16 fis8 a16 g~ g8. fis16 e8 g
            fis8. e16 fis8 d16 d( e4) }
            e8 g fis8. g16 a8 b16 g~ g8. fis16 e8 16 d~ d8. e16 fis8 d16 d( e4)
            \magnifyMusic 0.7 { e8 g fis8. g16 a8 fis16 g~ g8. fis16 e8 16 d~ d8. e16 fis8 d16 d( e4) }
        }
    }}
}

paroles = {
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        A -- près sept an -- nées de guer -- re, sept an -- nées de bâ -- ti -- ment, 
        \override LyricText.font-shape = #'italic
        A -- près sept an -- nées de guer -- re, sept an -- nées de bâ -- ti -- ment,
        \revert LyricText.font-shape
        Je re -- viens de Gran -- de Ter -- re, je re -- viens __ à Lo -- ri -- ent,
        \override LyricText.font-shape = #'italic
        Je re -- viens de Gran -- de Ter -- re, guer -- re, guer -- re, ven -- te vent.
    }
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            s4 d2:6 c:maj7 d:7/a e:m
            d:6 c:maj7 d:7/a e:m
            b:m7 c:maj7 d e:m
            b:m7 c:maj7 d e4:m
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

\markup { \vspace #2 }

\markup {
    \fill-line {
        \column {
            \line { \bold "2. "
                \column {
                    \line { "J'ai passé des nuits entières debout au gaillard d'avant," \italic "(bis)" }
                    \line { "Sous bon vent, sous vent contraire, sous la brise, sous les brisants," }
                    \line { "Sous bon vent, sous vent contraire, guerre, guerre, vente vent." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "Voyez mon sac de misère, lourd de gourdes, vide d'argent," \italic "(bis)" }
                    \line { "Allez dire au capitaine, j'ai obéi trop souvent," }
                    \line { "Allez dire au capitaine, guerre, guerre, vente vent." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Bonjour ma mie qui m'est chère, revoilà ton cher amant," \italic "(bis)" }
                    \line { "Je suis las de trop de guerres sans voir grandir mes enfants," }
                    \line { "Je suis las de trop de guerres, guerre, guerre, vente vent." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column { 
                    \line { "J'ai reçu tes mille lettres par le rossignol chantant," \italic "(bis)" }
                    \line { "Je t'écrivais moins peut-être, je t'envoyais des rubans," }
                    \line { "Je t'écrivais moins peut-être, guerre, guerre, vente vent." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "6. "
                \column {
                    \line { "Mes amis, plus que naguère, vous me verrez bien souvent," \italic "(bis)" }
                    \line { "Après tant d'années de guerre,j'aurai tant et tant de temps," }
                    \line { "Après tant d'années de guerre, guerre, guerre, vente vent." }
                }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "De Lorient à Grande-Terre, vent arrière, vent avant" \italic "(bis)" }
                    \line { "Les fleurs d'hiver étaient belles, elles annonçaient le printemps," }
                    \line { "Les fleurs d'hiver étaient belles, guerre, guerre, vente vent." }
                }
            }
        }
    }
}
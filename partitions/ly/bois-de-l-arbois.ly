\version "2.23.4"

\header {
    title = "Bois de l'Arbois"
    composer = "Henri Maire"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = { \new Staff = "main" {
    \new Voice = "default" { \relative c'' {
        \key f \major \time 6/8
        \repeat volta 3 {
            a4. 4 8 4 g8 f4 g8 a2. f
            a4. 4 8 4 c8 bes4 a8 g4. \magnifyMusic 0.7 { c4-. 8-. 4.-. } r4.
            a4. 4 8 4 g8 f4 g8 a2. f
            g4. 4 8 4 a8 b4 g8 
            << { \voiceTwo c4. r r4 \oneVoice }
               \new Voice = "alt" { \voiceOne \magnifyMusic 0.7 { r4 c8-. 8-. 8-. 8-. 4->-. } }
            >> c8 4 8 \bar "||" 
            a4 c8 4 8 a4 c8 4 8 d4 c8 bes4 a8 bes4 8 4 8
            g4 bes8 4 8 g4 bes8 4 8 c4 bes8 a4 g8 a4 \breathe c8 4 8
            a4 c8 4 8 a4 c8 4 8 d4 c8 bes4 a8 bes4 8 4 8
            g4 bes8 4 8 g4 c8 4 8 4 bes8 a4 g8 f4. r4 c8 \bar "||" \break
            f4 g8 a4 bes8 c4. c8 bes a bes4. 8 a g a4. f4 \breathe c8
            f4 g8 a4 bes8 c4. c8 bes a bes4. 8 a g f4. r
            f2. a c4 bes8 a4 g8 a4. f
            f2. a c4 bes8 a4 g8 f4. r
            f2. a c4 bes8 a4 g8 a4. f
            f2. a c4 bes8 a4 g8 f4 \magnifyMusic 0.7 { c'8 4 8 f,4. } r 
        }
    }}
}}

paroles = {
    <<
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Sur mon co -- teau, y'a de la vi -- gne,
        Dans mon ton -- neau, y'a le bon vin \markup \italic "(le" \markup \italic "bon" \markup \italic "vin!)"
        Plus j'en bois, plus j'ai bon -- ne mi -- ne,
        Plus j'en bois, plus je me sens bien!
        C'est le bon vin de mon pa -- ys, c'est lui le so -- leil de ma vie,
        C'est mon a -- mi et dans mon coeur, c'est lui qui fait tout mon bon -- heur,
        Quand ma Li -- son me ré -- pond non, c'est en -- core lui qui me dit oui,
        Sau -- tez, bou -- chons, vi -- dez, fla -- cons,
        Chan -- tons, chan -- tons à ma chan -- son.
        \set stanza = "R."
        Dans tous les cas, mon gars, bois de l'Ar -- bois, tu l'au -- ras bel -- le,
        Dans tous les cas, mon gars, plus on en boit, plus on va droit!
        Bois, bois, la vie se -- ra bel -- le,
        Bois, bois, bois du vin d'Ar -- bois!
        Bois, bois, la vie se -- ra bel -- le,
        Bois, bois, bois du vin d'Ar -- bois!
        \markup \italic "(du" \markup \italic "vin" \markup \italic "d'Ar" -- \markup \italic "bois!)"
    }
   
    \new Lyrics \with { alignAboveContext = "main" } \lyricsto "alt" {
        \override LyricText.font-shape = #'italic po -- po -- po -- po -- pom!
    }
    >>
}

\score {
    <<
        \chords {
            f2. s s s s s c:7 s
            \tweak Y-offset #-3 f s s s \tweak Y-offset #-3 g:7 s c c:7
             f s s c:7 s s s f
            s s s c:7 s s s f
            s s c:7 f s s c:7 f
            s s c:7 f s s c:7 f
            s s c:7 f s s c:7 f
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
                    \line { "Sur mon coteau, y'a ma Lisette," }
                    \line { "Sa peau est douce et son teint frais" \italic "(son teint frais !)" }
                    \line { "Elle est si douce et gentillette," }
                    \line { "Que jamais je ne l'oublierai !" }
                    \line { "C'est mon béguin, c'est mon amour," }
                    \line { "Le seul objet de mes désirs," }
                    \line { "Son coeur m'a séduit pour toujours," }
                    \line { "Je lui ferai tout son plaisir." }
                    \line { "Cloches, sonnez, carillonnez," }
                    \line { "Car nous allons nous marier," }
                    \line { "J'aime le vin, mais nom de nom," }
                    \line { "J'aime encore mieux ma Lison !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
        \column {
            \line { \bold "3. "
                \column { 
                    \line { "Sur mon coteau, y'a un pauvre homme," }
                    \line { "Abandonné par sa Lison" \italic "(sa Lison !)" }
                    \line { "Elle l'a trompé, la friponne," }
                    \line { "Avec son ami vigneron !" }
                    \line { "Fini l'amour, plus de jupon," }
                    \line { "Je vais retrouver la raison," }
                    \line { "Et ma raison, c'est le bon vin," }
                    \line { "C'est la vigne et son jus divin." }
                    \line { "Holà, patron, et qu'on me verse," }
                    \line { "Un coup de ce raisin béni," }
                    \line { "Ma vigne est là, c'est ma maîtresse," }
                    \line { "Et le bon vin, c'est mon ami !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
    }
}
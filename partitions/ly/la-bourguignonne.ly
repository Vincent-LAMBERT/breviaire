\version "2.23.4"

\header {
    title = "La Bourguignonne"
    composer = "Traditionnel bourguignon"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c' {
        \key g \major \time 4/4
        \partial 4 d8 g |
        \tempo "Modéré" 4 = 120 \repeat volta 5 {
        b4. c8 b a d,[ fis] a4. b8 g4 d8 g |
        b4. c8 b a d,[ fis] a4. b8 g4 \breathe b8 c |
        d4. e8 d c a[ b] c4. d8 b4 g8 a |
        b4. c8 b a fis[ g] << { \voiceTwo a4. b8 g4 } 
                              \new Voice = "alt" { \voiceOne \override NoteHead.style = #'cross g'4-> 4-> 4-> } >> 
        \oneVoice \breathe d,8 g \bar "||"
        \time 3/4 b4 8. a16 b8 c | b4 a d,8 fis | a4 8 d8 8 8 | 
        \time 4/4 << { \voiceTwo b2. } \new Voice = "alt2" { \voiceOne \override NoteHead.style = #'cross r8 g'8-> 8-> 8-> 4-> } >>
        \oneVoice \breathe d,8 g \time 3/4 b4. a8 b8 c | b4 a d,8 fis | a4 8 d8 8 8 | 
        \time 4/4 << { \voiceTwo g,2 r8 d' d d } \new Voice = "alt3" { \voiceOne \override NoteHead.style = #'cross r8 g8-> 8-> 8-> 4-> } >>
        \oneVoice \bar "||" c,8.( d16) e4-. r8 c c c b8.( c16) d4-. r8 b b b |
        \time 3/4 a4 a8 d8 8 8 \time 4/4 b4( c d8-.) \breathe 8 8 8 |
        c8.( d16) e4-. r8 c c c b8.( c16) d4-. r8 b b b |
        \time 3/4 a4 a8 d8 8 8 \time 4/4 } 
        \alternative { \volta 1,2,3,4 { \set Score.repeatCommands = #'((volta "1. 2. 3. 4.")) g,2 r4 d8 g } \volta 5 { g2.\fermata r4 } }
        \bar "|."
    }}
}

paroles = {
    <<
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Au pied d'u -- ne vi -- gne je na -- qui -- s~un jour,
        Ma mère é -- tait di -- gne de tout mon a -- mour,
        De -- puis ma nais -- san -- ce el -- le m'a nour -- ri,
        En re -- con -- nais -- san -- ce moi je la ché -- ris.
        \markup { \small \bold "R." "Jo" } -- yeux en -- fants de la Bour -- go -- gne,
        je n'ai ja -- mais eu de gui -- gnon,
        Quand je vois rou -- gir ma tro -- gne,
        Je suis fier d'ê -- tre bour -- gui -- gnon.
        Et je suis fie -- er Et je suis fie -- er
        Et je suis fier d'ê -- tre bour -- gui -- gnon __ 
        Et je suis fie -- er Et je suis fie -- er
        Et je suis fier d'ê -- tre bour -- gui -- gnon
        \set stanza = "2." As -- sis...
        gnon!
    }
    \new Lyrics \with { alignAboveContext = "staff" } \lyricsto "alt" {
        \set stanza = "ou 5." \override Lyrics.LyricText.font-shape = #'italic Jus -- qu'au bord!
    }
    \new Lyrics \with { alignAboveContext = "staff" } \lyricsto "alt2" {
        \override Lyrics.LyricText.font-shape = #'italic (Gnon gnon gnon gnon!)
    }
    \new Lyrics \with { alignAboveContext = "staff" } \lyricsto "alt3" {
        \override Lyrics.LyricText.font-shape = #'italic (Et pas de Lyon!)
    }
    >>
}

\markup { \vspace #1 }

lowchords = { 
    \override ChordName.Y-offset = #-5
}

normalchords = {
    \revert ChordName.Y-offset
}

\score {
    \new Staff = "staff" <<
        \chords \with { alignAboveContext = "staff" } {
            s4 g2 d:7 s g s d:7 s g
            \lowchords e:7 a:m d:7 g e:m7 a:7 \normalchords d:7 g
            \lowchords g2. s4 d2 d2.:7 \normalchords g1
            s2. s4 \lowchords d2 d2.:7 \normalchords g1
            c g d2. g2 g:/b
            c1 g d2.:7 g1 g
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
                    \line { "Assis sous la treille, plus heureux qu'un roi" }
                    \line { "Toujours ma bouteille à côté de moi." }
                    \line { "Jamais je n'm'embrouille car chaque matin" }
                    \line { "Je me débarbouille dans un verre de vin !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column { 
                    \line { "Madère et Champagne, approchez un peu !" }
                    \line { "Et vous vins d'Espagne, malgré votre feu," }
                    \line { "Le jus de l'ivrogne réclame ses droits," }
                    \line { "Devant la Bourgogne, saluez trois fois !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
        \column {
            \line { \bold "4. "
                \column { 
                    \line { "Ma femme est aimable et sur ses appas" }
                    \line { "Quand je sors de table je ne m'endors pas," }
                    \line { "Je lui dis, \"Mignonne, je plains ton destin !\"" }
                    \line { "Mais ma Bourguignonne jamais ne s'en plaint." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column {
                    \line { "Puisque tout succombe, un jour je mourrai" }
                    \line { "Jusque dans la tombe toujours je boirai" }
                    \line { "Je veux qu'dans la bière où sera mon corps," }
                    \line { "L'on y mette un verre rempli" \italic "(crié)" \smallCaps "jusqu'au bord !" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
    }
}
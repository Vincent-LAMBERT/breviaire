\version "2.23.4"

\header {
    title = "Le Forban"
    composer = "Chanson de marins" 
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = \new Staff = "main" { 
    \new Voice = "default" { \relative c' {
        \key f \major \time 6/8
        \override BreathingSign.text = \markup {
            \musicglyph "scripts.caesura.straight"
        }
        \partial 4. c8 8 8 |
        \repeat volta 3 {
            f8. 16 8 a f a c4. 8 a f g a bes bes g e f4. c8 8 8
            f8. 16 8 a f a c4. 8 a f g a bes bes g e f4. 8 <\tweak font-size #-3 e g> <\tweak font-size #-3 ees a> 
            <\tweak font-size #-3 d bes'>8. bes'16 8 8 d bes a4.
            <<
                { c8 a f }
                \new Staff \with { 
                    \magnifyStaff #0.63 
                    alignAboveContext = "main" 
                    \omit "Clef" 
                    \remove "Time_signature_engraver"
                } { \override Staff.KeySignature.transparent = ##t 
                    \key f \major c'8^\markup { \italic \tiny "aussi :" } bes a }
            >> g g g g c bes a4. f8 <\tweak font-size #-3 e g> <\tweak font-size #-3 ees a> 
            <\tweak font-size #-3 d bes'>8. bes'16 8 8 d bes a4. c8 a f g a bes bes g e f4. \breathe c8 f a \bar "||"
            c4 8 bes d bes a4 8 c a f g4 8 \appoggiatura { g } c4 bes8 \time 9/8 
            << { \voiceTwo a4 r8 r4. \oneVoice }
               \new Voice = "alt" { \voiceOne \override NoteHead.style = #'cross r8 g'8-> g-> g4.-> }
            >> \breathe c,,8 f a |
            \time 6/8 c4. \override NoteHead.style = #'cross g'8-> 8.-> 16-> 4.-> \revert NoteHead.style c,8 a f 
            g8. a16 bes8 8 g e 
        } \alternative {
            \volta 1,2 { f4.\fermata \breathe c8 8 8 } 
            \volta 3 { f4. \breathe c'8^\markup { \small \bold "Plus lent" } a f }
        }
        g8. a16 bes8 8 g e f2.\fermata
        \bar "|."
    }}
}

paroles = {
    <<
        \new Lyrics \lyricsto "default" {
            \set stanza = "1. "
            À moi for -- ban, que m'im -- por -- te la gloire,
            Les lois du monde et qu'im -- por -- te la mort?
            Sur l'o -- cé -- an j'ai plan -- té ma vic -- toire,
            et bois mon vin dans u -- ne cou -- pe d'or.
            Vi -- vre d'or -- gies est ma seule es -- pé -- rance,
            le seul bon -- heur que j'ai pu con -- qué -- rir;
            Si sur les flots j'ai pas -- sé mon en -- fance,
            c'est sur les flots qu'un for -- ban doit mou -- rir.
            \set stanza = "R." Vins qui pé -- til -- lent, fem -- mes gen -- til -- les, 
            Sous des bai -- sers brû -- lants d'a -- mour,
            Plai -- sirs, ba -- tailles -- \override Lyrics.LyricText.font-shape = #'italic vive la ca -- naille! --
            \revert Lyrics.LyricText.font-shape Je bois, je chan -- te~et je tue tour à tour.
            \set stanza = "2." Peut- -- être au..
            tour. Je bois, je chan -- te~et je tue tour à tour.
        }
        \new Lyrics \with { alignAboveContext = "main" } \lyricsto "alt" { \override Lyrics.LyricText.font-shape = #'italic Oui d'a -- mour! }
    >>
}

\markup { \vspace #0 }

\score {
    <<
        \chords { s4.
            f2. s c:7 f s s c:7 
            \override ChordName.Y-offset = #-5
            f4. f:7 bes2. f c:7
            \revert ChordName.Y-offset f bes f c:7 f
            s4. bes f2. c:7 \tweak X-offset #-1 \tweak Y-offset #-4 f s s s4. 
            \override ChordName.Y-offset = #-5 c2.:7 \revert ChordName.Y-offset f
            s bes4.:6 c:7 f2.
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
                    \line { "Peut-être au mât d'une barque étrangère" }
                    \line { "Mon corps un jour servira d'étendard." }
                    \line { "Et tout mon sang rougira la galère" }
                    \line { "Aujourd'hui fête, et demain le bazar." }
                    \line { "Allons, esclave, allons debout mon brave" }
                    \line { "Buvons le vin et la vie à grand pot" }
                    \line { "Aujourd'hui fête, et puis demain peut-être" }
                    \line { "Ma tête ira s'engloutir dans les flots." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
        \column {
            \line { \bold "3. "
                \column { 
                    \line { "Peut-être un jour, par un coup de fortune," }
                    \line { "Je saisirai l'or d'un beau galion" }
                    \line { "Riche à pouvoir vous acheter la lune," }
                    \line { "Je m'en irai vers d'autres horizons." }
                    \line { "Là, respecté tout comme un gentilhomme," }
                    \line { "Moi qui ne suis qu'un forban, qu'un bandit," }
                    \line { "Je pourrai, comme le fils d'un roi, tout comme," }
                    \line { "Mourir, peut-être, dedans un bon lit." }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
    }
}
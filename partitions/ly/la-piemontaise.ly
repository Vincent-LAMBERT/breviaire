\version "2.23.4"

\header {
    title = "La piémontaise"
    composer = "Auteur anonyme"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

whiteNoteHead = {
    \once \override NoteHead.stencil = #ly:text-interface::print
    \once \override NoteHead.text = \markup {
      \musicglyph "noteheads.s1"
  }
}

music = { \new Staff = "main" {
    <<
    \new Voice = "default" { \relative c' {
        \key g \major \time 2/4
        \partial 4 \repeat volta 8 {
            \voiceTwo d4 | g4. 8 fis g a b g2 d4 \breathe \voiceTwo d
            \voiceOne b'4. 8 a b c b \voiceTwo a2~ 4 \breathe d,
            g <\tweak font-size #-3 d b'> a'8 g fis g 
            <\tweak font-size #-3 
            \tweak NoteHead.stencil #ly:text-interface::print 
            \tweak NoteHead.text \markup { \musicglyph "noteheads.s1" }
            \tweak Dots.transparent ##t c, e>4.( a'8) a g fis e d4 r8 <d \tweak font-size #-3 a'> fis4. d8 
            g4 \breathe d g <\tweak font-size #-3 d b'> a'8 g fis g 
            <\tweak font-size #-3 
            \tweak NoteHead.stencil #ly:text-interface::print 
            \tweak NoteHead.text \markup { \musicglyph "noteheads.s1" }
            \tweak Dots.transparent ##t c, e>4.( a'8) a g fis e d4 r8 
            <\tweak font-size #-3 d a'> <\tweak font-size #-3 d a'>4. <\tweak font-size #-3 d fis>8 <\tweak font-size #-3 d g>2_\fermata 
        }
    }}
    \new Voice = "harmony" { \relative c' { 
        \magnifyMusic 0.7 {
            \voiceOne \once \override NoteColumn.force-hshift = #1.1 d4( | b'4. 8 a b c d b2 g4)
            \voiceOne d' | \voiceTwo g,4. 8 d g a g d2~ 4 \voiceOne d'\(
            b d\) c8 b c d c2~ 8 \override NoteColumn.force-hshift = #0.3 g fis e 
            d4 r8 \revert NoteColumn.force-hshift d'\( d4. c8 
            b4\) d\( b d\) c8 b c d c2~ 8 \override NoteColumn.force-hshift = #0.3 g fis e 
            d4 r8 \revert NoteColumn.force-hshift d'\( d4. 8 b2\)\fermata 
        }
    }}
    \new Voice = "accent" { \relative c'' {
        \magnifyMusic 0.7 {
            \voiceOne s4 s2*6 r8 d d d d4
        }
    }}
    >>
}}

paroles = {
    <<
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Ah, oui, j'ai le coeur à mon ai -- se,
        Quand j'ai ma mie au -- près de moi. __
        De temps en temps je la re -- ga -- rde
        et je lui "dis :" "\"Em" -- bras -- se "moi\""
        De temps en temps je la re -- ga -- rde
        et je lui "dis :" "\"Em" -- bras -- se "moi\"."
    }
    \new Lyrics \with { alignAboveContext = "main" } \lyricsto "accent" {
        \override LyricText.font-shape = #'italic \override LyricText.font-size = #-1.5
        au -- près de moi!
    }
    >>
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            s4 g2 d g s s s d s
            g s a:m/c s d d:7 
            g s s a:m/c s d d:7 g
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

\markup { \vspace #5 }

\markup {
    \fill-line {
        \column {
            \line { \bold "2. "
                \column {
                    \line { "Comment veux-tu que je t'embrasse," }
                    \line { "Quand on me dit du mal de toi ?"}
                    \line { "On dit que tu pars pour la guerre" }
                    \line { "Dans le Piémont servir le roi."}
                }
                \hspace #-1 \column { \lower #7 \right-brace #23 }
                \column { \lower #7.7 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "3. "
                \column {
                    \line { "Ceux qui t'ont dit cela, la belle," }
                    \line { "Ils t'ont bien dit la vérité,"}
                    \line { "Mon cheval est à l'écurie," }
                    \line { "Sellé, bridé, prêt à partir."}
                }
                \hspace #-4 \column { \lower #7 \right-brace #23 }
                \column { \lower #7.7 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "4. "
                \column {
                    \line { "Quand tu seras dans ces campagnes," }
                    \line { "Tu ne penseras plus à moi,"}
                    \line { "Tu penseras aux Piémontaises," }
                    \line { "Qui sont cent fois plus belles que moi."}
                }
                \hspace #1 \column { \lower #7 \right-brace #23 }
                \column { \lower #7.7 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "5. "
                \column {
                    \line { "Si fait, si fait, si fait ma belle," }
                    \line { "Je penserai toujours à toi,"}
                    \line { "Je ferai faire une belle image," }
                    \line { "Toute à la semblance de toi."}
                }
                \hspace #1.3 \column { \lower #7 \right-brace #23 }
                \column { \lower #7.7 \italic "(bis)" }
            }
        }
        \column {
            \line { \bold "6. "
                \column {
                    \line { "Quand je serai à table à boire," }
                    \line { "À mes camarades je dirai,"}
                    \line { "Chers camarades venez voir," }
                    \line { "Celle que mon coeur a tant aimé."}
                }
                \hspace #1.3 \column { \lower #7 \right-brace #23 }
                \column { \lower #7.7 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "7. "
                \column {
                    \line { "Je l'ai aimée, je l'aime encore," }
                    \line { "Je l'aimerai tant que j'vivrai,"}
                    \line { "Je l'aimerai quand je serai mort," }
                    \line { "Si c'est donné aux trépassés."}
                }
                \hspace #1.3 \column { \lower #7 \right-brace #23 }
                \column { \lower #7.7 \italic "(bis)" }
            }
            \combine \null \vspace #1
            \line { \bold "8. "
                \column {
                    \line { "Alors, j'ai versé tant de larmes," }
                    \line { "Que trois moulins en ont tourné,"}
                    \line { "Petits ruisseaux, grandes rivières," }
                    \line { "Pendant trois jours ont débordé."}
                }
                \hspace #1.3 \column { \lower #7 \right-brace #23 }
                \column { \lower #7.7 \italic "(bis)" }
            }
        }
    }
}
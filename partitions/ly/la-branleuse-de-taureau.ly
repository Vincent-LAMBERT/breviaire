\version "2.23.4"

\header {
    title = "La branleuse de taureau"
    composer = "Gérard Doulssane"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = { \new Staff = "main" {
    \new Voice = "default" { \relative c' {
        \key g \major \time 3/4
        \tempo "Valse" 2. = 70
            d4 g a b2 d4 c2 d4 b2 \breathe g4 e2 g4 d2 g4 a g a b2 g4
            d g a b2 d4 c2 d4 b2 \breathe g4 e2 g4 d2 d'4 c b a g2. \bar".|:-||" \break
            \repeat volta 2 {
            <<
              { 
                  d'4 cis e d b g \voiceTwo d2.~ d \oneVoice
                  d'4 cis e d b g \voiceTwo d2.~ d \oneVoice
                  c'4 b d c a fis \voiceTwo d2.~ d \oneVoice
                  c'4 b d c b ais \voiceOne b2.~ b \oneVoice
                  d4 cis e d b g \voiceTwo d2.~ d \oneVoice
                  d'4 e d b c d \voiceOne e2.~ e \oneVoice
              }
              \new Voice = "alt" { \magnifyMusic 0.7 {
                  s2.*2 \voiceOne d,4-. g-. g-. d-. b'-. b-.
                  s2.*2 d,4-. fis-. fis-. d-. a'-. a-.
                  s2.*2 d,4-. fis-. fis-. d-. a'-. a-.
                  s2.*2 \voiceTwo d,4-. g-. g-. d-. b'-. b-.
                  s2.*2 \voiceOne d,4-. g-. g-. d-. b'-. b-.
                  s2.*2 \voiceTwo e,4-. g-. g-. e-. c'-. c-. \break
              }}
            >>
            e4 c g fis a c e d c b2. a4 b c c b c d2. b
            e4 c g fis a c e d c b2. a4 b c c b a g2.~ g \bar "||" \break
            d4 g a b2 d4 c2 d4 b2 \breathe g4 e2 g4 d2 g4 a g a b2 g4
            d g a b2 d4 c2 d4 b2 \breathe g4 e2 g4 d2 d'4 c b a g2. \bar "||" \break
            d'4 4 4 2 4 c2 b4 a2. a4 b a g2 fis4 e fis g a2 d,4
            d4 g a b2 d4 c2 d4 b2 \breathe g4 e2 g4 d g d' c b a g2.\fermata
        }
    }}
}}

paroles = {
    <<
    \new Lyrics \lyricsto "default" {
        \set stanza = "Intro :"
        C'est la bran -- leu -- se de tau -- reau, 
        Qui va, qui vient, qui fait son ou -- vra -- ge,
        C'est la bran -- leu -- se de tau -- reau, 
        Qui va, qui vient, tou -- jours au bou -- lot!
        \set stanza = "1."
        Dans u -- ne fer -- me mo -- dèle __
        De -- puis qu'elle n'est plus pu -- celle __
        Elle ti -- tille a -- vec pas -- sion __
        Pour faire l'in -- sé -- mi -- na -- tion __
        C'est elle qui tire la li -- queur __
        À ces beaux re -- pro -- du -- cteurs __
        Qui ont le gland aus -- si gros qu'un clo -- cher,
        Et les gla -- ouis comme des fes -- ses,
        Si en su -- çant elle a -- vale la fu -- mée,
        Elle est nour -- rie pour l'an -- née! __
        \set stanza = "R."
        C'est la bran -- leu -- se de tau -- reau, 
        Qui va, qui vient, qui fait son ou -- vra -- ge,
        C'est la bran -- leu -- se de tau -- reau, 
        Qui va, qui vient, tou -- jours au bou -- lot!
        Pom -- per la s'men -- ce~à ces bes -- tiaux,
        C'est pas très sain, qu'elle a du cou -- ra -- ge,
        Faut d'l'ex -- pé -- rience et du bri -- o,
        Elle a la main, la bran -- leuse de tau -- reau!
    }
    \new Lyrics \lyricsto "alt" {
        \override LyricText.font-shape = #'italic
        Pipe la pine, pompe le noeud,
        Pipe la pine, pompe le noeud,
        Pipe la pine, pompe le noeud,
        Pipe la pine, pompe le noeud,
        Pipe la pine, pompe le noeud,
        Pipe la pine, pompe le noeud,
    }
    \new Lyrics \lyricsto "default" {
        \repeat unfold 35 { \skip 1 }
        \set stanza = "2."
        Pour ar -- ron -- dir ses fins d'mois __
        Elle va ta -- pi -- ner au bois __
        Sa pe -- tite spé -- cia -- li -- té __
        Lui as -- sure des ha -- bi -- tués! __
        On vient la voir de très loin __
        A -- vec la pin -- e~à la main! __
        Mais elle se marre de -- vant les vits ban -- dés
        sous l'ef -- fet de ses ca -- res -- ses,
        Quand elle com -- pare a -- vec ses bo -- vi -- dés,
        C'est des cure- -- dents pour pyg -- mées! __
    }
    >>
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            g2. s d:7 g c g d:7 g
            s s d:7 g c g d:7 g
            g s s s s s d:7 s
            s s s s s s g s
            s s s s s s c s 
            s d:7 g:/b e:7 a:m7 d:7 g:/b e:7
            c d:7 g:/b e:7 a:m7 d:7 g s
            g s d:7 g c g d:7 g
            s s d:7 g c g d:7 g
            g e:7 a:m d b:7 e:m a:7 d:7
            g s d:7 g c g d:7 g
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}
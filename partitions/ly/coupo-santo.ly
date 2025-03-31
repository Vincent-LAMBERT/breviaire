\version "2.23.4"

\header {
    title = "Coupo Santo"
    composer = "Frédéric Mistral"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c' {
        \key g \major \time 4/4
        \tempo "Assez lent" 4 = 96
        \partial 4 \repeat volta 3 { d8. 16 
            g4 4 4 d g2-- g4 \breathe a8. b16 a4 g fis e d2 r4 8. 16
            g4 4 4 d g2-- g4 \breathe a8. b16 a4 g fis e d2. b'8. c16 
            \bar "||" \break d2-- 4-. b8. c16 d2-- 4-. r4
            2-- c4 b c2. 8. 16 b4 d c b a1
            g2^\markup{ \italic \tiny { "3e fois rall." } } fis8. g16 a8. b16 g2.\fermata
        } 
    }}
}

paroles = {
    <<
    \new Lyrics \lyricsto "default" {
        \set stanza = "1. "
        Prou -- ven -- çau, vei -- ci la Cou -- po
        Que nous vèn di Ca -- ta -- lan,
        A -- de -- rèng be -- gun en trou -- po
        Lou vin pur de no -- ste plan
        \markup { \hspace #-1.5 \small \bold "R." "Cou" } -- po San -- to, E ver -- san -- to,
        Vue -- jo~à plen bord,
        Vue -- jo~a -- bord lis es -- tram -- bord,
        E l'e -- na -- vans di fort!
        fort!
    }
    \new Lyrics \lyricsto "default" {
        \set stanza = "2. "
        D'un vièi po -- ple fièr e li -- bre
        Siam bes -- sai la fi -- ni -- cioun;
        E, se toum -- bon li fe -- li -- bre,
        Toum -- ba -- ra nos -- to na -- cioun.
    }
    \new Lyrics \lyricsto "default" {
        \set stanza = "3. "
        Pèr la glò -- ri dóu ter -- rai -- re
        Vau -- tre~en -- fin que sias coun -- sènt,
        Ca -- ta -- lan, de liuen, o frai -- re,
        Cou -- mu -- nien tóu -- tis en -- sèn!
    }
    >>
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
            s4 \repeat unfold 2 { g2 c4:6 d:7 g1
            e2:m7 a:7 d2. } \alternative { { d4:7 } { s4 } }
            g1 s2. d4:m/f e1:7 a4:m c:m d2:7
            g:/b c a:7/cis d
            g4:/b bes:dim d:7/a d:7
            g2.
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

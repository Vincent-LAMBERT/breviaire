\version "2.23.4"

\header {
    title = "Billy le Bordelais"
    composer = "Joe Dassin"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

music = {
    \new Voice = "default" { \relative c'' {
        \key f \major \time 6/8
        \mergeDifferentlyDottedOn
        \repeat volta 4 { r4 c8 4 bes8 | a4. f | f8 g a g4 f8 g4. c, |
        r4 bes'8 4 a8 g4. e e8 f g f4 e8 f2. r4 c'8 4 bes8 |
        a4. f | f8 g a g4 f8 g4. c, |
        r4 bes'8 4 a8 g4. << { e4. } \new Voice = "alt" { \voiceTwo e4 e8 } >> e8 f g f4 e8 f4 r8 a4.-> bes-> c-> \bar "||"
        d8 8 8 4 8 4 r8 f4.-> c8 8 8 4 8 4 r8 f4.->
        g,4 8 4 a8 bes c bes a4 bes8 c4-. r8 a4.-> bes-> c->
        d8 8 8 4 8 4 r8 f4.-> c8 8 8 4 8 4 r8
        \mergeDifferentlyDottedOn
        << { \stemUp f4.^> \stemNeutral } \new Voice = "alt" { \voiceTwo f4 f8 } >>
        f,4 8 4 g8 a4 bes8 << { \voiceOne c4. } \new Voice = "alt" { \voiceTwo c4 a8 } >> \oneVoice
        g8 a g f4 e8 f4. \once \override NoteHead.style = #'cross g'-> g,8 a g f4 e8 }
        \alternative { \volta 1,2,3 { \set Score.repeatCommands = #'((volta "1. 2. 3.")) f4. b\rest } \volta 4 { f4 \magnifyMusic 0.8 { \stemNeutral c'8-> aes4-> c8-> f,2._-\fermata } } }
        r4 c'8 4 bes8 \bar "||"  \tempo "Plus lent" aes4. f4. 8 g aes g4 f8 g4. c,
        r4 bes'8 4 aes8 g4. e e8 f g f4 e8 f2.
        r4 c'8 4 bes8 aes4. f4. 8 g aes g4 f8 g4. c,
        r4 bes'8 4 aes8 g4. e e8 f g f4 e8 f4 r8 \tempo "A tempo" a!4.->  bes-> c-> \bar "||"
        d8 8 8 4 8 4 r8 f4.-> c8 8 8 4 8 4 r8 f4.->
        g,4 8 4 a8 bes c bes a4 bes8 c4-. r8 a4.-> bes-> c->
        d8 8 8 4 8 4 r8 f4.-> c8 8 8 4 8 4 r8 f4 8
        f,4 8 4 g8 a4 bes8 c4.
        \repeat unfold 2 { g8 a g f4 e8 f4. \once \override NoteHead.style = #'cross g'-> }
        g,8 a g f4 e8 f4 \once \override NoteHead.style = #'cross g'8 \once \override NoteHead.style = #'cross g4.->
        c,8 8 8 d4 e8 f4-> r8 r4. \bar "|."
    } }
}

paroles = {
    <<
        \new Lyrics \lyricsto "default" {
            \set stanza = "1. "
            Dès sa nais -- san -- ce, c'est fou quand on y pen -- se,
            A -- vec vio -- len -- ce, il re -- fu -- sa le lait
            Que sa nour -- ri -- ce, u -- ne fille sans ma -- li -- ce,
            Ve -- nue de Suis -- se, gen -- ti -- ment lui don -- nait;
            Car le bon vin de Saint- -- É -- mi -- lion, Ça vous donne un cœur de lion,
            À con -- di -- tion d'en met -- tre dans les bi -- b'rons,
            C'é -- tait un bé -- bé ni beau ni laid,
            A -- vec de pe -- tits mol -- \set associatedVoice = "alt" lets,
            Mais
            \set associatedVoice = "default" dé -- jà le mon -- de l'ap -- pe -- lait:
            Bil -- ly le Bor -- de -- lais. \markup { \italic Qui? } Bil -- ly le Bor -- de -- lais! lais!
            \repeat unfold 4 { \skip 1 }
            \set stanza = "4. "
            Mes -- sieurs, mes -- da -- mes, voi -- ci la fin du dra -- me:
            L'a -- dieu aux ar -- mes, lais -- sez vos larmes cou -- ler;
            Bil -- ly l'u -- ni -- que, Bil -- ly le ma -- gni -- fi -- que,
            C'est hi -- sto -- ri -- que, est mort as -- sas -- si -- né!
            Car le bon vin de Saint- -- É -- mi -- lion, Ça vous donne un cœur de lion,
            Mais l'en -- ne -- mi guet -- tait le pau -- vre gar -- çon,
            On lui a glis -- sé de -- dans son verre de l'eau à do -- se mor -- telle,
            Il est mort dans un der -- nier glou -- glou,
            Bil -- ly le Bor -- de -- lou. \markup { \italic Qui? }
            Bil -- ly le Bor -- de -- li. \markup { \italic Non. }
            Bil -- ly le Bor -- de -- lon. \markup { \italic Le } \markup { \italic vrai! }
            Bil -- ly le Bor -- de -- lais!
        }
        \new Lyrics \lyricsto "default" {
            \set stanza = "2. "
            \set melismaBusyProperties = #'()
            \override LyricText.self-alignment-X = #CENTER
            L'en -- fant ter -- ri -- ble, a -- vait l'hor -- reur mor -- bi -- de,
            De ce li -- qui -- de, que l'on ap -- pelle de l'eau,
            La plus mau -- vai -- se, é -- tant la flot -- te~an -- glai -- se,
            Bil -- ly à \set associatedVoice = "alt" l'ai -- se, \set associatedVoice = "default" nous ven -- gea de Wa -- ter -- loo!
            \repeat unfold 16 { \skip 1 }
            Ah! Il é -- tait con -- tent le Na -- po -- lé -- on!
            Il dit à Bil -- ly "\"Toi" tu me plais! Pour tout ce que tu as fait,
            Moi je te don -- ne la \set associatedVoice = "alt" Bour -- go -- \set associatedVoice = "default" "gne,\""     
        }
        \new Lyrics \lyricsto "default" {
            \set stanza = "3. "
            De la Ca -- stil -- le, à la mer des An -- til -- les,
            Tou -- tes les fil -- les, de Bil -- ly raf -- fo -- laient.
            Des Mes -- sa -- li -- nes, des rei -- nes~et des tsa -- ri -- nes,
            Des Ur -- su -- li -- nes, tout le mon -- de_y pas -- sait!
            \repeat unfold 16 { \skip 1 }
            Pour trous -- ser les ju -- pons et les co -- til -- lons,
            A -- vec tous les en -- fants qu'il a fait,
            Je me de -- mande si tu n'es
            ou si je ne suis pas \set associatedVoice = "alt" bâ -- tard \set associatedVoice = "default" de
        }
    >>
}
\markup { \vspace #1 }
\score {
    <<
        \chords {
            s2. f2. s c s c:7 s f s |
            f s c s c:7 s f g4.:m7 f:/a
            bes2. s f:/a s g:m c:7 f g4.:m7 f:/a
            bes2. s f:/a s d:m f:/c c:7 f c:7 f f
            f:m s f:m s bes4.:m6 c:7 s2.*3 f2.:m s
            s s bes4.:m6 c:7 s2.*3 f4.:m f g:m7 f:/a
            bes2. s f:/a s g:m c:7 f g4.:m7 f:/a
            bes2. s f:/a s d:m f:/c c:7 f c:7 f c:7 f c:7 f
        }
        \music
        \paroles
    >>

    \layout { indent = #0 }
}
\markup \fill-line { \center-column {
   \line { 
   \column { \line { \smallCaps Envoi : } }
   \column { 
       \line { Prince, Duc ou Marquis, ou Monsieur de Bordeaux, } 
       \line { Ton sang est fait de vin bien plus qu'il ne l'est d'eau. }
       \line { Ainsi je te dédie cette chanson attachante, }
       \line { Espérant que demain, toi aussi, tu la chantes ! }
          } } }
}

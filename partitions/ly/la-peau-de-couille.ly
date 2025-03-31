\version "2.23.4"

\header {
    title = "La peau de couille"
    composer = "Inconnu"
    tagline = "Bréviaire Grenoblois 2022   —   Gravure par Lucie Marien"
}

caesura = {
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \breathe
}

breathing = {
    \revert BreathingSign.text 
    \breathe
}

crossOn = { \override NoteHead.style = #'cross }
crossOff = { \revert NoteHead.style }

music = {
    \new Voice = "default" { \relative c'' {
        \time 6/8 \key f \major
        \tempo "Marche militaire"
        a4. 4 8 4.~ 4 g8 f4 g8 a4 bes8 c4.-- r4 g8
        4 8 4 8 4.~ 4 8 c4 bes8 a4 g8 a4. f \breathe
        a4. 4 8 4.~ 4 g8 f4 g8 a4 bes8 c4.-- r4 g8
        4 8 4 8 4.~ 4 8 c4 bes8 a4 g8 f4. r \bar "||" \time 2/4
        a8-. 8-. c4-- a16 c a f c4-- 8-. c'-. c,-. c'-. a4 \parenthesize f4
        a-- c-- a16 c a f c4-- 8-. c'-. c,-. c'-. f,4-- r \bar "||"
        a8-. 8-. 8.-- g16 8-. f-. f4-- c8-. f-. f8.-- g16 f8-. e-. e4--
        bes'8-. 8-. 8.-- a16 g8-. 8-. 4-- c,8-. g'-. c,-. g'-. g f f4-- 
        \crossOn bes16 16 16 16 8-. 8-. 16 16 16 16 8-. \parenthesize g8-. bes16 16 16 16 8-. 8-. 16 16 16 16 4-^
        \crossOff \bar "||"
        f8-. 8-. 16 g f g a8-. f-. c4 c'8. bes16 a8-. g-. a4-- f--
        f8-. 8-. 16 g f g a8-. f-. c4 c'8. bes16 a8-. g-. f8 a f4
        c8-. f-. f4-- f8-. e-. g4-- c,8-. g'-. g a g-. f-. a a
        c,8-. f-. f4-- f8-. e-. g4-- c8. bes16 a8-. g-. f8-. a-. f-. \breathe r16 c
        c8-. f-. f8. g16 f8-. e-. g4-- c,8-. g'-. g a g-. f-. a\noBeam r16 c,
        c8-. f-. f8. g16 f8-. e-. g4-- c8. bes16 a8-. g-. f8-. a-. f-. r\fermata \bar "||" \time 3/4
        \tempo "Plus lent" 
        c4 g8 bes a g f4\glissando c'2--\fermata \breathe
        c'4 g8 bes a g f4\glissando c2--\fermata \breathe \time 2/4
        c'4-^-. \tuplet 3/2 4 { g8 bes a f4 8 a8 g f c'4 f,8 a g f c'4 f,8 a g f } c'4\fermata f8^\p e
        d c bes a d8.\fermata 16^\f c8. bes16 a4-^-. c-^-. f-^-. r \bar "||"
        \tempo "A tempo"
        \crossOn
        bes,4^> r bes4^> r bes16-^ 16 16 16 8 16 16 8 16 16 8 16 16 8-. 8-^-. 8-^-. 16 16 8-. 8-^-. 4-^-.
        bes4^> r bes4^> r bes16-^ 16 16 16 8 16 16 8 16 16 8 16 16 8-. 8-^-. 8-^-. 16 16 8-. 8-^-. 8-^-. \noBeam
        \crossOff
        c,16 16 f8-. a-. f-. c16 16 f8-. a-. f-. c16 16 f8-. a-. f8-. a-. c4-^ r8 f,16 16 
        8-. c16 16 8-. a'16 16 8-. f16 16 8-. c'16 16 8-. bes-. a-. g-. f-^-.\noBeam \breathe f[\( e ees]\) \bar "||"
        d4\( 4 8[ ees e f] bes4-^-.\) 8-. 8~ 4. g8 a4 8 8~ 4. f8 g4 8 8~8\noBeam f[\( e ees]\)
        d4\( 4 8[ ees e f] bes4-^-.\) 8-. 8~ 4. f8 a4 8 8~ 4 g8 f ees'4-^ d8 c bes4 r \bar "||"
        \crossOn
        bes4^> r bes^> r f'8-^ d16 c bes8 16 16 8-. 8-. 8-. 16 16 8-. 8-. 8-. 16 16 8-. 8-. 4-^-.
        4^> r bes4^> r8 bes8-. 8-.-^ 16 16 8-. 8-. 8-.-^ 16 16 8-. 8-. 8-.-^ 16 16 8-. 8-. 4-.-^ \caesura
        
        \tuplet 3/2 { 8^\markup { \italic \small "parlé, rythme approximatif" } 8 8 } 4 \tuplet 3/2 { 8 8 8 } 4
        \tuplet 3/2 { 8 8 8 } 4 \tuplet 3/2 { 8 8 8 } 4 \caesura
        \tuplet 3/2 { 8^\markup { \italic \small "plus rapidement" } 8 8 } 8 8 8 8
        8 8 8 8 8 8 8 8 4-^-.^\markup { \tiny "parlé :" \italic \tiny "Oh yaïe yaïe yaïe..." }  r
        \tempo "Lent" r4 \crossOff
        \tuplet 3/2 { c8 8 8 } c2--
        f,8-^-. r f-^-. r \tuplet 3/2 { c f a } f4--\fermata 
        f8\( a c a f4-- c--\)
        << { \voiceTwo f8 f c c f2-- f8 f c c f2-- \oneVoice }
           \new Voice = "harm" { \voiceOne \magnifyMusic 0.7 { c'8 8 bes bes a2-- c8 8 bes bes a2-- } } 
           >> \bar "||"
        \tempo "A tempo" \crossOn
        bes4^> r bes^> r bes8-^-. 16 16 8-. 8-. 8-. 8-. 8-^-. 16 16
        8-. 8-. 8-^-. 16 16 8-. 8-. 8-^-. 16 16 8-. 8-. 4--
        bes4^> r bes4^> r bes4^> \crossOff \tuplet 3/2 { r4 c,8-. } \bar "||" \time 6/8
        f-. c-. f-. a-. c-. a-. f4.-- r4 c8
        a'4-. f8 4 c8 a'4-. f8 f4. c'8-^-. r4 c8-^-. r4 c8-^-. r4 r8^\p c, c
        f f f c c c a' a a f-^-. r4 a4^\f f8 c4 f8 a4.-^ f8 \breathing \crossOn f^\p_\markup { \italic \small "à moitié parlé" } a 
        c c c c a f c c c c-^-. r4 \crossOff c'8^\f 8 8 8 8 8 f,-^\noBeam \magnifyMusic 0.7 { c( d e f g) }
        a4 f8 c4 f8 a4.-^ f8-. r4 c'4-. 8 c a f c' a f c-.-^ r4
        a'4 f8 c4 f8 a4.-^ f8-. r4 c'4-. 8-. 4-. 8-. f,4. r \bar "||"
        \repeat unfold 3 { c8-. c-. c-. f-. c-. a-. } c-. c-. c-. f-.-^ r4
        <<
            { \voiceOne \repeat unfold 3 { g8-. g-. g-. a-. g-. f-. } g-. a-. g-. f-.-^ \oneVoice }
            \new Voice = "harm" { \voiceTwo \magnifyMusic 0.7 { \repeat unfold 3 { c8-. c-. c-. f-. c-. a-. } c-. f-. c-. a-.-^ } }
        >> r4
        \repeat unfold 3 { c8-. c-. c-. f-. c-. a-. } c-. c-. c-. f-.-^ r4
        <<
            { \voiceOne \repeat unfold 2 { g8-. g-. g-. a-. g-. f-. }  g8-. g-. g-.^\markup { \italic \small "rall. molto" } a-. g-. f-. g a b c4.--\fermata }
            \new Voice = "harm" { \voiceTwo \magnifyMusic 0.7 { \repeat unfold 3 { c,8-. c-. c-. f-. c-. a-. } c f d e4.--\fermata } }
        >> \bar "||"
        \tempo "Lent"
        <<
            { 
                \voiceOne f4 g8 a4 8 g a g f4 c8 f4 g8 a4 8 g a g f4.--~ 8 r4 \oneVoice
            }
            \new Voice = "harm" { \magnifyMusic 0.7 { \voiceTwo
                a,4 bes8 c4 8 bes c bes a4 s8 a4 bes8 c4 8 bes c bes a4.--~ 8 r4                               
            }}
        >>
        f'4_\p g8 | a4 8 c f, g a4 8 f4 g8 a4 8 g c, g' f4.--\fermata r4 c8
        f f f f4 8^\markup { \italic \tiny "ou : \"Qui n'avait pas peur\"" } g g g g4 8 a a a c\( bes\) a g a f g4. c,4\fermata c'8^\mf c a c
        c2.--~ 4 8 c a c c2.--~ 4 a8 a f a a2.--~ 4 8 g c, g' f4.--\fermata \caesura
        f4 g8 | a4 8 c f, g a4 8 f4 g8 a4 8 a g f g2.--~ 4. f8 f g
        a4 8 c f, g a4 8 f f g a bes a g c, g' f2.--
        r4 c'8 8 a c c2.~ 4 8 c a c c2.~ 4. f,8 f g 
        a4 8 c f, g a4 8 f f g a c c c bes a 
        << { \voiceOne g2.--~ 4. }
           \new Voice = "alt" { \voiceTwo \magnifyMusic 0.7 {
               r8 c, c c4.~ 4.
           }}
        >> \oneVoice f8 f g
        a4 8 c f, g a4 8 c c bes a c a g f g f2.--
        r4 c'8 8 a c c2.~ 4 8 c a c c2.~ 4. r \caesura \bar "||" \time 2/4 \tempo "A tempo"
        c,8-. a'-. a8.-^ g16 g8-. f-. f4-^
        e8\( f\) g-. g-. f\( g\) a-. a-.
        c,8-. a'-. a8.-^ g16 g8-. f-. f4-^
        e8\( f\) g-. bes-. a-. g-. f4-^ \breathing
        c8-. c-. c-. d-. e-. f-. g-. g-.
        e-. e-. e-. f-. g-. a-. bes-. bes-. \breathing
        c,8-. a'-. a8.-^ g16 g8-. f-. f4-^
        e8\( f\) g-. g-. f\( g\) a-. a-.
        c,8-. a'-. a8.-^ g16 g8-. f-. f4-^
        e8\( f\) g-. bes-. a-. g-. f4-^ \breathing \bar "||"
        c8-. f-. a-. a16 g f8-. d-. c4-^\glissando c'8-^-. 8-. 8-. 8-. c16 bes a g a8-. f-.
        c8-. f-. a16-. 16 16 g f8-. d-. c4-^\glissando c'8-^-. 8-. 16 bes a g f8-. a-. f4-^
        c8-. a'-. a8.-^ g16 g8-. f-. f4-^
        f16 f e f g8-. 8-. g16 g f g a8-. 8-.
        c,8-. a'-. a8.-^ g16 g8-. f-. f4-^
        f16 f e f g8-. bes-. a-. g-. f4-^
        c8-. a'-. a8.-^ g16 g8-. f-. f4-^
        f16 f e f g4-- g16 g f g a4--
        c,8-. a'-. a8.-^ g16 g8-. f-. f4-^
        f16 f e f g8-. bes-. a-. g-. \tuplet 3/2 { f4-^ c8 } \bar "||" \time 6/8
        a'4-. c,8 f4-. c8 a'4-. c,8 f4-. r8
        c'4-^ 8 8-. 8-. 8-. a4.-- f8 r c 
        a'4-. c,8 f4-. c8 a'4-. c,8 f4-. r8
        c'4-^ 8 8-. 8-. 8-. f,-. \breathe c d e f g 
        a-.-^\noBeam c, d e f g a-.-^\noBeam c, d e f g 
        a-.-^\noBeam c, d e f g a4-.-^ 8-. 4-. 8-. c4.-^ 4.-^ bes-^ a-^ 
        g8-.\noBeam \repeat unfold 4 { c-. c-. c-. c-. c-. c-.-^\noBeam } r8 g-. g4-. 8-.
        bes4.-^ bes-^ a-^ g-^ f4-^ \breathe c8 a'4-. c,8 \time 9/8 f4-. c8 a'4-. c,8 f4-. r8 \time 6/8
        c'4-^ 8 8-. 8-. 8-. a4.-- f8 r c 
        a'4-. c,8 f4-. c8 a'4-. c,8 f4-. r8
        c'4-^ 8 8-. 8-. 8-. f,-.-^ r4 r4. \bar "||"
        c'4-. 8-. 8 bes a bes4-. 8-. 8 a g
        a4-. 8-. 8 g f g4-. e8-. c4.--
        f4-. g8-. a g f g4 c8-^ 4.-^
        f,4-. g8-. a g f g4 c8-^ 4.-^
        c4-. 8-. 8 bes a bes4-. 8-. 4.
        r4 g8 a4 bes8 a4.-- g-- f4 \breathe c8 a'4-. c,8 \time 9/8 f4-. c8 a'4-. c,8 f4-. r8 \time 6/8
        c'4-^ 8 8-. 8-. 8-. a4.-- f8 r c 
        a'4-. c,8 f4-. c8 a'4-. c,8 f4-. r8
        c'4-^ 8 8-. 8-. 8-. <f, \parenthesize f'>-.-^ r r4\fermata c \bar "||" \time 3/4 \tempo "Lent et romantique"
        <<
            { \voiceOne f2. g a~ 2 4 bes2 4 a( g) a g2.~ 4 \oneVoice }
            \new Voice = "harm" { \voiceTwo \magnifyMusic 0.7 {
                a,2. c f~ 2 4 g2 e4 f( c) f e2.~ 4
            }}
        >> r4
        << { 
            \voiceTwo c4 d2. <\tweak font-size #-3 c e> <\tweak font-size #-3 c f>4 <\tweak font-size #-3 e g> 
            <\tweak font-size #-3 ees a> d4 <\tweak font-size #-3 bes g'> \oneVoice r8 \voiceTwo <\tweak font-size #-3 g \tweak font-size #-3 d' bes'>
            <\tweak font-size #-3 c a'>2.( <\tweak font-size #-3 c g'>) <\tweak font-size #-3 f, \tweak font-size #-3 c' f>~ q4 \oneVoice
           }
           \new Voice = "harm" { \voiceOne \magnifyMusic 0.7 {
               c''4 b2. bes! a4 bes c bes d s8 g <c, f>2.( <bes e>) <a f'>2.~ q4 
           }}
        >> r2 \bar ".|:-||" \break \time 2/4 \tempo "Comme une prière"
        \repeat volta 3 {
            f8 8 8 8 8 8 8 8 2( g) f-- \breathe
            f4 f8 e d d e f g4( e) c2-- \caesura \crossOn
            bes'4-> r bes-> r \crossOff \bar "||" \time 6/8 \tempo "Tempo I"
            a4. 4 8 4.~ 4 g8 f4 g8 a4 bes8 c4.-- r4 g8
            4 8 4 8 4.~ 4 8 c4 bes8 a4 g8 a4. f \breathe
            a4. 4 8 4.~ 4 g8 f4 g8 a4 bes8 c4.-- r4 g8
            4 8 4 8 4.~ 4 8 
            \alternative {
                \volta 1,2 { c4 bes8 a4 g8 f4. r }
                \volta 3 { c'4.-^ 4.-^ <\tweak font-size #-3 b d>-^ <\tweak font-size #-3 bes e>-^ 
                           <\tweak font-size #-3 a f'>2.-^~ 2.~ 2.~ 8 r4 r4.\fermata \bar "|." }
            }
        }
    }}
}

italicOn = { \override LyricText.font-shape = #'italic }
italicOff = { \revert LyricText.font-shape }

paroles = {
    <<
    \new Lyrics \lyricsto "default" {
        Y'a qu'la peau d'couille pour con -- ser -- ver l'ta -- bac,
        Voi -- là, voi -- là, voi -- là, __ la chan -- son mi -- li -- tai -- re!
        Y'a qu'la peau d'couille pour con -- ser -- ver l'ta -- bac,
        Voi -- là, voi -- là, voi -- là, __ la chan -- son du sol -- dat.
        Moi j'm'en fous, j'ai du poil au cul, ça m'tient chaud l'hi -- ver !
        L'é -- té, j'me les fais cou -- per, pour mieux res -- pi -- rer.
        Tiens Ma -- rie, voi -- là cent sous, pompe moi l'noeud, rends- -- moi trois francs,
        Non mon -- sieur, c'est bien trop peu, pour pom -- per un si gros noeud!
        \italicOn
        Poil au bar -- bi -- zon, mon cul sur la com -- mo -- de!
        Poil au bar -- bi -- zon, mon cul sur les rous -- tons!
        \italicOff
        Tri -- pote moi la bite a -- vec les doigts, ah la belle bi -- bi -- te!
        Tri -- pote moi la bite a -- vec les doigts, ah la belle bi -- bi -- te~en bois!
        L'as tu vu? Oui j'l'ai vu! L'a -- bri -- cot d'la can -- ti -- niè -- re,
        L'as tu vu? Oui j'l'ai vu! Son p'tit a -- bri -- cot fen -- du!
        Il est tout noir, il est tout blanc, l'a -- bri -- cot d'la can -- ti -- nière,
        Il est tout noir, il est tout blanc, il est fen -- du par de -- vant!
        Ma mère, j'ai l'con qui bail -- le,
        Ma fille, fous- -- y d'la pail -- le.
        Ah! Cré -- nom de nom, quelle drôle d'in -- ven -- tion que d'al -- ler s'faire foutre de la paille dans l'con!
        J'ai -- m'rais mieux un bien gros vit qu'toute la paille du pa -- ys!
        \italicOn
        Oui! Non! Oui nous en a -- vons, des ga -- melles, des bi -- dons,
        des ga -- melles plein l'cul, des bi -- dons plein l'con!
        Oui! Non! Oui nous en a -- vons, des ga -- melles, des bi -- dons,
        des ga -- melles plein l'cul, des bi -- dons plein l'con!
        \italicOff
        Trou du cul, poil, poil, trou du cul, poil, poil, trou du cul, poil poil par -- tout!
        Par de -- vant, par der -- rière, par des -- sus, par des -- sous, 
        trou du cul, poil, poil par -- tout! La -- la -- la
        Si ma femme a cent qua -- rante de tour, c'est pas d'ma faute, c'est pas d'ma faute, la -- la -- la
        Si ma femme a cent qua -- rante de tour, c'est pas d'ma faute, c'est d'la faute à l'a -- mour!
        \italicOn
        Re! Re! Re -- gar -- d'~la donc la p'tite bonne du s'cond,
        qu'a les yeux bra -- qués sur~l' -- troi -- sième bou -- ton.
        De la bra -- guette de ton pan -- ta -- qui, de ton pan -- ta -- quoi, de ton pan -- ta -- lon.
        Cré -- nom d'un chien, comme elle est bien,
        nom d'un bor -- del, comme elle est belle,
        Cré -- nom de dieu, les jo -- lis yeux,
        cré -- nom d'un chien, j'la baise -- rais bien!
        \italicOff
        Elle est pu -- celle?
        Vous! Vous! Vous vous trom -- pez!
        J'sens ma queue qui s'dres -- se dans mon pan -- ta -- lon.
        Dans mon pan -- ta -- lon.
        \italicOn
        Ra! Ra! Ra -- bats -- -la donc ta queue d'co -- chon dans ton pan -- ta -- qui,
        dans ton pan -- ta -- quoi, dans ton pan -- ta -- lon. Ra! Ra! Ra! \italicOff
        Y'a -- t-il des co -- cus par -- mi nous?
        Les -- quels que c'est? Les -- quels que c'est? Tous! Tous! Tous!
        Ce n'est pas par le cul que se font les co -- cus, traîne tes couilles par ter -- re!
        Mais c'est bien par le con que les co -- cus se font, ra -- bats les donc tes rous -- tons! \skip 1
        Traîne tes couilles par ter -- re, prends ta pin -- e~à la main, mon cou -- sin!
        Nous par -- tons en guer -- re con -- tre les pu -- tains!
        L'as -- -tu con -- nue la pu -- tain de Nan -- cy 
        qu'a fou -- tu la vé -- role à tou -- t'la ca -- va -- l'rie?
        Les cui -- ras -- siers, qu'é -- taient pas dé -- gour -- dis, 
        s'é -- taient pas a -- per -- çus qu'ell -- e~a -- vait mal au cul!
        Et les hus -- sards, qu'é -- taient plus dé -- mer -- dards, 
        s'en é -- taient a -- per -- çus mais il é -- tait trop tard!
        C'sont les dra -- gons, qu'é -- taient pas des couil -- lons, 
        qu'ont fou -- tu la pu -- tain à la porte du bo -- xon!
        Bai -- se, bai -- se, Ma -- rie -- -Thé -- rè -- se,
        Bai -- seras -- -tu le trou de mon cul? __
        \tweak LyricText.Y-offset #2 Quand \tweak LyricText.Y-offset #2 je bande, ma pine touche mon ven -- tre, 
        quand j'bande plus, ma pine touche mon cul.
        C'é -- tait un chas -- seur, qui~é -- tait plein d'ar -- deur,
        Qui s'bran -- lait la pi -- ne dans sa ca -- ra -- bi -- ne.
        Le fou -- tre cou -- lait, __
        Dans le bas -- si -- net, __
        Ser -- vant de li -- queur, __
        Aux au -- tres chas -- seurs.
        Quand je ban -- de, je me de -- man -- de, où ma pi -- ne va s'ar -- rê -- ter. __
        De mon vit fer -- me, jail -- lit le sper -- me, com -- me la sour -- ce jail -- lit du ro -- cher.
        Chas -- seur as -- -tu vu __
        le trou de mon cul __
        Il est o -- va -- le, mon trou de bal -- le, il n'est ni rond ni car -- ré ni poin -- tu __
        Il est o -- va -- le, mon trou de bal -- le, il est o -- va -- le le trou de mon cul.
        Chas -- seur as -- -tu vu __
        le trou de son cul __
        Trou du cul d'la mère Ca -- mus, elle est mor -- te, elle est mor -- te,
        Trou du cul d'la mère Ca -- mus, elle est morte, elle pè -- tera plus!
        Quand elle s'en va à la mes -- se, tout ça lui bat dans les fes -- ses!
        Trou du cul d'la mère Ca -- mus, elle est mor -- te, elle est mor -- te,
        Trou du cul d'la mère Ca -- mus, elle est morte, elle pè -- tera plus!
        Ma grand -- -mère m'a fait voir son cul,
        Ah! bon dieu, bon dieu qu'il é -- tait lar -- ge,
        Mon grand -- -père joue au bil -- lard des -- sus,
        Ah! bon dieu qu'il é -- tait large son cul!
        Le trou -- trou de grand -- -ma -- man,
        Fait le -- ver la bi -- te, fait le -- ver la bi -- te,
        Le trou -- trou de grand -- -ma -- man,
        Fait le -- ver la bi -- te~à grand -- -pa -- pa!
        La bi -- bi -- te~à grand -- -pa -- pa,
        Fait mouil -- ler le trou, fait mouil -- ler le trou,
        La bi -- bi -- te~à grand -- -pa -- pa,
        Fait mouil -- ler le trou de grand -- -ma -- man! La
        bite, la bite, la bite, la bite, C'est la bite à mon pè -- re!
        La bite, la bite, la bite, la bite, C'est la bite à pa -- pa!
        C'est la bite à mon père, c'est la bite à pa -- pa,
        c'est la bite à mon père, c'est la bite à pa -- pa, qui fait plai -- sir à ma ma -- man,
        C'est la bite à mon père, c'est la bite à pa -- pa,
        c'est la bite à pa -- pa, c'est la bite à mon père, qui fait plai -- sir à ma ma -- man! La
        bite, la bite, la bite, la bite, C'est la bite à mon pè -- re!
        La bite, la bite, la bite, la bite, C'est la bite à pa -- pa!
        Non ma -- man, ne pleu -- rez pas tant, nous al -- lons cou -- per la bi -- te~à Ber -- trand.
        Mais a -- vant de la lui cou -- per, nous al -- lons la lui at -- ta -- cher,
        At -- ta -- cher la bi -- te~à Ber -- trand,
        A -- vec un ru -- ban blanc! La 
        bite, la bite, la bite, la bite, C'est la bite à mon pè -- re!
        La bite, la bite, la bite, la bite, C'est la bite à pa -- pa!
        Cha -- grin d'a -- mour, ne du -- re qu'un mo -- ment;
        Plai -- sir d'a -- mour du -- re tou -- te la vi -- e! __
        \set stanza = "1."
        Par -- mi tous les a -- ni -- maux qui pi -- ssent.
        Y'a qu'la femme qui foute la chaude -- -pi -- sse.
        \markup \italic "Oui!" \markup \italic "Mais :"
        \set stanza = "R."
        Y'a qu'la peau d'couille pour con -- ser -- ver l'ta -- bac,
        Voi -- là, voi -- là, voi -- là, __ la chan -- son mi -- li -- tai -- re!
        Y'a qu'la peau d'couille pour con -- ser -- ver l'ta -- bac,
        Voi -- là, voi -- là, voi -- là, __ la chan -- son du sol -- dat.
        chan -- son du sol -- dat! __
    }
    \new Lyrics \lyricsto "alt" {
        \override LyricText.font-shape = #'italic
        \override LyricText.font-size = #-3
        (ni poin -- tu) __
    }
    >>
}

\markup { \vspace #1 }

\score {
    <<
        \chords {
        f2. s s c c:7 s s f 
        s s s c c:7 s s f
        s2 s c:7 f s s c:7 f
        s s f4:/a aes:dim c2:7/g c:7 s s f
        r2 s s s
        f s c:7 f s s c:7 f
        s c:7 s f s c:7 s f
        s c:7 s f s c:7 s f
        c2.:7 f c:7 f
        c4:7 s f s c f c f c s bes s d:7 s g:9 c:7 f s
        r2 s2*11
        f2 s s c f s c:7 f4 f:7 
        bes2 s s s f:7 s bes s 
        s s s s f:7 s s bes 
        r s2*19
        c2:7 s f s s s s4 c:7 f s s c:7 f s 
        r2 s2*9
        f2. s s s c s
        f s s s s s c:7 f s s s s s s c:7 f
        s s s s c s s s4. f
        s2. s s s c s s g4.:7 c
        f s c:7 f s s c:7 f s s 
        s s s s s c:7 f s
        s d:m bes:6 c:7 f s g:7 c s c:dim 
        c:7 s s c:dim c:7 s s f:/c s s s c:7 f s
        s s s s s g:7 c s c:7 s 
        f s s s s c:7 f s s c:dim
        c:7 s s c:dim c:7 s s s 
        f s s s s s c s c:7 s
        f s s s s c:7 f s s c:dim
        c:7 s s c:dim c:7 s s s
        f2 s c:7 f s s c:7 s4 f
        c2:7 s s s 
        f2 s c:7 f s s c:7 s4 f
        s s bes f c:7 s s f
        s s bes f c:7 s f s
        \repeat unfold 4 { s s s s s c:7 s f }
        s4. s s s c s f s s s s s c s f s
        s s s s s s s s s f:/a c:7/g f c s
        s s s s s s s s c:7 s d:m7 c:7/e
        f s s s s c s f s 
        s s s s c s f s
        f2.:/a c:7/g f c f c f c
        f:/a c:7/g s g4.:9 c:7
        f s s s s c s f s 
        s s s s c s f s
        s2. c:7 f s c:7 f c s
        g:7 c:7 f2 f4:7 bes2.:6
        f:/c c:7 f s
        f2 bes f c:7 f d:m7 g:7 c:7 s r s
        f2. s s c c:7 s s f 
        s s s c c:7 s s f
        c g4.:7/c c:7 f s s2.*3
        }
        \music
        \paroles
    >>
    
    \layout { indent = #0 }
}

\markup { \vspace #2 }

\markup {
    \fill-line {
        \column { }
        \column {
            \line { \bold "2. "
                \column {
                    \line { "Parmi tous les animaux qui chient," }
                    \line { "Il n'y a qu'la femme qui se l'essuie." }
                    \line { \italic "Oui ! Mais :" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
        \column { }
        \column {
            \line { \bold "3. "
                \column {
                    \line { "Parmi tous les animaux qui baisent," }
                    \line { "Y'a qu'la femme qui demande d'la braise." }
                    \line { \italic "Oui ! Mais :" }
                }
            }
            \combine \null \vspace #0.2
            \line { \bold "Refrain" }
        }
        \column { }
    }
}
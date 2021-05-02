DECLARE SUB atlas ()
DECLARE SUB psyche ()
DECLARE SUB asclepios ()
DECLARE SUB thanatos ()
DECLARE SUB nertus ()
DECLARE SUB nibelungen ()
DECLARE SUB foudre ()
DECLARE SUB glace ()
DECLARE SUB feu ()
0 do3% = 262: re3% = 294: mi3% = 330: fa3% = 349: so3% = 392: la3% = 440: si3% = 494:
do4% = 523: re4% = 587: mi4% = 659: fa4% = 698.5: so4% = 784: la4% = 880: si4% = 988:
nom$ = "Atmos"
enn$ = "Wyglerm"
ennm$ = "õ"
hpE = 130
hp = 150
mp = 1500
arme = 15
force = 5
mana = 15
dec = 17
forcenn = 10
pot = 1
sau = 1
'                  tyg = 150: CLS :                     GOTO 6
1 t = 9
If hp < 0 Then
    Locate 10, 30
    Print "Perdu !"
    Sleep 1
    GoTo 0
End If
Cls
Locate 2, 5
Print nom$
Locate 2, 15
Print "Hp :"; hp, "Mp :"; mp
Locate 3, 5
Print tyg; " Tygs"
Locate 2, 50
Print enn$
Locate 2, 60
Print hpE; " Hp"
Locate 10, 10
Print Chr$(2)
Locate 10, 60
Print ennm$
Locate 3, t
Color 7, 1
Locate 15, 5
Print nom$; " peut attaquer : "
Locate 16, 5
Print " 1"; Chr$(16); " Attaque           "
Locate 17, 5
Print " 2"; Chr$(16); " Magie             "
Locate 18, 5
Print " 3"; Chr$(16); " Objet             "
Locate 19, 5
Print " 4"; Chr$(16); " Fuite             "
Color 7, 0
chx$ = Input$(1)
If chx$ = "1" Then
    GoTo 1.1
End If
If chx$ = "2" Then
    GoTo 1.2
End If
If chx$ = "3" Then
    GoTo 1.3
End If
If chx$ = "4" Then
    GoTo 1.4
End If
GoTo 2

1.1 Randomize Timer
If Rnd > .8 Then
    Print "Attaque ‚chou‚e"
    Sleep 2
    GoTo 2
Else
    att = Int(Rnd * force + arme)
    Sound fa4%, .5
    Sound so4%, .5
    Sound la4%, .5
    Sound si4%, .5
    hpE = hpE - att
    Locate 1, 59
    Color 4
    Print "-"; att
    Locate 10, 60
    Color 0
    Print ennm$
    Sleep 1
    Locate 10, 60
    Color 7
    Print ennm$
    Color 7
    Sleep 1
    GoTo 2
End If

1.2 magie = 0
Locate 16, 29
Print " 0"; Chr$(16); "Retour"
Locate 17, 29
Print " 1"; Chr$(16); "Brasier    7Mp"
Locate 18, 29
Print " 2"; Chr$(16); "Glacier    8Mp"
Locate 19, 29
Print " 3"; Chr$(16); "Foudre     10Mp"
Locate 20, 29
Print " 4"; Chr$(16); "Atlas      16Mp"
Locate 16, 48
Print " 5"; Chr$(16); "Ascl‚pios  18Mp"
Locate 17, 48
Print " 6"; Chr$(16); "Psych‚     25Mp"
Locate 18, 48
Print " 7"; Chr$(16); "Thanatos   37Mp"
Locate 19, 48
Print " 8"; Chr$(16); "Nertus     54Mp"
Locate 20, 48
Print " 9"; Chr$(16); "Nibelungen 87Mp/450Hp "
Locate 21, 48
chx$ = Input$(1)
mps = mp
If chx$ = "0" Then
    GoTo 1
End If
If chx$ = "1" Then
    magie = 7
    mp = mp - 7
End If
If chx$ = "2" Then
    magie = 10
    mp = mp - 8
End If
If chx$ = "3" Then
    magie = 15
    mp = mp - 10
End If
If chx$ = "4" Then
    magie = 20
    mp = mp - 16
End If
If chx$ = "5" Then
    magie = 27
    mp = mp - 18
    Randomize Timer
    matka = Int(Rnd * 2) + 1
    mag = matka * magie + mana
End If
If chx$ = "6" Then
    magie = 31
    mp = mp - 25
End If
If chx$ = "7" Then
    magie = 45
    mp = mp - 37
End If
If chx$ = "8" Then
    magie = 51
    mp = mp - 54
End If
If chx$ = "9" Then
    magie = 110
    mp = mp - 87
    hp = hp - 450
End If

If mp < 0 Then
    mp = mps
    Print "Mp insuffisant"
    Sleep 1
    GoTo 1
End If
If chx$ = "1" Then
    feu
End If
If chx$ = "2" Then
    glace
End If
If chx$ = "3" Then
    foudre
End If
If chx$ = "4" Then
    atlas
End If
If chx$ = "5" Then
    asclepios
    Locate 1, 18
    Color 2
    Print "+"; mag
    hp = hp + mag
    Color 7
    Sleep 1
    GoTo 2
End If
If chx$ = "6" Then
    psyche
End If
If chx$ = "7" Then
    thanatos
End If
If chx$ = "8" Then
    nertus
End If
If chx$ = "9" Then
    nibelungen
End If
Randomize Timer
matka = Int(Rnd * 2) + 1
mag = matka * magie + mana
hpE = hpE - mag
Color 4
Print "-"; mag
Color 7
Sleep 1
GoTo 2

1.3 Locate 16, 29
Print " 0"; Chr$(16); "Retour"
If pot > 0 Then
    Locate dec, 29
    dec2 = dec2 + 1
    Print dec2; Chr$(16); "Potion     "; pot
End If
cho$ = Input$(1)
GoTo 2

1.4 Sound 40, 1
Sound 32000, 1
Sound 40, 1
Sound 32000, 1
Sound 40, 1
Sound 32000, 1
Sound 40, 1
Sound 32000, 1
Sound 40, 1
Sound 32000, 1
End

2 t = 9
If hpE <= 0 Then
    Locate 13, 5
    Print "Gagn‚ !"
    Sleep 1
    GoTo 3
End If
Cls
Locate 2, 5
Print nom$
Locate 2, 15
Print "Hp :"; hp, "Mp :"; mp
Locate 3, 5
Print "ATB"
Locate 2, 50
Print enn$
Locate 2, 60
Print hpE; " Hp"
Locate 10, 10
Print Chr$(2)
Locate 10, 60
Print ennm$
Print enn$; " attaque !"
Randomize Timer
If Rnd > .8 Then
    Print "Attaque ennemie ‚chou‚e"
    Sleep 2
    GoTo 1
Else
    atqen = forcenn + Int(Rnd * 2) + 1
End If
hp = hp - atqen
Sound la4%, .5
Sound si4%, .5
Sound la4%, .5
Sound si4%, .5
Locate 1, 18
Color 4
Print "-"; atqen
Color 7
Locate 10, 10
Print Chr$(1)
Sleep 1
GoTo 1

3 If niv >= 2 Then
    GoTo 4
End If
niv = 2
enn$ = "Yuikono"
ennm$ = Chr$(143)
hpE = 170
hp = 167
mp = 18
arme = 15
force = 7
mana = 17
forcenn = 14
zly = zly + 12
GoTo 1

4 If niv >= 3 Then
    GoTo 5
End If
niv = 3
enn$ = "Hijor"
ennm$ = Chr$(157)
hpE = 230
hp = 194
mp = 21
arme = 15
force = 9
mana = 19
forcenn = 18
zly = zly + 20
GoTo 1

5 If niv >= 4 Then
    GoTo 6
End If
niv = 4
enn$ = "Thyrgall"
ennm$ = Chr$(182)
hpE = 250
hp = 236
mp = 24
arme = 15
force = 11
mana = 21
forcenn = 19
zly = zly + 31
GoTo 1

6
Cls
Color 7, 1
Locate 1, 25
Print "Vous ˆtes a Tyrgana"
Color 7, 0
Locate 3, 3
Print "Enfin un temps de repos !"
Locate 5, 1
Print "Tyrgana est une belle ville r‚put‚e pour son vin de Forklok, ses insectes a la  sauce de yuigal et son march‚e annuel."
Locate 7, 2
Print "Que faire ?"
Print "  1"; Chr$(16); " Aller faire des emplettes"
Print "  2"; Chr$(16); " Se renseigner sur Thigor"
Print "  3"; Chr$(16); " Sauvegarder"
Print "  4"; Chr$(16); " Faire l'inventaire"
Print "  0"; Chr$(16); " Quitter la ville car l'odeur du Miodisk frit te r‚pugne"
a1$ = Input$(1)
If a1$ = "1" Then
    GoTo 6.1
End If
If a1$ = "2" Then
    GoTo 6.2
End If
If a1$ = "3" Then
    GoTo 6.3
End If
If a1$ = "4" Then
    GoTo 6.4
End If
If a1$ = "0" Then
    GoTo 7
End If

6.1 Cls
Print "Il y a plein de chose a acheter, c'est incroyable !"
Print ""
Print "      Nom               Effet             Prix"
Print "  1"; Chr$(16); " Potion            hp + 50           10 Tyg"
Print "  2"; Chr$(16); " Kryzor           hpMax + 5%         20 Tyg"
Print "  3"; Chr$(16); " KryzorMagik      mpMax + 7%         25 Tyg"
Print "  4"; Chr$(16); " Miodisk              ???            26 Tyg"
Print "  5"; Chr$(16); " Vin de Forklok       ???            29 Tyg"
Print "  6"; Chr$(16); " Ivoir de Niork     Aucun !    85000000 Tyg"
Print "  0"; Chr$(16); " Rien acheter"
Print "  Tyg(s) poss‚d‚s : "; tyg
tygS = tyg
a2$ = Input$(1)
If a2$ = "0" Then
    GoTo 6
End If
If a2$ = "1" Then
    pot = pot + 1
    tyg = tyg - 10
    GoTo 6.11
End If
If a2$ = "2" Then
    Color 14
    Print "Hp avant :"; hp
    Khp = Int(hp / 100) * 5
    hp = hp + Khp
    Print "Hp aprŠs :"; hp
    Color 7
    tyg = tyg - 20
    Sleep 2
    GoTo 6.11
End If
If a2$ = "3" Then
    Color 14
    Print "Mp avant :"; mp
    Kmp = mp / 100 * 7
    mp = mp + Int(Kmp)
    Print "Mp aprŠs :"; mp
    Color 7
    tyg = tyg - 25
    Sleep 2
    GoTo 6.11
End If
If a2$ = "4" Then
    Print "Beurk ! Comment mettre 26 Tygs dans ‡a !"
    Sleep 2
    tyg = tyg - 26
    GoTo 6.11
End If
If a2$ = "5" Then
    Print "Mhhh! Tu navais jamais bu un aussi bon cru !"
    Color 14
    Print "hpMax + 50"
    hp = hp + 50
    Color 7
    Sleep 2
    tyg = tyg - 29
    GoTo 6.11
End If
If a2$ = "6" Then
    Print "Acheter ‡a ? S–rement pas !"
    Sleep 2
    GoTo 6.1
End If
6.11 If tyg < 0 Then
    Print "Tyg insuffisant"
    tyg = tygS
    Sleep 2
    GoTo 6.1
Else
    GoTo 6.1
End If
   
6.2
6.3 Cls
Print "Sauvegarde,"
Print "   D‚sirez vous sauvegarder ? [O/N]"
a3$ = Input$(1)
If a3$ = "o" Then
    GoTo 6.31
Else
    GoTo 6
End If
6.31 Print "   Vous reprendrez cette partie sous "; nom$; sau
Open nom$ + sau$ + ".str" For Output As #1
Print
Print #1, nom$
Print #1, hp
Print #1, mp
Print #1, arme
Print #1, force
Print #1, mana
Print #1, dec
Print #1, tyg
Print #1, invent

Close #1
6.4
7

DefSng A-Z
Sub asclepios
    bl = 32000
    d0 = 262: re = 294: mi = 330: fa = 349: so = 392: la = 440: si = 494:
    Color 9
    Locate 9, 10
    Print "*"
    Locate 11, 10
    Print "*"
    Color 10
    Locate 10, 8
    Print "*"
    Locate 10, 12
    Print "*"
    Sound d0, 1
    Sound bl, .5
    Sound re, 1
    Sound bl, .5
    Sound mi, 1
    Color 10
    Locate 9, 10
    Print "*"
    Locate 11, 10
    Print "*"
    Color 9
    Locate 10, 8
    Print "*"
    Locate 10, 12
    Print "*"
    Sound bl, 1
    Sound re, 1
    Sound bl, .5
    Sound mi, 1
    Sound bl, .5
    Sound fa, 1
End Sub

Sub atlas
    bl = 32000
    do3 = 262: re3 = 294: mi3 = 330: fa3 = 349: so3 = 392: la3 = 440: si3 = 494:
    do4 = 523: re4 = 587: mi4 = 659: fa4 = 698.5: so4 = 784: la4 = 880: si4 = 988:
    Color 14
    Locate 9, 10
    Print "Ï"
    Locate 11, 10
    Print "Ï"
    Color 6
    Locate 10, 8
    Print Chr$(174)
    Locate 10, 12
    Print Chr$(175)
    Sound la3, 1
    Sound bl, .5
    Sound si3, 1
    Sound bl, .5
    Sound so3, 1
    Sound bl, .5
    Sound so3, 1
    Sound bl, .5
    Sound la3, 1
    Sound bl, .5
    Sound si3, 1
    Sound bl, .5
    Sleep 2
    Locate 4, 60
    Print "o"
    Sound 2000, 3
    a1 = 0
    Locate 4, 60
    Print " "
    Locate 5, 60
    Print "o"
    Sound 1975, 2.5
    a1 = 0
    Locate 5, 60
    Print " "
    Locate 6, 60
    Print "o"
    Sound 1950, 2
    a1 = 0
    Locate 6, 60
    Print " "
    Locate 7, 60
    Print "o"
    Sound 1925, 1.5
    a1 = 0
    Locate 7, 60
    Print " "
    Locate 8, 60
    Print "o"
    Sound 1900, 1
    a1 = 0
    Locate 8, 60
    Print " "
    Locate 9, 60
    Print "o"
    Sound 1875, .5
    a1 = 0
    Locate 9, 60
    Print " "
    a1 = 0
    esp = 45
    For dr2 = 1 To 30
        Color 14
        Locate 11, 55
        Print "^ ^ ^ ^ ^ ^ ^ "
        Sound 40, .5
        Locate 11, 55
        Color 6
        Print " ^ ^ ^ ^ ^ ^ ^"
        Sound 50, .5
    Next dr2
    Locate 11, 55
    Color 0
    Print " ^ ^ ^ ^ ^ ^ ^"
    Locate 1, 59

End Sub

Sub feu
    bl = 32000
    do3 = 262: re3 = 294: mi3 = 330: fa3 = 349: so3 = 392: la3 = 440: si3 = 494:
    do4 = 523: re4 = 587: mi4 = 659: fa4 = 698.5: so4 = 784: la4 = 880: si4 = 988:
    Color 4
    Locate 9, 10
    Print "*"
    Locate 11, 10
    Print "*"
    Locate 10, 8
    Print "*"
    Locate 10, 12
    Print "*"
    Sound do3, 1
    Sound bl, .5
    Sound do3, 1
    Sound bl, .5
    Sound do3, 1
    Sound bl, .5
    Sound mi3, 1
    Sound bl, .5
    Sound so3, 1
    Sound bl, .5
    Sleep 1
    Locate 10, 12
    Print "**********************************************"; Chr$(6)
    Sound 2000, 5
    Locate 11, 60
    Print Chr$(6); Chr$(6); Chr$(6)
    Locate 10, 58
    Print Chr$(6); Chr$(6)
    Locate 10, 61
    Print Chr$(6); Chr$(6); Chr$(6)
    Locate 9, 60
    Print Chr$(6); Chr$(6); Chr$(6)
    Sound 40, 2
    Sound 70, 2
    Sound 50, 2
    Sound 60, 2
    Sound 40, 2
    Sound 70, 2
    Sound 50, 2
    Sound 60, 2
    Sound 40, 2
    Sound 70, 2
    Sound 50, 2
    Locate 1, 59
End Sub

Sub foudre
    do3 = 262: re3 = 294: mi3 = 330: fa3 = 349: so3 = 392: la3 = 440: si3 = 494:
    do4 = 523: re4 = 587: mi4 = 659: fa4 = 698.5: so4 = 784: la4 = 880: si4 = 988:
    bcl = 0
    a1 = 3
    a2 = 14
    Color 3
    Locate 9, 10
    Print Chr$(159)
    Locate 11, 10
    Print Chr$(159)
    Color 14
    Locate 10, 8
    Print "Ï"
    Locate 10, 12
    Print "Ï"
    Sound do3, .5
    Sound fa3, 1
    Sound mi3, .75
    Sound do3, .5
    Sound fa3, 1
    Sound mi3, .75
    Sleep 1
    1.01 If a1 = 3 Then
        a1 = 14
    Else
        a1 = 3
    End If
    If a2 = 3 Then
        a2 = 14
    Else
        a2 = 3
    End If
    Locate 4, 60
    Sound 40, .3
    Color a1
    Print " >"
    Locate 5, 60
    Color a2
    Print "<"
    Locate 6, 60
    Color a1
    Print " >"
    Sound 150, .5
    Locate 7, 60
    Color a2
    Print "<"
    Locate 8, 60
    Color a1
    Print " >"
    Locate 9, 60
    Color a2
    Print "<"
    Locate 1, 59
    If bcl = 20 Then
        Sleep 1
        Locate 10, 58
        Print "*"
        Locate 10, 62
        Print "*"
        Sound do3, .5
        Sound mi3, .5
        Sound so4, .5
        Sound mi3, .5
        Sound do3, .5
        GoTo 1.02
    Else
        bcl = bcl + 1
        GoTo 1.01
    End If
    1.02 Locate 1, 59
End Sub 

Sub glace
    do3 = 262: re3 = 294: mi3 = 330: fa3 = 349: so3 = 392: la3 = 440: si3 = 494:
    do4 = 523: re4 = 587: mi4 = 659: fa4 = 698.5: so4 = 784: la4 = 880: si4 = 988:
    Color 3
    Locate 9, 10
    Print Chr$(15)
    Locate 11, 10
    Print Chr$(15)
    Locate 10, 8
    Print Chr$(15)
    Locate 10, 12
    Print Chr$(15)
    Sound mi3, .5
    Sound re3, .5
    Sound fa3, .5
    Sound mi3, .5
    Sleep 1
    Locate 10, 12
    Print Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(4); Chr$(31)
    Sound 1000, 1
    Sound do3, .5
    Sound 1000, 1
    Sound do3, .5
    Sound 1000, 1
    Sound 1000, 1
    Sound do3, .5
    Sound do3, .5
    Locate 9, 58
    Print Chr$(4); Chr$(4); Chr$(4); Chr$(4)
    Locate 10, 59
    Print Chr$(4)
    Locate 10, 61
    Print Chr$(4); Chr$(4); Chr$(4)
    Locate 11, 60
    Print Chr$(4); Chr$(4); Chr$(4); Chr$(4)
    Sleep 1
    Locate 1, 59
End Sub

Sub nertus
    bl = 32000
    do1 = 65: re1 = 74: mi1 = 83: fa1 = 87: so1 = 98: la1 = 110: si1 = 123:
    do2 = 131: re2 = 147: mi2 = 165: fa2 = 175: so2 = 196: la2 = 220: si2 = 247:
    d0 = 262: re = 294: mi = 330: fa = 349: so = 392: la = 440: si = 494:
    dop = 523: rep = 587: mip = 659: fap = 698.5: sop = 784: lap = 880: sip = 988:
    Color 14
    Locate 9, 10
    Print Chr$(189)
    Color 4
    Locate 11, 10
    Print Chr$(146)
    Color 6
    Locate 10, 8
    Print Chr$(209)
    Color 2
    Locate 10, 12
    Print Chr$(208)
    Sound fa1, 1: Sound bl, .5: Sound mi1, 1: Sound bl, .5: Sound la1, 1:
    Sound bl, .5: Sound si1, 1: Sound bl, .5: Sound do1, 1: Sound bl, .5: Sound fa2, 1:
    Locate 10, 8
    Print Chr$(189)
    Color 4
    Locate 10, 12
    Print Chr$(146)
    Color 6
    Locate 11, 10
    Print Chr$(209)
    Color 2
    Locate 9, 10
    Print Chr$(208)
    Sound bl, .5: Sound mi2, 1: Sound bl, .5: Sound la2, 1: Sound bl, .5: Sound si2, 1: Sound bl, .5:
    Sound do2, 1: Sound bl, .5: Sound fa, 1: Sound bl, .5: Sound mi, 1: Sound bl, .5: Sound la, 1:
    Locate 9, 10
    Print Chr$(189)
    Color 5
    Locate 10, 12
    Print Chr$(146)
    Color 13
    Locate 11, 10
    Print Chr$(209)
    Color 14
    Locate 10, 8
    Print Chr$(208)
    Sound bl, .5: Sound si, 1: Sound bl, .5: Sound d0, 1: Sound bl, .5: Sound fap, 1:
    Sound bl, .5: Sound mip, 1: Sound bl, .5: Sound lap, 1: Sound bl, .5: Sound sip, 1:
    Locate 9, 10
    Print Chr$(189)
    Color 3
    Locate 11, 10
    Print Chr$(146)
    Color 1
    Locate 10, 8
    Print Chr$(209)
    Color 8
    Locate 10, 12
    Print Chr$(208)
    Sound bl, .5: Sound dop, 1: Sound bl, .5:
    Sleep 1
    inc = 13
     
    0.02 If m = 24 Then
        GoTo 0.03
    End If
    Color 8
    Locate 10, inc
    inc = inc + 1
    Print ")"
    Sound 50, 1
    Color 0
    Locate 10, inc - 1
    Print ")"
    Color 8
    Locate 10, inc
    inc = inc + 1
    Print "("
    Sound 70, 1
    Color 0
    Locate 10, inc - 1
    Print "("
    m = m + 1
    GoTo 0.02

    0.03 If inc2 > 25 Then
        GoTo 0.06
    End If
    Randomize Timer
    Locate 10, 60
    Print "O"
    0.04 x = Int(Rnd * 12) + 1
    If x < 8 Then
        GoTo 0.04
    End If
    0.05 y = Int(Rnd * 65) + 1
    If y < 55 Then
        GoTo 0.05
    End If
    son3 = Int(Rnd * 100) + 40
    col2 = (Rnd * 15) + 1
    Color col2
    Locate x, y
    Print Chr$(15)
    Sound son3, .5
    inc2 = inc2 + 1
    GoTo 0.03

    0.06 Locate 1, 59

End Sub

Sub nibelungen
    bl = 32000
    do3 = 262: re3 = 294: mi3 = 330: fa3 = 349: so3 = 392: la3 = 440: si3 = 494:
    do4 = 523: re4 = 587: mi4 = 659: fa4 = 698.5: so4 = 784: la4 = 880: si4 = 988:
    Color 4
    Locate 9, 10
    Print "*"
    Locate 11, 10
    Print "*"
    Locate 10, 8
    Print "*"
    Locate 10, 12
    Print "*"
    Sound do3, 1
    Sound bl, .5
    Sound do3, 1
    Sound bl, .5
    Sound do3, 1
    Sound bl, .5
    Sound mi3, 1
    Sound bl, .5
    Sound so3, 1
    Sound bl, .5
    Sleep 1
    Locate 10, 12
    Print "**********************************************"; Chr$(6)
    Sound 2000, 5
    Locate 11, 60
    Print Chr$(6); Chr$(6); Chr$(6)
    Locate 10, 58
    Print Chr$(6); Chr$(6)
    Locate 10, 61
    Print Chr$(6); Chr$(6); Chr$(6)
    Locate 9, 60
    Print Chr$(6); Chr$(6); Chr$(6)
    Sound 40, 2
    Sound 70, 2
    Sound 50, 2
    Sound 60, 2
    Sound 40, 2
    Sound 70, 2
    Sound 50, 2
    Sound 60, 2
    Sound 40, 2
    Sound 70, 2
    Sound 50, 2
    Locate 1, 59

End Sub

Sub psyche
    bl = 32000
    do3 = 262: re3 = 294: mi3 = 330: fa3 = 349: so3 = 392: la3 = 440: si3 = 494:
    do4 = 523: re4 = 587: mi4 = 659: fa4 = 698.5: so4 = 784: la4 = 880: si4 = 988:
    Color 1
    Locate 9, 10
    Print "|"
    Locate 11, 10
    Print "|"
    Locate 10, 12
    Print Chr$(196)
    Locate 10, 8
    Print Chr$(196)
    For son = 200 To 250
        Sound son, .5
    Next son
    Color 3
    Locate 8, 10
    Print "o"
    Locate 12, 10
    Print "o"
    Locate 10, 6
    Print "o"
    Locate 10, 15
    Print "o"; Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196)
    For conv = 1 To 150
        son2 = 250 - conv
        Sound son2, .05
    Next conv
    Locate 12, 11
    Print Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196)
    For conv2 = 1 To 150
        son3 = 250 - conv2
        Sound son3, .05
    Next conv2
    Locate 8, 11
    Print Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196)
    For conv3 = 1 To 150
        son4 = 250 - conv3
        Sound son4, .05
    Next conv3
    Color 0
    Locate 10, 15
    Print "o"; Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196)
    Locate 12, 11
    Print Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196)
    Locate 8, 11
    Print Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196); Chr$(196)
    Color 14
    Locate 10, 58
    Print "o "
    Locate 10, 62
    Print "o"
    Locate 11, 60
    Print "o"
    Locate 9, 60
    Print "o"
    Sound si3, 1
    Sound bl, .5
    Sound do3, 1
    Locate 10, 56
    Print "o  "
    Locate 11, 63
    Print "o"
    Locate 11, 63
    Print "o"
    Locate 11, 57
    Print "o"
    Locate 9, 63
    Print "o"
    Locate 9, 57
    Print "o"
    Locate 10, 62
    Print "  o"
    Locate 12, 60
    Print "o"
    Locate 8, 60
    Print "o"
    Locate 11, 60
    Print " "
    Locate 9, 60
    Print " "
    Locate 1, 59
    Sound 40, 1
    Sound 70, 1
    Sound 50, 1
    Sound 65, 1
    Sound 40, 1
    Sound 70, 1
    Sound 50, 1
    Sound 65, 1
    Sound 40, 1
    Sound 70, 1
    Sound 50, 1
    Sound 65, 1

End Sub

Sub thanatos
    
    Sleep 1
    Locate 10, 12
    Print "**********************************************"; Chr$(6)
    Sound 2000, 5
    Locate 11, 60
    Print Chr$(6); Chr$(6); Chr$(6)
    Locate 10, 58
    Print Chr$(6); Chr$(6)
    Locate 10, 61
    Print Chr$(6); Chr$(6); Chr$(6)
    Locate 9, 60
    Print Chr$(6); Chr$(6); Chr$(6)
    Sound 40, 2
    Sound 70, 2
    Sound 50, 2
    Sound 60, 2
    Sound 40, 2
    Sound 70, 2
    Sound 50, 2
    Sound 60, 2
    Sound 40, 2
    Sound 70, 2
    Sound 50, 2
    Locate 1, 59

End Sub
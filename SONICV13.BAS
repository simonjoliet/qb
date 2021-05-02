0 durs% = 5
1 Cls
do1% = 65: re1% = 74: mi1% = 83: fa1% = 87: so1% = 98: la1% = 110: si1% = 123:
do2% = 131: re2% = 147: mi2% = 165: fa2% = 175: so2% = 196: la2% = 220: si2% = 247:
do3% = 262: re3% = 294: mi3% = 330: fa3% = 349: so3% = 392: la3% = 440: si3% = 494:
do4% = 523: re4% = 587: mi4% = 659: fa4% = 698.5: so4% = 784: la4% = 880: si4% = 988:
9: Cls: dep% = 2: xloc% = 15:
8 Cls
7 Screen 12
Color 14: loca% = 2: loca2% = 2: loca3% = 2: loca4% = 2: loca5% = 2: Cls
Line (0, 40)-(1000, 102), 8, BF

Locate 1, 1
Print Chr$(201)
For a% = 2 To 80
    Locate 1, a%
    Print Chr$(205)
    loca% = loca% + 1
Next a%
Locate 1, 80
Print Chr$(187)
Locate loca2%, 1
For B% = 1 To 26
    Print Chr$(186)
    loca2% = loca2% + 1
Next B%
Print Chr$(200)
For c% = 1 To 78
    Locate 28, loca4%
    Locate 1, 2
    Print Chr$(205)
    loca4% = loca4% + 1
Next c%: Locate 2, 80
For d% = 2 To 27
    Locate d%, 80
    Print Chr$(186)
Next d%
Locate 28, 80
Print Chr$(188)
For e% = 2 To 79
    Locate 28, e%
    Print Chr$(205)
Next e%

Color 14
Line (400, 10)-(632, 35), 8, BF
Line (399, 9)-(631, 34), 7, B
Line (20, 12)-(380, 35), 1, BF
Locate 2, 7
Print "-------- Sonic G�n�rator V1.2 --------"
Line (9, 119)-(632, 434), 9, BF
Line (9, 119)-(632, 434), 1, B

For graph = 1 To 2
    Restore
    For gy = 1 To 12
        For gx = 1 To 10
            Read cl
            PSet (gx + secx + 28, gy + 17), cl
        Next gx
    Next gy

    Data 08,07,07,07,07,07,07,07,07,08
    Data 07,07,07,07,07,08,00,00,00,07
    Data 07,07,07,07,07,00,08,08,08,07
    Data 07,07,07,07,07,00,00,00,00,07
    Data 07,07,07,07,07,00,08,08,08,07
    Data 07,07,07,07,07,00,08,07,07,07
    Data 07,07,07,07,07,00,08,07,07,07
    Data 07,07,08,00,08,00,08,07,07,07
    Data 07,08,00,00,00,00,07,07,07,07
    Data 07,08,00,00,00,08,07,07,07,07
    Data 07,07,08,00,08,07,07,07,07,07
    Data 08,07,07,07,07,07,07,07,07,08
    secx = 332
Next graph

Color 7
Locate 2, 52
Print "ECH : QUITTER | TAB : MENU"
Locate 4, 2
Color 7
Locate 4, 2
Color 7

Locate 4, 16
Print " A:DO   | Z:RE   | E:MI   | R:FA   | T:SOL   | Y:LA   | U:SI   "
Locate 5, 16
Print " Q:DO+  | S:RE+  | D:MI+  | F:FA+  | G:SOL+  | H:LA+  | J:SI+  "
Locate 6, 16
Print " W:DO++ | X:RE++ | C:MI++ | V:FA++ | B:SOL++ | N:LA++ | ?:SI++ "
Print ""
Locate 6, 6
Color 14
2 note$ = Input$(1)
menu% = 0
If dep% > 73 Then
    xloc% = xloc% + 1
    dep% = 2
End If
If note$ = Chr$(27) Then
    '   CLS
    '   LOCATE 2, 31
    '   PRINT "Cr�e par SIJO"
    '   LOCATE 3, 26: PRINT "Contact SIJO52@YAHOO.FR"
    End
End If
If note$ = Chr$(9) Then
    Line (8, 100)-(143, 160), 8, BF
    Locate 4, 3
    Color 7
    Print "1 T+1/4     "
    Locate 5, 3
    Print "2 T-1/4     "
    Locate 6, 3
    Print "3 Param�tres"
    Locate 7, 3
    Print "4 Ouvrir    "
    Locate 8, 3
    Print "5 Effacer notes"
    Locate 9, 3
    Print "6 Quitter menu "
    Locate 10, 3
    Input "", menu$
End If
If menu$ = "1" Then
    durs% = durs% + 1: Locate xloc%, dep%: dep% = dep% + 6: Print "  +1 ;": GoTo 2
End If
If menu$ = "2" Then
    durs% = durs% - 1: Locate xloc%, dep%: dep% = dep% + 6: Print "  -1 ;": GoTo 2
End If
If menu$ = "4" Then
End If
If menu$ = "5" Then
    GoTo 9
End If
If menu$ = "6" Then
    GoTo 8
End If

  
If note$ = "a" Then
    Sound do1%, durs%: Locate xloc%, dep%: Print "DO   ;": dep% = dep% + 6: GoTo 2
End If
If note$ = "z" Then
    Sound re1%, durs%: Locate xloc%, dep%: Print "RE   ;": dep% = dep% + 6: GoTo 2
End If
If note$ = "e" Then
    Sound mi1%, durs%: Locate xloc%, dep%: Print "MI   ;": dep% = dep% + 6: GoTo 2
End If
If note$ = "r" Then
    Sound fa1%, durs%: Locate xloc%, dep%: Print "FA   ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "t" Then
    Sound so1%, durs%: Locate xloc%, dep%: Print "SOL  ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "y" Then
    Sound la1%, durs%: Locate xloc%, dep%: Print "LA   ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "u" Then
    Sound si1%, durs%: Locate xloc%, dep%: Print "SI   ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "q" Then
    Sound do2%, durs%: Locate xloc%, dep%: Print "DO+  ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "s" Then
    Sound re2%, durs%: Locate xloc%, dep%: Print "RE+  ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "d" Then
    Sound mi2%, durs%: Locate xloc%, dep%: Print "MI+  ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "f" Then
    Sound fa2%, durs%: Locate xloc%, dep%: Print "FA+  ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "g" Then
    Sound so2%, durs%: Locate xloc%, dep%: Print "SOL+ ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "h" Then
    Sound la2%, durs%: Locate xloc%, dep%: Print "LA+  ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "j" Then
    Sound si2%, durs%: Locate xloc%, dep%: Print "SI+  ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "w" Then
    Sound do3%, durs%: Locate xloc%, dep%: Print "DO++ ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "x" Then
    Sound re3%, durs%: Locate xloc%, dep%: Print "RE++ ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "c" Then
    Sound mi3%, durs%: Locate xloc%, dep%: Print "MI++ ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "v" Then
    Sound fa3%, durs%: Locate xloc%, dep%: Print "FA++ ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "b" Then
    Sound so3%, durs%: Locate xloc%, dep%: Print "SOL++;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "n" Then
    Sound la3%, durs%: Locate xloc%, dep%: Print "LA++ ;": dep% = dep% + 6: GoTo 2:
End If
If note$ = "," Then
    Sound si3%, durs%: Locate xloc%, dep%: Print "SI++ ;": dep% = dep% + 6: GoTo 2
End If
Sound re%, 1: Sound 1500, 1.5: Sound re%, 1
GoTo 2

3 If menu% = 3 Then
    Cls
End If
Color 7
Print "                              Sonic G�n�rator V1.2": Print ""
Print "   PARAMETRES": Print ""
Print "       1) Dur�e de note": Print "       2) Valeurs des notes": Print "       3) A propos de SONIC GENERATOR V1.1": Print "       4) Aide": Print "       5) Quitter"
Input "", reppar%
If reppar% = 1 Then
    Cls: Print "                              Sonic G�n�rator V1.2": Print ""
    Print "   PARAMETRES": Print "                 1) Dur�e de note"
    Print "Par d�fault, la dur�e de note est de 5. Ins�rez la nouvelle valeur :"
    Input "", durs%: GoTo 3
End If
If reppar% = 2 Then
    Cls: Print "                              Sonic G�n�rator V1.2": Print ""
    Print "   PARAMETRES"
    Print "                 2) Valeurs des notes": Print ""
    Print "Voici les fr�quences en Hertz des notes utilis�s courramant dans Soni 1.1"
    Print " Do = 65    R� = 74    Mi = 83    Fa = 87    Sol = 98    La = 110 Si = 123"
    Print " Do+ = 131  R�+ = 147  Mi+ = 165  Fa+ = 175  Sol+ = 196  La+ = 220 Si+ = 247"
    Print " Do++ = 262 R�++ = 294 Mi++ = 330 Fa++ = 349 Sol++ = 392 La++ = 440 Si++ = 494"
    a$ = Input$(1): GoTo 3
End If
If reppar% = 3 Then
    Cls: Print "                              Sonic G�n�rator V1.2"
    Print "": Print "   PARAMETRES"
    Print "                 3) A propos de SONIC GENERATOR V1.2": Print ""
    Print "SONIC GENERATOR V1.1"
    Print "   Cr�e par SIJO52": Print "   Avril 2003": Print "   Tous droits r�serv�s"
    z$ = Input$(1): GoTo 3
End If
If reppar% = 4 Then
    Cls: Print "                              Sonic G�n�rator V1.2": Print ""
    Print "   PARAMETRES": Print "                 4) Aide": Print "": Print "": Print ""
    Print "L'utilisation de SONIC GENERATOR V1.2 est tr�s simple : le clavier joue le r�le"
    Print "de piano, le son est malheureusement tr�s basique (Rien de plus normal en Basic"
    Print "D�sol�, je n'ai pas encore mis le di�se et le b�mol! il faudra attendre encore."
    e$ = Input$(1): GoTo 3
End If
If reppar% = 5 Then
    GoTo 1
End If






   













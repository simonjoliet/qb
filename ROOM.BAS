'powered by SijoGL
'room
'd‚claration des constantes d'origines
 
 
fhgx = 0
fhgy = 0
fhdx = 638
fhdy = 0
fbgx = 0
fbgy = 478
fbdx = 638
fbdy = 478
 
ahgx = 213
ahgy = 120
ahdx = 426
ahdy = 120
abgx = 213
abgy = 360
abdx = 426
abdy = 360
 
phgx = 283
phgy = 200
phdx = 366
phdy = 200
pbgx = 283
pbgy = 360
pbdx = 366
pbdy = 360


  
Cls
Screen 12, 15
' premiŠre face
'  LINE (fhgx, fhgy)-(fhdx, fhdy), 7
'  LINE (fhgx, fhgy)-(fbgx, fbgy), 7
'  LINE (fbgx, fbgy)-(fbdx, fbdy), 7
'  LINE (fbdx, fbdy)-(fhdx, fhdy), 7
  
'cot‚ gauche
Line (fhgx, fhgy)-(ahgx, ahgy), 7
Line (ahgx, ahgy)-(abgx, abgy), 7
Line (abgx, abgy)-(fbgx, fbgy), 7
'cot‚ droit
Line (fhdx, fhdy)-(ahdx, ahdy), 7
Line (ahdx, ahdy)-(abdx, abdy), 7
Line (abdx, abdy)-(fbdx, fbdy), 7
'fond
Line (ahgx, ahgy)-(ahdx, ahdy), 7
Line (abgx, abgy)-(abdx, abdy), 7
'porte
Line (phgx, phgy)-(pbgx, pbgy), 7
Line (phdx, phdy)-(pbdx, pbdy), 7
Line (phgx, phgy)-(phdx, phdy), 7
'perspective porte
Line (phgx, phgy + 3 * .035 * mov)-(phdx - 2 * .035 * mov, phdy + 3 * .035 * mov), 7
Line (phdx - 2 * .035 * mov, phdy + 3 * .035 * mov)-(pbdx - 2 * .035 * mov, abdy), 7
Line (phdx, phdy)-(phdx - 2 * .035 * mov, phdy + 3 * .035 * mov), 7

     
'texturing
'  LINE (fhgx, fhgy)-(abgx, abgy), 8
'  LINE (fhdx, fhdy)-(abdx, abdy), 8
'  LINE (fbgx, fbgy)-(ahgx, ahgy), 8
'  LINE (fbdx, fbdy)-(ahdx, ahdy), 8
'  LINE (fhgx, fhgy)-(ahdx, ahdy), 8
'  LINE (fhdx, fhdy)-(ahgx, ahgy), 8
'  LINE (fbgx, fbgy)-(abdx, abdy), 8
'  LINE (fbdx, fbdy)-(abgx, abgy), 8
 
'mapping
'   PAINT (2, 2), 4, 7
'   PAINT (637, 2), 4, 7
'   PAINT (600, 470), 15, 7
'   PAINT (8, 2), 8, 7
'   PAINT (254, 121), 6,7
   
z$ = Input$(1)
Line (ahgx, ahgy)-(abdx, abdy), 0, B
For mov = 1 To 360
    Locate 2, 2
    Print "frame :   "
    Locate 2, 7
    Print mov
   
    ' premiŠre face
    '  LINE (fhgx, fhgy)-(fhdx, fhdy), 7
    '  LINE (fhgx, fhgy)-(fbgx, fbgy), 7
    '  LINE (fbgx, fbgy)-(fbdx, fbdy), 7
    '  LINE (fbdx, fbdy)-(fhdx, fhdy), 7
 
    'cot‚ gauche
    Line (fhgx, fhgy)-(ahgx, ahgy), 7
    Line (ahgx, ahgy)-(abgx, abgy), 7
    Line (abgx, abgy)-(fbgx, fbgy), 7
    'cot‚ droit
    Line (fhdx, fhdy)-(ahdx, ahdy), 7
    Line (ahdx, ahdy)-(abdx, abdy), 7
    Line (abdx, abdy)-(fbdx, fbdy), 7
    'fond
    Line (ahgx, ahgy)-(ahdx, ahdy), 7
    Line (abgx, abgy)-(abdx, abdy), 7
    'porte
    Line (phgx, phgy)-(pbgx, pbgy), 7
    Line (phdx, phdy)-(pbdx, pbdy), 7
    Line (phgx, phgy)-(phdx, phdy), 7
    Line (phgx, phgy + 3 * .035 * mov)-(phdx - 2 * .035 * mov, phdy + 3 * .035 * mov), 7
    Line (phdx - 2 * .035 * mov, phdy + 3 * .035 * mov)-(pbdx - 2 * .035 * mov, abdy), 7
    Line (phdx, phdy)-(phdx - 2 * .035 * mov, phdy + 3 * .035 * mov), 7
 
    'on temporise la scŠne
    For tempo = 1 To 800
    Next tempo
 
    If mov = 360 Then
        e$ = Input$(1)
        End
    End If

    'on efface...
    '  LINE (fhgx, fhgy)-(fhdx, fhdy), 0
    '  LINE (fhgx, fhgy)-(fbgx, fbgy), 0
    '  LINE (fbgx, fbgy)-(fbdx, fbdy), 0
    '  LINE (fbdx, fbdy)-(fhdx, fhdy), 0
    Line (fhgx, fhgy)-(ahgx, ahgy), 0
    Line (ahgx, ahgy)-(abgx, abgy), 0
    Line (abgx, abgy)-(fbgx, fbgy), 0
    Line (fhdx, fhdy)-(ahdx, ahdy), 0
    Line (ahdx, ahdy)-(abdx, abdy), 0
    Line (abdx, abdy)-(fbdx, fbdy), 0
    Line (ahgx, ahgy)-(ahdx, ahdy), 0
    Line (abgx, abgy)-(abdx, abdy), 0
    Line (phgx, phgy)-(pbgx, pbgy), 0
    Line (phdx, phdy)-(pbdx, pbdy), 0
    Line (phgx, phgy)-(phdx, phdy), 0
    Line (phgx, phgy + 3 * .035 * mov)-(phdx - 2 * .035 * mov, phdy + 3 * .035 * mov), 0
    Line (phdx - 2 * .035 * mov, phdy + 3 * .035 * mov)-(pbdx - 2 * .035 * mov, abdy), 0
    Line (phdx, phdy)-(phdx - 2 * .035 * mov, phdy + 3 * .035 * mov), 0

    'on charge les prochaines coordon‚es
    fhgx = fhgx - 1
    fhgy = fhgy - 1
    fhdx = fhdx + 1
    fhdy = fhdy - 1
    fbgx = fbgx - 1
    fbgy = fbgy + 1
    fbdx = fbdx + 1
    fbdy = fbdy + 1
 
    ahgx = ahgx - 1
    ahgy = ahgy - 1
    ahdx = ahdx + 1
    ahdy = ahdy - 1
    abgx = abgx - 1
    abgy = abgy + 1
    abdx = abdx + 1
    abdy = abdy + 1
    phgx = phgx - .5
    phgy = phgy - .5
    phdx = phdx + .5
    phdy = phdy - .5
    pbgx = pbgx - .5
    pbgy = pbgy + 1
    pbdx = pbdx + .5
    pbdy = pbdy + 1
 
Next mov

a$ = Input$(1)

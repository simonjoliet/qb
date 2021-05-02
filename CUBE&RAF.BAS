' powered by SijoGL
' variables :
' f = face   ; a = fond
' h = haut   ; b = bas
' g = gauche ; d = droite
 
'constantes face
  fhgx = 50
  fhgy = 50
  fhdx = 150
  fhdy = 50
  fbgx = 50
  fbgy = 150
  fbdx = 150
  fbdy = 150

'constantes fond
  ahgx = 75
  ahgy = 25
  ahdx = 175
  ahdy = 25
  abgx = 75
  abgy = 125
  abdx = 175
  abdy = 125
 
  CLS
  SCREEN 12
  PAINT (0, 0), 1
    LOCATE 20, 2
    PRINT "frame :"; frame; "      "
    LOCATE 21, 2
    PRINT "rotatø:"; x; "      "
    LOCATE 22, 2
    PRINT "ratio :"; SQR(1 - x ^ 2); "      "


   'cot‚ gauche
       LINE (fhgx, fhgy)-(ahgx, ahgy), 15
       LINE (ahgx, ahgy)-(abgx, abgy), 8
       LINE (abgx, abgy)-(fbgx, fbgy), 8
   'cot‚ droit
       LINE (fhdx, fhdy)-(ahdx, ahdy), 15
       LINE (ahdx, ahdy)-(abdx, abdy), 15
       LINE (abdx, abdy)-(fbdx, fbdy), 15
   'fond
       LINE (ahgx, ahgy)-(ahdx, ahdy), 15
       LINE (abgx, abgy)-(abdx, abdy), 8
  
   'premiŠre face
       LINE (fhgx, fhgy)-(fhdx, fhdy), 15
       LINE (fhgx, fhgy)-(fbgx, fbgy), 15
       LINE (fbgx, fbgy)-(fbdx, fbdy), 15
       LINE (fbdx, fbdy)-(fhdx, fhdy), 15
       PAINT (100, 100), 7, 15
      
       r$ = INPUT$(1)
       IF r$ = CHR$(27) THEN
        END
       END IF
       


  SLEEP
   'fond bleu
    CLS
    PAINT (0, 0), 1

   
   'rotation

1.1     'chargement pour 2nd cycle
  


   FOR r = 0 TO 200
    'g‚n‚ration d'une variable allant de -1 … 1
    x = (r - 50) / 50

    LOCATE 20, 8
    PRINT "            "
    LOCATE 20, 2
    PRINT "frame :"; frame
    LOCATE 21, 8
    PRINT "            "
    LOCATE 21, 2
    PRINT "rotatø:"; x
    LOCATE 22, 8
    PRINT "            "
    LOCATE 22, 2
    PRINT "ratio :"; SQR(1 - x ^ 2)

   'constantes face
      fhgx = fhgx + 1
      fhgy = 50 - 25 * SQR(1 - x ^ 2)
      fhdx = 150 + 25 * SQR(1 - x ^ 2)
      fhdy = fhdy + 1
      fbgx = 50 - 25 * SQR(1 - x ^ 2)
      fbgy = fbgy - 1
      fbdx = fbdx - 1
      fbdy = 150 + 25 * SQR(1 - x ^ 2)
      ahgx = ahgx + 1
      ahgy = 25 - 25 * SQR(1 - x ^ 2)
      ahdx = 175 + 25 * SQR(1 - x ^ 2)
      ahdy = ahdy + 1
      abgx = 75 - 25 * SQR(1 - x ^ 2)
      abgy = abgy - 1
      abdx = abdx - 1
      abdy = 125 + 25 * SQR(1 - x ^ 2)
    
   'cot‚ gauche
       LINE (fhgx, fhgy)-(ahgx, ahgy), 15
       LINE (ahgx, ahgy)-(abgx, abgy), 15
       LINE (abgx, abgy)-(fbgx, fbgy), 15
   'cot‚ droit
       LINE (fhdx, fhdy)-(ahdx, ahdy), 15
       LINE (ahdx, ahdy)-(abdx, abdy), 15
       LINE (abdx, abdy)-(fbdx, fbdy), 15
   'fond
       LINE (ahgx, ahgy)-(ahdx, ahdy), 15
       LINE (abgx, abgy)-(abdx, abdy), 15
 
   'premiŠre face
       LINE (fhgx, fhgy)-(fhdx, fhdy), 15
       LINE (fhgx, fhgy)-(fbgx, fbgy), 15
       LINE (fbgx, fbgy)-(fbdx, fbdy), 15
       LINE (fbdx, fbdy)-(fhdx, fhdy), 15
       
      FOR tempo = 1 TO 1000
      NEXT tempo
      IF frame = 300 THEN
       END
      END IF
     
     
     
      IF r = 100 THEN
      'on efface le dernier graphique
       LINE (fhgx, fhgy)-(fhdx, fhdy), 1
       LINE (fhgx, fhgy)-(fbgx, fbgy), 1
       LINE (fbgx, fbgy)-(fbdx, fbdy), 1
       LINE (fbdx, fbdy)-(fhdx, fhdy), 1
       LINE (fhgx, fhgy)-(ahgx, ahgy), 1
       LINE (ahgx, ahgy)-(abgx, abgy), 1
       LINE (abgx, abgy)-(fbgx, fbgy), 1
       LINE (fhdx, fhdy)-(ahdx, ahdy), 1
       LINE (ahdx, ahdy)-(abdx, abdy), 1
       LINE (abdx, abdy)-(fbdx, fbdy), 1
       LINE (ahgx, ahgy)-(ahdx, ahdy), 1
       LINE (abgx, abgy)-(abdx, abdy), 1
       fhgx = 50
       fhgy = 50
       fhdx = 150
       fhdy = 50
       fbgx = 50
       fbgy = 150
       fbdx = 150
       fbdy = 150
       ahgx = 75
       ahgy = 25
       ahdx = 175
       ahdy = 25
       abgx = 75
       abgy = 125
       abdx = 175
       abdy = 125
       frame = frame + 1
       r = 0
       GOTO 1.1
      ELSE
       LINE (fhgx, fhgy)-(fhdx, fhdy), 1
       LINE (fhgx, fhgy)-(fbgx, fbgy), 1
       LINE (fbgx, fbgy)-(fbdx, fbdy), 1
       LINE (fbdx, fbdy)-(fhdx, fhdy), 1
       LINE (fhgx, fhgy)-(ahgx, ahgy), 1
       LINE (ahgx, ahgy)-(abgx, abgy), 1
       LINE (abgx, abgy)-(fbgx, fbgy), 1
       LINE (fhdx, fhdy)-(ahdx, ahdy), 1
       LINE (ahdx, ahdy)-(abdx, abdy), 1
       LINE (abdx, abdy)-(fbdx, fbdy), 1
       LINE (ahgx, ahgy)-(ahdx, ahdy), 1
       LINE (abgx, abgy)-(abdx, abdy), 1
       frame = frame + 1
      END IF

      'tempo pour eviter le scintillement
     ' FOR tempo = 1 TO 200
     ' NEXT tempo
    
     NEXT r
'powered by SijoGL
'room ROTAT
'd‚claration des constantes d'origines
 
 
  fhgx = 0
  fhgy = 0
  fhdx = 640
  fhdy = 0
  fbgx = 0
  fbgy = 480
  fbdx = 640
  fbdy = 480
  ahgx = 213
  ahgy = 120
  ahdx = 426
  ahdy = 120
  abgx = 213
  abgy = 360
  abdx = 426
  abdy = 360
 
  CLS
  SCREEN 12, 15
  ' premiŠre face
  LINE (fhgx, fhgy)-(fhdx, fhdy), 7
  LINE (fhgx, fhgy)-(fbgx, fbgy), 7
  LINE (fbgx, fbgy)-(fbdx, fbdy), 7
  LINE (fbdx, fbdy)-(fhdx, fhdy), 7
  
   'cot‚ gauche
  LINE (fhgx, fhgy)-(ahgx, ahgy), 7
  LINE (ahgx, ahgy)-(abgx, abgy), 7
  LINE (abgx, abgy)-(fbgx, fbgy), 7
   'cot‚ droit
  LINE (fhdx, fhdy)-(ahdx, ahdy), 7
  LINE (ahdx, ahdy)-(abdx, abdy), 7
  LINE (abdx, abdy)-(fbdx, fbdy), 7
   'fond
  LINE (ahgx, ahgy)-(ahdx, ahdy), 7
  LINE (abgx, abgy)-(abdx, abdy), 7

    
   z$ = INPUT$(1)
   LINE (ahgx, ahgy)-(abdx, abdy), 0, B
   FOR mov = 1 TO 360
   LOCATE 2, 2
   PRINT "frame :   "
   LOCATE 2, 7
   PRINT mov
  
'  LINE (fhgx, fhgy)-(fhdx, fhdy), 7
'  LINE (fhgx, fhgy)-(fbgx, fbgy), 7
'  LINE (fbgx, fbgy)-(fbdx, fbdy), 7
  LINE (fbdx, fbdy)-(fhdx, fhdy), 7

   'cot‚ gauche
  LINE (fhgx, fhgy)-(ahgx, ahgy), 7
  LINE (ahgx, ahgy)-(abgx, abgy), 7
  LINE (abgx, abgy)-(fbgx, fbgy), 7
   'cot‚ droit
  LINE (fhdx, fhdy)-(ahdx, ahdy), 7
  LINE (ahdx, ahdy)-(abdx, abdy), 7
  LINE (abdx, abdy)-(fbdx, fbdy), 7
   'fond
  LINE (ahgx, ahgy)-(ahdx, ahdy), 7
  LINE (abgx, abgy)-(abdx, abdy), 7
 
  'on temporise la scŠne
   FOR tempo = 1 TO 800
   NEXT tempo

   IF mov = 180 THEN
    e$ = INPUT$(1)
    END
   END IF

  'on efface...
  LINE (fbdx, fbdy)-(fhdx, fhdy), 0
  LINE (fhgx, fhgy)-(ahgx, ahgy), 0
  LINE (ahgx, ahgy)-(abgx, abgy), 0
  LINE (abgx, abgy)-(fbgx, fbgy), 0
  LINE (fhdx, fhdy)-(ahdx, ahdy), 0
  LINE (ahdx, ahdy)-(abdx, abdy), 0
  LINE (abdx, abdy)-(fbdx, fbdy), 0
  LINE (ahgx, ahgy)-(ahdx, ahdy), 0
  LINE (abgx, abgy)-(abdx, abdy), 0

  'on charge les prochaines coordon‚es
 
  IF mov > 90 THEN
   fhgx = fhgx
   fhgy = fhgy
   fhdx = fhdx - 1
   fhdy = fhdy
   fbgx = fbgx
   fbgy = fbgy
   fbdx = fbdx - 1
   fbdy = fbdy
  ELSE
   fhgx = fhgx
   fhgy = fhgy
   fhdx = fhdx
   fhdy = fhdy
   fbgx = fbgx
   fbgy = fbgy
   fbdx = fbdx
   fbdy = fbdy
  END IF
  ahgx = ahgx - 1
  ahgy = ahgy
  ahdx = ahdx - 1
  ahdy = ahdy
  abgx = abgx - 1
  abgy = abgy
  abdx = abdx - 1
  abdy = abdy
                      
   NEXT mov

   a$ = INPUT$(1)
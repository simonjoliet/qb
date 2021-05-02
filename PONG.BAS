  RANDOMIZE TIMER

  x = INT((RND * 617) + 10)
  y = INT((RND * 457) + 10)
  icx = 1
  icy = 1

  CLS
  SCREEN 12
  LINE (0, 0)-(639, 479), 7, B
  PAINT (2, 2), 1, 7
  FOR cycle = 1 TO 2000
   CIRCLE (x - icx, y - icy), 10, 1
   CIRCLE (x, y), 10, 15
  
   'tempo pour optimiser l'affichage
    FOR tempo = 1 TO 250
   NEXT tempo

    x = x + icx
    y = y + icy
    IF x = 627 THEN
     icx = icx * (-1)
     LINE (x - 11, y - 11)-(x + 11, y + 11), 1, BF
    END IF
    IF y = 467 THEN
     icy = icy * (-1)
     LINE (x - 11, y - 11)-(x + 11, y + 11), 1, BF
    END IF
    IF x = 12 THEN
     icx = icx * (-1)
     LINE (x - 11, y - 11)-(x + 11, y + 11), 1, BF
    END IF
    IF y = 12 THEN
     icy = icy * (-1)
      LINE (x - 11, y - 11)-(x + 11, y + 11), 1, BF
    END IF
   NEXT cycle
  

  END
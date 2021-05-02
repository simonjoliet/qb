  'Sijo Physic's Gravity
 
  SCREEN 12
  CLS

  x = 320
  y = 11
  dir = 1
  grv = 1
 
  LINE (1, 479)-(679, 479), 8

  FOR cyc = 1 TO 500
  
   IF dir = 1 THEN
    IF (y + grv) > 479 THEN
     dir = -1
    ELSE
     grv = grv + (.1 * grv)
    END IF
   ELSE
    grv = grv - (grv / 10)
   END IF

   IF grv < 1 AND dir = -1 THEN
    dir = 1
   END IF
  
   

   CIRCLE (x, y + grv), 10, 7
  
   LOCATE 1, 1
   PRINT "             "
   PRINT "             "
   PRINT "             "
   LOCATE 1, 1
   PRINT cyc
   PRINT grv
   PRINT dir

 '  FOR temp = 1 TO 750
 '  NEXT temp

  CIRCLE (x, y + grv), 10, 0


  NEXT cyc
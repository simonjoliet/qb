dec1 = 3: dec2 = 3: dec3 = 3: dec4 = 3: dec5 = 3: dec6 = 3: dec7 = 3:
dec8 = 3: dec9 = 3: dec10 = 3: dec11 = 3: dec12 = 3:
CLS
RANDOMIZE TIMER
d = INT(RND * 11) + 1
LOCATE 2, 1: PRINT "1": LOCATE 4, 1: PRINT "2": LOCATE 6, 1: PRINT "3": LOCATE 8, 1:
PRINT "4": LOCATE 10, 1: PRINT "5": LOCATE 12, 1: PRINT "6": LOCATE 14, 1: PRINT "7":
LOCATE 16, 1: PRINT "8": LOCATE 18, 1: PRINT "9": LOCATE 20, 1: PRINT "10": LOCATE 22, 1:
PRINT "11": LOCATE 24, 1: PRINT "12": LOCATE 12, 1:
IF d = 1 THEN
 LOCATE 3, dec1: PRINT CHR$(219): dec1 = dec1 + 1:
END IF
IF d = 2 THEN
 LOCATE 5, dec2: PRINT CHR$(219): dec2 = dec2 + 1:
END IF
IF d = 3 THEN
 LOCATE 7, dec3: PRINT CHR$(219): dec3 = dec3 + 1:
END IF
IF d = 4 THEN
 LOCATE 9, dec4: PRINT CHR$(219): dec4 = dec4 + 1:
END IF
IF d = 5 THEN
 LOCATE 11, dec5: PRINT CHR$(219): dec5 = dec5 + 1:
END IF
IF d = 6 THEN
 LOCATE 13, dec6: PRINT CHR$(219): dec6 = dec6 + 1:
END IF
IF d = 7 THEN
 LOCATE 15, dec7: PRINT CHR$(219): dec7 = dec7 + 1:
END IF
IF d = 8 THEN
 LOCATE 17, dec8: PRINT CHR$(219): dec8 = dec8 + 1:
END IF
IF d = 9 THEN
 LOCATE 19, dec9: PRINT CHR$(219): dec9 = dec9 + 1:
END IF
IF d = 10 THEN
 LOCATE 21, dec10: PRINT CHR$(219): dec10 = dec10 + 1:
END IF
IF d = 11 THEN
 LOCATE 23, dec11: PRINT CHR$(219): dec11 = dec11 + 1:
END IF
IF d = 12 THEN
 LOCATE 25, dec12: PRINT CHR$(219): dec12 = dec12 + 1:
END IF
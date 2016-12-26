PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  BEGIN
    W1 := ' ';
    W2 := ' ';
    W3 := ' ';
    W4 := ' ';
    Looking := 'Y';
  END;
  WHILE Looking = 'Y'
  DO
    BEGIN
      BEGIN
        W1 := W2;
        W2 := W3;
        W3 := W4;
        READ(W4);
        IF W4='##'
        THEN
          Looking:='N'
      END;
      BEGIN
        IF (W1='l') AND (W2='a') AND (W3='n') AND (W4='d')
        THEN {'land' }
          Looking := 'L'
      END;
      BEGIN { 'sea'}
        IF (W2 = 's') AND (W3 = 'e') AND (W4 = 'a')
        THEN {'sea'}
          Looking := 'S'
      END;
    END;
  BEGIN
    IF Looking = 'L'
    THEN
      WRITELN('The British are coming by land.')
    ELSE
      IF Looking = 'S'
      THEN
        WRITELN('The British coming by sea.')
      ELSE
        WRITELN('Sarah didn''t say')
  END;
END. {Sarah revere}

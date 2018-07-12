DECLARE
    remainder NUMBER;
    k NUMBER;
BEGIN
  FOR n IN 1..100 LOOP   
    remainder := 0;
    k := floor(n/2);
    FOR i IN 2..k LOOP
        IF (mod(n, i) = 0 ) THEN
            remainder := 1;
        END IF;
    END LOOP;
    IF (remainder = 0) THEN
       DBMS_OUTPUT.PUT_LINE(n);
    END IF;
  END LOOP;
END;

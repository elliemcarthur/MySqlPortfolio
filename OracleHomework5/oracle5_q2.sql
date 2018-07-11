DECLARE
    counter NUMBER;
    k NUMBER;
BEGIN
  FOR n IN 1..100 LOOP   
    counter := 0;
    k := floor(n/2);
    FOR i IN 2..k LOOP
        IF (mod(n, i) = 0 ) THEN
            counter := 1;
        END IF;
    END LOOP;
    IF (counter = 0) THEN
       DBMS_OUTPUT.PUT_LINE(n);
    END IF;
  END LOOP;
END;
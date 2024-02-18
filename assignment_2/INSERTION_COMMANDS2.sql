-- run both the loops separately.

DECLARE
   user_id NUMBER := 9; -- Starting USERID
BEGIN
   FOR i IN 1..150 LOOP -- Insert 100 rows
      INSERT INTO USERS VALUES 
         (user_id, 'Ch', 'CH@hotmail.com', '7 Elm St US', 23, 'Y', 'Y');
      user_id := user_id + 1; -- Increment USERID for next row
   END LOOP;
END;

DECLARE
  user_id NUMBER := 1; -- Starting USERID
  SUBS_id NUMBER := 1;
BEGIN
   FOR i IN 1..150 LOOP -- Insert 5 rows
      INSERT INTO SUBSCRIBE VALUES 
         (SUBS_id, 'HULK', user_id, 'paid');
        user_id := user_id + 1; -- Increment USERID for next row
        SUBS_id := SUBS_id + 1; 
END LOOP;
END;

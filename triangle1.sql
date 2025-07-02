
-- Learn PL/SQL Commands



SET SERVEROUTPUT ON;
DECLARE
  res VARCHAR2(32767);
BEGIN
  FOR i IN REVERSE 1..20 LOOP
    res := '';
    FOR j IN 1..i LOOP
      res := res || '* ';
    END LOOP;
    dbms_output.put_line(res);
  END LOOP;
END;
/
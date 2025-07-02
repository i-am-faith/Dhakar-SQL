SET SERVEROUTPUT ON;
DECLARE
  res VARCHAR2(500);
BEGIN
  FOR i IN 1..20 LOOP
    res := '';
    FOR j IN 1..i LOOP
      res := res || '* ';
    END LOOP;
    dbms_output.put_line(res);
  END LOOP;
END;
/
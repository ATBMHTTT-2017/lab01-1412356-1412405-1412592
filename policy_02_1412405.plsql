--Trưởng dự án chỉ được phép đọc, ghi thông tin chi tiêu của dự án mình quản lý (VPD)
CREATE OR REPLACE FUNCTION sec_qlChiTieu
(
  p_schema VARCHAR2,
  p_object VARCHAR2
)
RETURN VARCHAR2
AS
  maDA DUAN.maDA%TYPE;
BEGIN
IF FALSE THEN
    RETURN 'TRUE';
  ELSE
   IF (SYS_CONTEXT('userenv', 'SESSION_USER') LIKE 'TD%') THEN
       SELECT maDA INTO maDA FROM DUAN  WHERE truongDA = SYS_CONTEXT('userenv', 'SESSION_USER');      
      RETURN 'duAn = ' || maDA;
    ELSE
      RETURN 'FALSE';
    END IF;
  END IF;
END;


--DROP FUNCTION sec_qlChiTieu;
EXECUTE dbms_rls.add_policy('system', 'CHTIEU', 'policy', 'system' ,'sec_qlChiTieu', 'SELECT, UPDATE', dbms_rls.ALL_ROWS);

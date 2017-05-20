--Trưởng dự án chỉ được phép đọc, ghi thông tin chi tiêu của dự án mình quản lý (VPD)
CREATE OR REPLACE FUNCTION sec_qlChiTieu
(
  p_schema VARCHAR2,
  p_object VARCHAR2
)
RETURN VARCHAR2
AS
  maDA CHAR(6);
begin
  select maDA into maDA from DUAN  where truongDA = user;
  return 'maDA= ' || maDA ; 
end;


BEGIN
dbms_rls.add_policy
(object_schema => 'atbmhtttdba',
object_name => 'ChiTieu',
policy_name => 'S_U_ChiTieu',
policy_function => 'sec_qlChiTieu',
statement_types => 'SELECT, UPDATE');
END;


--DROP FUNCTION sec_qlChiTieu;
--EXECUTE dbms_rls.add_policy('system', 'CHTIEU', 'policy', 'system' ,'sec_qlChiTieu', 'SELECT, UPDATE', dbms_rls.ALL_ROWS);


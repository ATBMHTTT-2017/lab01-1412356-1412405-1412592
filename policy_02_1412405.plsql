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
  select mada into mada from sys.duan  where truongda = user;
  return 'maDA= ' || mada ; 
end;

BEGIN
dbms_rls.add_policy
(object_schema => 'system',
object_name => 'ChiTieu',
policy_name => 'S_U_ChiTieu',
function_schema => 'system',
policy_function => 'sec_qlChiTieu',
statement_types => 'SELECT, UPDATE');
END;


--DROP FUNCTION sec_qlChiTieu;
--EXECUTE dbms_rls.add_policy('system', 'CHTIEU', 'policy', 'system' ,'sec_qlChiTieu', 'SELECT, UPDATE', dbms_rls.ALL_ROWS);


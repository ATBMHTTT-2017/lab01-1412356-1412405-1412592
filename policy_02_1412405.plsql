--Trưởng dự án chỉ được phép đọc, ghi thông tin chi tiêu của dự án mình quản lý (VPD)
CREATE OR REPLACE
FUNCTION sec_qlChiTieu
(
    p_schema VARCHAR2,
    p_object VARCHAR2
)
RETURN VARCHAR2
AS
  duan varchar(6);
BEGIN
  SELECT maDA INTO duAn FROM atbmhtttdba.DUAN  WHERE truongDA = USER;
  RETURN 'duAn='|| q'[']' || duAn || q'[']';
END;
BEGIN
  DBMS_RLS.add_policy
  (object_schema => 'atbmhtttdba',
  object_name => 'CHITIEU',
  policy_name => 'S_U_ChiTieu',
  function_schema => 'atbmhtttdba',
  policy_function => 'sec_qlChiTieu',
  statement_types => 'SELECT, UPDATE');
END;



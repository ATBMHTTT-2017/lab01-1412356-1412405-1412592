--Tất cả nhân viên bình thường (trừ trưởng phòng, trưởng chi nhánh và các trưởng dự án) chỉ được phép xem thông tin nhân viên 
--trong phòng của mình, chỉ được xem lương của bản thân (VPD).

CREATE FUNCTION vpd_nhanvien
(
  p_schema VARCHAR2,
  p_object VARCHAR2
)
RETURN VARCHAR2
AS
  MaPhong CHAR(4);
BEGIN
    SELECT maPhong INTO MaPhong FROM MYDBA.NHANVIEN WHERE maNV=USER;
    RETURN 'maPhong='''||MaPhong||'''';
END;

BEGIN DBMS_RLS.add_policy 
(object_schema => 'MYDBA',
object_name => 'NHANVIEN',
policy_name => 'XemTTNVien',
policy_function => 'vpd_nhanvien',
sec_relevant_cols=>'luong',
sec_relevant_cols_opt=>dbms_rls.ALL_ROWS);
END;

--Tất cả nhân viên bình thường (trừ trưởng phòng, trưởng chi nhánh và các trưởng dự án) chỉ được phép xem thông tin nhân viên 
--trong phòng của mình, chỉ được xem lương của bản thân (VPD).

CREATE FUNCTION vpd_nhanvien
(
  p_schema VARCHAR2 DEFAULT NULL,
  p_object VARCHAR2 DEFAULT NULL
)
RETURN VARCHAR2
AS
  MaPhong CHAR(4);
BEGIN
    SELECT maPhong INTO MaPhong FROM NHANVIEN WHERE maNV=USER;
    RETURN 'maPhong='''||MaPhong||'''';
END;

CREATE OR REPLACE FUNCTION user_only 
( 
p_schema  IN  VARCHAR2 DEFAULT NULL, 
p_object  IN  VARCHAR2 DEFAULT NULL
) 
RETURN VARCHAR2 
AS 
BEGIN        
  RETURN 'maNV ='''|| USER || ''''; 
END;

BEGIN DBMS_RLS.add_policy 
(object_schema => 'ATBMHTTTDBA',
object_name => 'NHANVIEN',
policy_name => 'XemLuongNVien',
policy_function => 'user_only',
sec_relevant_cols=>'luong',
sec_relevant_cols_opt => DBMS_RLS.all_rows
);
END; 

BEGIN DBMS_RLS.add_policy 
(object_schema => 'ATBMHTTTDBA',
object_name => 'NHANVIEN',
policy_name => 'XemTTNVien',
policy_function => 'vpd_nhanvien');
END;


--8. Trưởng phòng chỉ được phép đọc thông tin chi tiêu của dự án trong phòng ban mình 
--quản lý. Với những dự án không thuộc phòng ban của mình, các trưởng phòng được 
--phép xem thông tin chi tiêu nhưng không được phép xem số tiền cụ thể (VPD).

CREATE FUNCTION sec_chitieu
(
  p_schema VARCHAR2,
  p_object VARCHAR2
)
RETURN VARCHAR2
AS
  maNhanVien CHAR(6)
  maPhong CHAR(4)
BEGIN
  IF (SYS_CONTEXT('userenv', 'ISDBA')) THEN
    RETURN '';
  ELSE
    maNhanVien:= SYS_CONTEXT('userenv', 'SESSION_USER');
    IF (maNV LIKE 'TP%')
      maPhong := SELECT maPhong FROM NHANVIEN WHERE maNV = maNhanVien;      
      RETURN 'duAn IN (SELECT  maDA FROM DUAN WHERE phongChuTri =' || maPhong || ')';
    ELSE
      RETURN 'FALSE'
  END IF;
END


EXECUTE dbms_rls.add_policy ('', 'CHITIEU', '', 'sec_chitieu', 'soTien', dbms_rls.ALL_ROWS);

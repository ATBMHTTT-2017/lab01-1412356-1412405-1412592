--8. Trưởng phòng chỉ được phép đọc thông tin chi tiêu của dự án trong phòng ban mình 
--quản lý. Với những dự án không thuộc phòng ban của mình, các trưởng phòng được 
--phép xem thông tin chi tiêu nhưng không được phép xem số tiền cụ thể (VPD).

CREATE OR REPLACE 
FUNCTION sec_chitieu
(
  p_schema IN VARCHAR2,
  p_object IN VARCHAR2
)
RETURN VARCHAR2
as
  maPhong PHONGBAN.maPhong%TYPE;
begin
  IF FALSE THEN --(SYS_CONTEXT('USERENV', 'ISDBA')) THEN 
    RETURN 'TRUE';
  ELSE
    IF (SYS_CONTEXT('userenv', 'SESSION_USER') LIKE 'TP%') THEN
      SELECT maPhong INTO maPhong FROM NHANVIEN WHERE maNV = SYS_CONTEXT('userenv', 'SESSION_USER');      
      RETURN 'duAn IN (SELECT  maDA FROM DUAN WHERE phongChuTri =' || maPhong || ')';
    ELSE
      RETURN 'FALSE';
    END IF;
  END IF;
END;



--EXECUTE dbms_rls.add_policy ('', 'CHITIEU', '', 'sec_chitieu', 'soTien', dbms_rls.ALL_ROWS);

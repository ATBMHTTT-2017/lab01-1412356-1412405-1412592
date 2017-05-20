--8. Trưởng phòng chỉ được phép đọc thông tin chi tiêu của dự án trong phòng ban mình 
--quản lý. Với những dự án không thuộc phòng ban của mình, các trưởng phòng được 
--phép xem thông tin chi tiêu nhưng không được phép xem số tiền cụ thể (VPD).

CREATE OR REPLACE 
FUNCTION SEC_CHITIEU
(
  p_schema IN VARCHAR2,
  p_object IN VARCHAR2
)
RETURN VARCHAR2
as
  maPhong PHONGBAN.maPhong%TYPE;
begin
  IF (SYS_CONTEXT('userenv', 'SESSION_USER') LIKE 'TP%') THEN
    SELECT maPhong INTO maPhong FROM NHANVIEN WHERE maNV = SYS_CONTEXT('userenv', 'SESSION_USER');      
    RETURN 'duAn IN (SELECT  maDA FROM DUAN WHERE phongChuTri =' || maPhong || ')';
  ELSE
    RETURN 'FALSE';
  END IF;
END;



EXECUTE DBMS_RLS.ADD_POLICY ('system', 
                                                                      'CHITIEU', 
                                                                      'policy_08', 
                                                                      'sec_chitieu', 
                                                                      'soTien', 
                                                                      dbms_rls.ALL_ROWS);
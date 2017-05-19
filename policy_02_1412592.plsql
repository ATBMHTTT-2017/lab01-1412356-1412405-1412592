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
  maNV CHAR(6)
BEGIN
  IF (SYS_CONTEXT('userenv', 'ISDBA)) THEN
    RETURN '';
  ELSE
    
  END IF;
END

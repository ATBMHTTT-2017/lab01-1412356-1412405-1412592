CREATE OR REPLACE PROCEDURE sp_capNhatPhongBan
(
  maPhongParam CHAR
  ,tenPhongParam NVARCHAR2
  ,truongPhongParam CHAR
  ,ngayNhanChucParam DATE 
  ,soNhanVienParam INT 
  ,chiNhanhParam CHAR
)
AS
BEGIN
UPDATE CHINHANH
SET tenPhong = tenPhongParam,
		truongPhong = truongPhongParam,
		ngayNhanChuc = ngayNhanChucParam,
		soNhanVien = soNhanVienParam,
		chiNhanh = chiNhanhParam
WHERE maPhong = maPhongParam;

END;
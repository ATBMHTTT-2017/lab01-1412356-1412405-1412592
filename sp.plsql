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
begin
begin transaction;
UPDATE PHONGBAN
SET tenPhong = tenPhongParam,
		truongPhong = truongPhongParam,
		ngayNhanChuc = ngayNhanChucParam,
		soNhanVien = soNhanVienParam,
		chiNhanh = chiNhanhParam
where maphong = maphongparam;
commit;
END;
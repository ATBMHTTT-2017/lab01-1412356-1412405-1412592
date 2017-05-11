CREATE OR REPLACE PROCEDURE sp_capNhatPhongBan
(
  maPhongPram CHAR
  ,tenPhongPram NVARCHAR2
  ,truongPhongPram CHAR
  ,ngayNhanChucPram DATE 
  ,soNhanVienPram INT 
  ,chiNhanhPram CHAR
  )
  AS
  BEGIN
    UPDATE CHINHANH
    SET tenPhong = tenPhongPram,
            truongPhong = truongPhongPram,
            ngayNhanChuc = ngayNhanChucPram,
            soNhanVien = soNhanVienPram,
            chiNhanh = chiNhanhPram
    WHERE maPhong = maPhongPram;
    
  END;
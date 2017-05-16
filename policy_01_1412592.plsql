-- Chỉ trưởng phòng, trưởng chi nhánh được cấp quyền thực thi stored procedure cập nhật thông tin phòng ban của mình 
GRANT EXECUTE ON sp_capNhatPhongBan TO TruongPhong;
GRANT EXECUTE ON sp_capNhatPhongBan TO TruongChiNhanh;
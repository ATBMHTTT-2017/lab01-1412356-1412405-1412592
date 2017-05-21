select sys_context ('USERENV', 'SESSION_USER')  from dual;


execute atbmhtttdba.sp_capNhatPhongBan('0010', 'Phòng Nhân Sự z', NULL, NULL, 2, '001');


update atbmhtttdba.phongban set  tenphong =  'Phòng Nhân Sự',
		truongPhong = null,
		ngaynhanchuc = null,
		soNhanVien = 2,
		chinhanh = '001'
where maphong = '0010';

   
select * from atbmhtttdba.phongban;
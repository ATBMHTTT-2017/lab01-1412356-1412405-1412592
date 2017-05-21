---Giám đốc được phép xem thông tin dự án gồm (mã dự án, tên dự án, kinh phí, tên phòng chủ trì, tên chi nhánh chủ trì, tên trưởng dự án và tổng chi)
CREATE VIEW xemDuAn
AS
  SELECT DA.maDA, DA.tenDA, DA.kinhPhi, PB.tenPhong, CN.tenCN, NV.hoTen, CT.soTien
  FROM DUAN DA, CHITIEU CT, CHINHANH CN, PHONGBAN PB, NHANVIEN NV
  WHERE DA.phongChuTri = PB.maPhong AND PB.chiNhanh = CN.maCN AND DA.truongDA = NV.maNV AND DA.maDA = CT.duAn;

--ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
--CREATE ROLE GiamDoc;
--CREATE USER 

GRANT SELECT ON xemDuAn TO GiamDoc;

GRANT GiamDoc TO GD000001;
GRANT GiamDoc TO GD000002;
GRANT GiamDoc TO GD000003;
GRANT GiamDoc TO GD000004;
GRANT GiamDoc TO GD000005;

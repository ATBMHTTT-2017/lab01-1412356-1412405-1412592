CREATE TABLE CHINHANH
(
  maCN CHAR(3) NOT NULL 
  ,tenCN NVARCHAR2(50) NOT NULL 
  ,truongChiNhanh	CHAR(5) NOT NULL 
  ,CONSTRAINT PK_CHINHANH PRIMARY KEY(maCN) ENABLE
);

CREATE TABLE PHONGBAN
(
  maPhong CHAR(4) NOT NULL
  ,tenPhong NVARCHAR2(50) NOT NULL
  ,truongPhong CHAR(5) NULL
  ,ngayNhanChuc DATE NULL
  ,soNhanVien INT NOT NULL
  ,chiNhanh CHAR(3) NOT NULL
  ,CONSTRAINT PK_PHONGBAN PRIMARY KEY(maPhong) ENABLE
  ,CONSTRAINT FK_PHONGBAN_CHINHANH FOREIGN KEY(chiNhanh) REFERENCES CHINHANH(maCN) ENABLE
);

CREATE TABLE NHANVIEN
(
  maNV CHAR(5) NOT NULL
  ,hoTen NVARCHAR2(30) NOT NULL
  ,diaChi NVARCHAR2(70) NOT NULL
  ,email NVARCHAR2(50) NOT NULL
  ,chiNhanh CHAR(3) NOT NULL 
  ,maPhong CHAR(4) NOT NULL
  ,luong INT NULL
  ,CONSTRAINT PK_NHANVIEN PRIMARY KEY(maNV) ENABLE
  ,CONSTRAINT FK_NHANVIEN_CHINHANH FOREIGN KEY(chiNhanh) REFERENCES CHINHANH(maCN) ENABLE
  ,CONSTRAINT FK_NHANVIEN_PHONGBAN FOREIGN KEY(maPhong) REFERENCES PHONGBAN(maPhong) ENABLE
);

ALTER TABLE PHONGBAN
ADD CONSTRAINT FK_PHONGBAN_NHANVIEN FOREIGN KEY(truongPhong) REFERENCES NHANVIEN(maNV) ENABLE;

ALTER TABLE CHINHANH
ADD CONSTRAINT FK_CHINHANH_NHANVIEN FOREIGN KEY(truongChiNhanh) REFERENCES NHANVIEN(maNV) ENABLE;

CREATE TABLE DUAN
(
  maDA CHAR(6) NOT NULL
  ,tenDA NVARCHAR2(70) NOT NULL
  ,kinhPhi INT NOT NULL
  ,phongChuTri CHAR(4) NOT NULL
  ,truongDA CHAR(5) NOT NULL
  ,CONSTRAINT PK_DUAN PRIMARY KEY(maDA) ENABLE
  ,CONSTRAINT FK_DUAN_PHONGBAN FOREIGN KEY(phongChuTri) REFERENCES PHONGBAN(maPhong)ENABLE
  ,CONSTRAINT FK_DUAN_NHANVIEN FOREIGN KEY(truongDA) REFERENCES NHANVIEN(maNV) ENABLE
);

CREATE TABLE CHITIEU
(
  maChiTieu CHAR(7) NOT NULL
  ,tenChiTieu NVARCHAR2(70) NOT NULL
  ,soTien INT NOT NULL
  ,duAn CHAR(6) NOT NULL
  ,CONSTRAINT PK_CHITIEU PRIMARY KEY(maChiTieu) ENABLE
  ,CONSTRAINT FK_CHITIEU_DUAN FOREIGN KEY(duAn) REFERENCES DUAN(maDA) ENABLE
);

CREATE TABLE PHUCAP
(
  maNV CHAR(5) NOT NULL
  ,duAn CHAR(6) NOT NULL
  ,vaiTro CHAR(10) NOT NULL
  ,phuCap INT NOT NULL
  ,CONSTRAINT PK_PHUCAP PRIMARY KEY(maNV, duAn) ENABLE
  ,CONSTRAINT FK_PHUCAP_DUAN FOREIGN KEY(duAn) REFERENCES DUAN(maDA) ENABLE
  ,CONSTRAINT FK_PHUCAP_NHANVIEN FOREIGN KEY(maNV) REFERENCES NHANVIEN(maNV) ENABLE
);



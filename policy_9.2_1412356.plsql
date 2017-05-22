--Trưởng chi nhánh được phép truy xuất tất cả dữ liệu chi tiêu của dự án của tất cả các phòng ban thuộc quyền quản lý của mình
--1/TAO LABEL
BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 21030, 
label_value => 'GH:NS'); 
END;

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 22050, 
label_value => 'GH:KH'); 
END;

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 23070, 
label_value => 'GH:KT'); 
END;

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 3100, 
label_value => 'BM:NS'); 
END;

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 3300, 
label_value => 'BM:KH'); 
END;

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 35000, 
label_value => 'BM:KT'); 
END;

--2/AP DUNG CHINH SACH LEN BANG CHITIEU
BEGIN sa_policy_admin.apply_table_policy 
(policy_name     => 'duan_ols', 
schema_name      => 'atbmhtttdba', 
table_name       => 'CHITIEU', 
table_options    => 'NO_CONTROL'); 
END;

--grant exempt access policy to sec_admin
UPDATE atbmhtttdba.CHITIEU
SET olscol = char_to_label ('duan_ols', 'GH'); 

UPDATE atbmhtttdba.CHITIEU
SET olscol = char_to_label ('duan_ols', 'GH:NS')
WHERE duan IN (SELECT maDA FROM atbmhtttdba.DUAN WHERE phongchutri LIKE '%1');

UPDATE atbmhtttdba.CHITIEU
SET olscol = char_to_label ('duan_ols', 'GH:KH')
WHERE duan IN (SELECT maDA FROM atbmhtttdba.DUAN WHERE phongchutri LIKE '%2');

UPDATE atbmhtttdba.CHITIEU
SET olscol = char_to_label ('duan_ols', 'GH:KT')
WHERE duan IN (SELECT maDA FROM atbmhtttdba.DUAN WHERE phongchutri LIKE '%3');

BEGIN sa_policy_admin.remove_table_policy 
(policy_name   => 'duan_ols', 
schema_name    => 'atbmhtttdba', 
table_name     => 'CHITIEU'); 

sa_policy_admin.apply_table_policy 
(policy_name    => 'duan_ols', 
schema_name     => 'atbmhtttdba', 
table_name      => 'CHITIEU', 
table_options   => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL'); 
END;

--3/GAN LABEL CHO USER (connect as hr_sec)



--Trưởng chi nhánh Hà Nội được phép truy xuất dữ liệu của chi nhánh Hà Nội và tất cả các chi nhánh khác

--1/TAO LABEL

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 20000, 
label_value => 'GH'); 
END;

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 20010, 
label_value => 'GH::TPHCM'); 
END;

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 20020, 
label_value => 'GH::HN'); 
END;

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 20030, 
label_value => 'GH::DN'); 
END;

BEGIN   
sa_label_admin.create_label 
(policy_name => 'duan_ols', 
label_tag => 30090, 
label_value => 'BM::TCT'); 
END;

--2/AP DUNG POLICY LEN BANG (connect as sec_admin)
BEGIN sa_policy_admin.apply_table_policy 
(policy_name     => 'duan_ols', 
schema_name      => 'atbmhtttdba', 
table_name       => 'DUAN', 
table_options    => 'NO_CONTROL'); 
END;

UPDATE atbmhtttdba.DUAN
SET atbmhtttdba.DUAN.duan = char_to_label ('duan_ols', 'GH'); 

UPDATE atbmhtttdba.DUAN
SET olscol = char_to_label ('duan_ols','GH::TPHCM')
WHERE phongchutri LIKE '001%'; 

UPDATE atbmhtttdba.DUAN
SET olscol = char_to_label ('duan_ols','GH::HN')
WHERE phongchutri LIKE '002%';

UPDATE atbmhtttdba.DUAN
SET olscol = char_to_label ('duan_ols','GH::DN')
WHERE phongchutri LIKE '003%';

BEGIN sa_policy_admin.remove_table_policy 
(policy_name   => 'duan_ols', 
schema_name    => 'atbmhtttdba', 
table_name     => 'DUAN'); 

sa_policy_admin.apply_table_policy 
(policy_name    => 'duan_ols', 
schema_name     => 'atbmhtttdba', 
table_name      => 'DUAN', 
table_options   => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL'); 
END;

--3/GAN LABEL CHO TRUONG CHI NHANH
--truong chi nhanh TPHCM
BEGIN sa_user_admin.set_user_labels 
(policy_name => 'duan_ols', 
user_name       => 'TC001001', 
max_read_label => 'BM::TPHCM', 
max_write_label => 'BM::TPHCM', 
min_write_label => 'GH', 
def_label   => 'BM::TPHCM'); 
END; 

--truong chi nhanh HANOI
BEGIN sa_user_admin.set_user_labels 
(policy_name => 'duan_ols', 
user_name       => 'TC002001', 
max_read_label => 'BM::TCT', 
max_write_label => 'BM::TCT', 
min_write_label => 'GH', 
def_label   => 'BM::TCT'); 
END; 

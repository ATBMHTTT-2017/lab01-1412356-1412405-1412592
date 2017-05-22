--**CONNECT TO SYSTEM
--account chiu trach nhiem quan ly chinh sach
GRANT connect TO sec_admin IDENTIFIED BY secadmin; 

--account chiu trach nhiem quan ly user truy cap den schema cua atbmhtttdba
GRANT connect, create user, drop user, create role, drop any role 
TO hr_sec 
IDENTIFIED BY hrsec; 

--**CONNECT TO LBACSYS
--tao policy
BEGIN
sa_sysdba.create_policy 
(policy_name => 'duan_ols',
column_name => 'olscol');
END;

GRANT duan_ols_dba TO sec_admin; 
 
-- Package dùng để tạo ra các thành phần của nhãn 
GRANT execute ON sa_components TO sec_admin; 
 
-- Package dùng để tạo các nhãn 
GRANT execute ON sa_label_admin TO sec_admin; 
 
-- Package dùng để gán chính sách cho các table/schema 
GRANT execute ON sa_policy_admin TO sec_admin; 

GRANT duan_ols_dba TO hr_sec; 
-- Package dùng để gán các label cho user 
GRANT execute ON sa_user_admin TO hr_sec; 

--**CONNECT TO SEC_ADMIN
--tao level
BEGIN 
sa_components.create_level
(policy_name => 'duan_ols',
long_name => 'THONGTHUONG',
short_name => 'TT',
level_num => 1000);
END;

BEGIN
sa_components.create_level
(policy_name => 'duan_ols',
long_name => 'GIOIHAN',
short_name => 'GH',
level_num => 2000);
END;

BEGIN
sa_components.create_level
(policy_name => 'duan_ols',
long_name => 'BIMAT',
short_name => 'BM',
level_num => 3000);
END;

BEGIN
sa_components.create_level
(policy_name => 'duan_ols',
long_name => 'BIMATCAO',
short_name => 'BMC',
level_num => 4000);
END;

--tao compartment
BEGIN
sa_components.create_compartment
(policy_name => 'duan_ols',
long_name => 'NHANSU',
short_name => 'NS',
comp_num => 1000);
END;

BEGIN
sa_components.create_compartment
(policy_name => 'duan_ols',
long_name => 'KEHOACH',
short_name => 'KH',
comp_num => 2000);
END;

BEGIN
sa_components.create_compartment
(policy_name => 'duan_ols',
long_name => 'KETOAN',
short_name => 'KT',
comp_num => 3000);
END;

--Tao group
BEGIN   
sa_components.create_group   
(policy_name => 'duan_ols', 
long_name  => 'TONGCONGTY', 
short_name  => 'TCT', 
group_num  => 10, 
parent_name => NULL); 
END;

BEGIN   
sa_components.create_group   
(policy_name => 'duan_ols', 
long_name  => 'TPHOCHIMINH', 
short_name  => 'TPHCM', 
group_num  => 30, 
parent_name => 'TCT'); 
END;

BEGIN   
sa_components.create_group   
(policy_name => 'duan_ols', 
long_name  => 'HANOI', 
short_name  => 'HN', 
group_num  => 50, 
parent_name => 'TCT'); 
END;

BEGIN   
sa_components.create_group   
(policy_name => 'duan_ols', 
long_name  => 'DANANG', 
short_name  => 'DN', 
group_num  => 70, 
parent_name => 'TCT'); 
END; 

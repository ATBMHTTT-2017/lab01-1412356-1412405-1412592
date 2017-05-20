ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
--Truong phong
CREATE USER TP001002
IDENTIFIED BY 001002;

CREATE USER TP002002
IDENTIFIED BY 002002;

CREATE USER TP003002
IDENTIFIED BY 003002;

CREATE USER TP004002
IDENTIFIED BY 004002;

CREATE USER TP005002
IDENTIFIED BY 005002;

--GIAM DOC
CREATE USER GD000001
IDENTIFIED BY 000001;

CREATE USER GD000002
IDENTIFIED BY 000002;

CREATE USER GD000003
IDENTIFIED BY 000003;

CREATE USER GD000004
IDENTIFIED BY 000004;

CREATE USER GD000005
IDENTIFIED BY 000005;

--TRUONG CHI NHANH
CREATE USER TC001001
IDENTIFIED BY 001001;

CREATE USER TC002001
IDENTIFIED BY 002001;

CREATE USER TC003001
IDENTIFIED BY 003001;

CREATE USER TC004001
IDENTIFIED BY 004001;

CREATE USER TC005001
IDENTIFIED BY 005001;

--TRUONG DU AN
CREATE USER TD001103
IDENTIFIED BY 001103;

CREATE USER TD002103
IDENTIFIED BY 002103;

CREATE USER TD003103
IDENTIFIED BY 003103;

CREATE USER TD004103
IDENTIFIED BY 004103;

CREATE USER TD005103
IDENTIFIED BY 005103;

--NHAN VIEN THUONG
CREATE USER NV001004
IDENTIFIED BY 001004;

CREATE USER NV002004
IDENTIFIED BY 002004;

CREATE USER NV003004
IDENTIFIED BY 003004;

CREATE USER NV004004
IDENTIFIED BY 004004;

CREATE USER NV005004
IDENTIFIED BY 005004;

create user atbmhtttdba
identified by atbmhtttdba;
grant dba to atbmhtttdba;
GRANT "OPTIMIZER_PROCESSING_RATE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "PROVISIONER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "OLAP_XS_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "AUDIT_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_XSTREAM_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "XS_RESOURCE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "WFS_USR_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DELETE_CATALOG_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_GOLDENGATE_REDO_ACCESS" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "HS_ADMIN_SELECT_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "SPATIAL_WFS_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "CDB_DBA" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "OLAP_DBA" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_SECANALYST" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "TRUONGDUAN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "RESOURCE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_PUBLIC" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "APEX_ADMINISTRATOR_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "CTXAPP" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "CAPTURE_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "SPATIAL_CSW_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "TRUONGPHONG" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_DATAPUMP_NETWORK_LINK" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "GATHER_SYSTEM_STATISTICS" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "AUTHENTICATEDUSER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "CONNECT" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_AUDIT_CLEANUP" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "HS_ADMIN_EXECUTE_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "LOGSTDBY_ADMINISTRATOR" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_OWNER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "JAVADEBUGPRIV" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_WITH_PUBLIC" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_REALM_RESOURCE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "XDBADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_OVER_HTTP" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "CSW_USR_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "EXP_FULL_DATABASE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_USER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "LBAC_DBA" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_GOLDENGATE_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "TRUONGCHINHANH" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_MONITOR" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "EM_EXPRESS_BASIC" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "JAVAIDPRIV" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DBFS_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_STREAMS_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "XS_SESSION_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "ADM_PARALLEL_EXECUTE_TASK" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "NHANVIEN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "AQ_ADMINISTRATOR_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "JAVA_DEPLOY" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "OEM_MONITOR" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "JAVAUSERPRIV" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_ACCTMGR" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "JAVA_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "JMXSERVER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "AUDIT_VIEWER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "EXECUTE_CATALOG_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "SCHEDULER_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DATAPUMP_IMP_FULL_DATABASE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "WM_ADMIN_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "GDS_CATALOG_SELECT" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "GSMUSER_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "ORDADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "XS_CACHE_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DATAPUMP_EXP_FULL_DATABASE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "AQ_USER_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "GSMADMIN_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "SELECT_CATALOG_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_OWNER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "OLAP_USER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "GSM_POOLADMIN_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "JAVASYSPRIV" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "XDB_SET_INVOKER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "XS_NAMESPACE_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "GIAMDOC" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "IMP_FULL_DATABASE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "PDB_DBA" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "HS_ADMIN_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "APEX_GRANTS_FOR_NEW_USERS_ROLE" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_PATCH_ADMIN" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "OEM_ADVISOR" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "DV_REALM_OWNER" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
GRANT "EJBCLIENT" TO "ATBMHTTTDBA" WITH ADMIN OPTION;
grant "EM_EXPRESS_ALL" to "ATBMHTTTDBA" with admin option;


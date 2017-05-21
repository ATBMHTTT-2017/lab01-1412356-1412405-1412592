--8. Trưởng phòng chỉ được phép đọc thông tin chi tiêu của dự án trong phòng ban mình 
--quản lý. Với những dự án không thuộc phòng ban của mình, các trưởng phòng được 
--phép xem thông tin chi tiêu nhưng không được phép xem số tiền cụ thể (VPD).

begin
dbms_rls.drop_policy(
  object_schema => 'atbmhtttdba',
  object_name => 'CHITIEU',
  policy_name => 'policy_08');
end;


begin
  dbms_rls.add_policy (
  object_schema => 'atbmhtttdba',
  object_name => 'CHITIEU',
  policy_name => 'policy_08',
  policy_function => 'sec_xemchitieu ',
  --statement_types => 'SELECT',
  sec_relevant_cols => 'soTien ',
  sec_relevant_cols_opt => dbms_rls. all_rows);
END;


select user from DUAL;

select * from ATBMHTTTDBA.CHITIEU;

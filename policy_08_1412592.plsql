--8. Trưởng phòng chỉ được phép đọc thông tin chi tiêu của dự án trong phòng ban mình 
--quản lý. Với những dự án không thuộc phòng ban của mình, các trưởng phòng được 
--phép xem thông tin chi tiêu nhưng không được phép xem số tiền cụ thể (VPD).

create or replace 
function sec_xemchitieu
(
  p_schema in varchar2,
  p_object in varchar2
)
return varchar2
as
begin
  if (user like 'TP%') then
    return 'duAn in (select  maDA from atbmhtttdba.DUAN where phongChuTri = (select maPhong from atbmhtttdba.NHANVIEN where maNV =  ''' ||user || '''))';
  else
    return '1 > 2';
  end if;
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
end;

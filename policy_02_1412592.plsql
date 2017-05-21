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
  maChiTieu chitieu.maChiTieu%type;
begin
  if (user like 'TP%') then
    select maChiTieu into maChiTieu from atbmhtttdba.CHITIEU where duAn in (select  maDA from atbmhtttdba.DUAN where phongChuTri  in (select maPhong from phongChuTri.NHANVIEN where maNV =  user));
    return 'maChiTieu=' || q'[']' || maChiTieu || q'[']';
  else
    return 'FALSE';
  end if;
end;



begin
  dbms_rls.add_policy (
  object_schema => 'atbmhtttdba',
  object_name => 'CHITIEU',
  POLICY_NAME => 'policy_08',
  policy_function => 'sec_xemchitieu',
  --statement_types => 'SELECT',
  sec_relevant_cols => 'soTien',
  sec_relevant_cols_opt => dbms_rls. all_rows);
END;
--Arrange
declare
  l_expected department$;
  l_result   integer;
begin
--Act
  ut.expect( anydata.convertObject(l_expected) ).to_be_null();
  l_result :=  ut_expectation_processor.get_status();
--Assert
  if l_result = ut_utils.tr_success then
    :test_result := ut_utils.tr_success;
  else
    dbms_output.put_line('expected: '''||ut_utils.tr_success||''', got: '''||l_result||'''' );
  end if;
end;
/

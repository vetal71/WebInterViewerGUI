unit DataSetExports;

interface

Uses
  Windows, System.SysUtils, VCL.FlexCel.Core, FlexCel.XlsAdapter, Data.DB;

procedure DataSetToXLS(XLSX: TExcelFile; DataSet: TDataSet;
  WorkSheetCount: Integer = 1; ActiveSheet: Integer = 1);

implementation

procedure DataSetToXLS(XLSX: TExcelFile; DataSet: TDataSet;
  WorkSheetCount: Integer = 1; ActiveSheet: Integer = 1);
var
  ioldrecno, icol, irow : integer;
  fmt: TFlxFormat;
  fmtDateTime : Integer;
begin
  //make sure it is XLSX format
  ioldrecno := DataSet.RecNo;

  XLSX.SupportsXlsx := True;
  XLSX.NewFile(WorkSheetCount, TExcelFileFormat(2) );  //2 = v2010, 1 = v2007, 0 = v2003
  XLSX.ActiveSheet := ActiveSheet;
  fmt := XLSX.GetDefaultFormat;
  fmt.Format := 'yyyy-mm-dd HH:MM:SS AM/PM';
  fmtDateTime := XLSX.AddFormat(fmt);

  //Write the headers
  irow := 1;
  for icol := 0 to DataSet.FieldCount - 1 do
  begin
    XLSX.SetCellValue( irow, icol + 1, DataSet.Fields[icol].DisplayName );
  end;

  inc(irow);

  DataSet.First;
  while Not DataSet.EOF do
  begin
    for icol := 0 to DataSet.FieldCount - 1 do
    begin
      case Dataset.Fields[icol].DataType of
        ftUnknown, ftString,
        ftBoolean, ftFloat, ftCurrency, ftBCD,
        ftBytes, ftVarBytes, ftAutoInc, ftBlob, ftMemo, ftGraphic, ftFmtMemo,
        ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor, ftFixedChar, ftWideString,
        ftADT, ftArray, ftReference, ftDataSet, ftOraBlob, ftOraClob,
        ftVariant, ftInterface, ftIDispatch, ftGuid, ftFMTBcd,
        ftFixedWideChar, ftWideMemo, ftOraInterval,
        ftConnection, ftParams, ftStream, ftTimeStampOffset, ftObject:
          begin
            XLSX.SetCellValue( irow, icol + 1, Dataset.Fields[icol].AsString );
          end;
        ftSmallint, ftInteger, ftWord, ftLargeint, ftLongWord, ftShortint, ftByte, ftSingle:
          begin
            XLSX.SetCellValue( irow, icol + 1, Dataset.Fields[icol].AsInteger );
          end;
        ftDate, ftTime, ftDateTime, ftOraTimeStamp, ftTimeStamp:
          begin
            XLSX.SetCellValue( irow, icol + 1, Dataset.Fields[icol].AsDateTime );
            XLSX.SetCellFormat( irow, icol + 1, fmtDateTime );
          end;
        ftExtended:
          begin
            XLSX.SetCellValue( irow, icol + 1, Dataset.Fields[icol].AsFloat );
          end;
      end;
    end;
    inc(irow);
    DataSet.Next;
  end;
  DataSet.RecNo := ioldrecno;
end;

end.

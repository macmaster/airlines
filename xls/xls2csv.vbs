if WScript.Arguments.Count < 2 Then
    WScript.Echo "usage: xls2csv [src.xls] [dest.csv]"
    Wscript.Quit
End If
Dim oExcel
Set oExcel = CreateObject("Excel.Application")
Dim oBook
Set oBook = oExcel.Workbooks.Open(Wscript.Arguments.Item(0))
oBook.SaveAs WScript.Arguments.Item(1), 6
oBook.Close False
oExcel.Quit
WScript.Echo "Done"
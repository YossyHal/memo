# 全シートの左上を選択するマクロ

- <https://atmarkit.itmedia.co.jp/ait/articles/2009/28/news018.html>
- <https://yuuqy-blog.com/1123/vba-selecttop/>

```txt
C:\Users\yossy\AppData\Local\Packages\Microsoft.Office.Desktop_8wekyb3d8bbwe\LocalCache\Roaming\Microsoft\AddIns
```

```vb
Sub ScrollToA1Cell1()
    Dim i As Integer
    For i = ActiveWorkbook.Sheets.Count To 1 Step -1
        ActiveWorkbook.Sheets(i).Select
        Application.Goto ActiveSheet.Range("A1"), True
Next
End Sub
```

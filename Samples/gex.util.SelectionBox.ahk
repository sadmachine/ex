#Include ../gex.ahk

arr := ["hello", "hi", "hey"]

txt := gex.SelectionBox(arr, "Select a greeting", "Greeting Selections", "x140 y150 w100 AlwaysOnTop ToolWindow Ownerhello")
if (gex.util.SelectionBox.ErrorLevel==1)
  MsgBox "Cancel pressed"
else if (gex.util.SelectionBox.ErrorLevel==2)
  MsgBox "SelectionBox timed out"
else
  MsgBox txt

txt2 := gex.util.SelectionBox.New(arr, "Select a greeting", "Gretting Selections")
txt2.Show()
result := txt2.GetResult()

MsgBox result
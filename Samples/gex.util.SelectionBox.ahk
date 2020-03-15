#Include ../gex.ahk

arr := ["hello", "hi", "hey"]

txt := gex.SelectionBox(arr, "Select a greeting", "Greeting Selections")
MsgBox txt

txt2 := gex.util.SelectionBox.New(arr, "Select a greeting", "Gretting Selections")
txt2.Show()
result := txt2.GetResult()

MsgBox result
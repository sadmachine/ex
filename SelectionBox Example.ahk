#Warn
#Include SelectionBox.ahk
arr := ["hello", "hi", "hey"]

txt := SelectionBox(arr, "Select a greeting", "Greeting Selections")
MsgBox txt

txt2 := SelectionBox.New(arr, "Select a greeting", "Gretting Selections")
txt2.Show()
result := txt2.GetResult()

MsgBox result


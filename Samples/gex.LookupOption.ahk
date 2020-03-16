#Include ../gex.ahk

optionsArr := ["y150", "AlwaysOnTop", "x140", "w170", "ToolWindow"]

value1 := gex.LookupOption("x", optionsArr)
value2 := gex.LookupOption("y", optionsArr)
value3 := gex.LookupOption("AlwaysOnTop", optionsArr)
value4 := gex.LookupOption("w", optionsArr)
value5 := gex.LookupOption("ToolWindow", optionsArr)
MsgBox value1 " " value2 " " value3 " " value4 " " value5
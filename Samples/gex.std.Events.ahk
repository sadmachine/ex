#Include ../gex.ahk
#Persistent

gObj := GuiCreate("+OwnDialogs", "Test ex.Events.Common", gex.std.Events.New())

gObj.Add("button", "w300", "Submit").Name := "btnSubmit"
gObj["btnSubmit"].OnEvent("Click", "GuiSubmit")

gObj.Add("button", "w300", "Cancel").Name := "btnCancel"
gObj["btnCancel"].OnEvent("Click", "GuiDestroy")

gObj.Add("button", "w300", "Hide").Name := "btnHide"
gObj["btnHide"].OnEvent("Click", "GuiHide")

gObj.Add("button", "w300", "Flash On").Name := "btnFlashOn"
gObj["btnFlashOn"].OnEvent("Click", "GuiFlashOn")

gObj.Add("button", "w300", "Flash Off").Name := "btnFlashOff"
gObj["btnFlashOff"].OnEvent("Click", "GuiFlashOff")

gObj.Add("button", "w300", "Flash").Name := "btnFlash"
gObj["btnFlash"].OnEvent("Click", "GuiFlash")

gObj.Add("button", "w300", "Maximize").Name := "btnMaximize"
gObj["btnMaximize"].OnEvent("Click", "GuiMaximize")

gObj.Add("button", "w300", "Minimize").Name := "btnMinimize"
gObj["btnMinimize"].OnEvent("Click", "GuiMinimize")

gObj.Add("button", "w300", "Restore").Name := "btnRestore"
gObj["btnRestore"].OnEvent("Click", "GuiRestore")

gObj.OnEvent("Close", "GuiExitApp")

gObj.Show("AutoSize")

gObj2 := GuiCreate()


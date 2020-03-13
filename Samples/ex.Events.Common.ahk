#Include ../ex.ahk
gObj := GuiCreate("+OwnDialogs", "Test ex.Events.Common", ex.Events.Common.New())

gObj.Add("button", "w300", "Submit").Name := "btnSubmit"
gObj["btnSubmit"].OnEvent("Click", "GuiSubmit")

gObj.Show("AutoSize")
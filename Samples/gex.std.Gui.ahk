#Include ../gex.ahk

gui := gex.std.Gui.New(,,gex.std.Events.New())

gui.Add("Button", "w300", "Cool Button").Name := "btnCoolButton"
gui["btnCoolButton"].OnEvent("Click", "GuiDestroy")

gui.Show("AutoSize")

class ExtendedGui extends gex.std.Gui
{
  __New(Options:="", Title:="", EventObj:="")
  {
    base.__New(Options, Title, EventObj)
    MsgBox "Hello"
  }
}

extended := ExtendedGui.New()


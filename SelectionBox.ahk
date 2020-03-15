class SelectionBox
{
  __New(selections, prompt, title, returnIndex:=false, options:="", eventSink:="")
  {
    eObj := SelectionBox.Events.New()
    this.title := title
    this.returnIndex := returnIndex
    this.gObj := GuiCreate(options, title, eObj)

    selections := JoinStrArray(selections)
    if (selections == 0)
      return 0
    this.gObj.Add("Text", "w300 r1", prompt) 

    this.gObj.Add("DDL", "w300", selections).Name := "ddlSelections"
    this.gObj.Add("Button", "w145 Default", "Submit").Name := "btnSubmit"
    this.gObj.Add("Button", "xp+155 w145", "Cancel").Name := "btnCancel"

    this.gObj["btnSubmit"].OnEvent("Click", "OnSubmit")
    this.gObj["btnCancel"].OnEvent("Click", "OnCancel")
  }

  Show()
  {
    this.gObj.Show("AutoSize")
  }

  GetResult(timeout:="")
  {
    if (timeout != "")
    {
      if !WinWaitClose(this.title,, timeout)
      {
        return 0
      }
      if this.returnIndex
        result := this.gObj["ddlSelections"].Value
      else
        result := this.gObj["ddlSelections"].Text
      this.gObj.Destroy()
      return result
    }
    WinWaitClose this.title
    if this.returnIndex
      result := this.gObj["ddlSelections"].Value
    else
      result := this.gObj["ddlSelections"].Text
    this.gObj.Destroy()
    return result
  }

  static Call(selections, prompt, title, options:="", eventSink:="")
  {
    called := SelectionBox.New(selections, prompt, title, options, eventSink)
    called.Show()
    return called.GetResult()
  }

  class Events {
    OnSubmit(GuiCtrlObj, Info)
    {
      GuiCtrlObj.Gui.Submit()
    }

    OnCancel(GuiCtrlObj, Info)
    {
      GuiCtrlObj.Gui.Hide()
    }
  }
}

SelectionBox(selections, prompt, title, options:="")
{
  return %SelectionBox%(selections, prompt, title, options)
}

JoinStrArray(arr, delim:="|")
{
  if (Type(arr) != "Array")
    return 0
  
  joined := ""
  for key,value in arr
  {
    if (key == 1)
      joined .= value
    else
      joined .= delim value
  }
  return joined
}


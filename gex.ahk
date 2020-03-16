class gex {

  class std {
    
    class Gui {

      __New(options:="", title:="", EventObj:="")
      {
        if (options == "" && title == "" && EventObj == "")
          this.gObj := GuiCreate()
        if (options == "" && title == "" && EventObj != "")
          this.gObj := GuiCreate(,, EventObj)
        if (options == "" && title != "" && EventObj == "")
          this.gObj := GuiCreate(, title,)
        if (options == "" && title != "" && EventObj != "")
          this.gObj := GuiCreate(, title, EventObj)
        if (options != "" && title == "" && EventObj == "")
          this.gObj := GuiCreate(options)
        if (options != "" && title == "" && EventObj != "")
          this.gObj := GuiCreate(options,, EventObj)
        if (options != "" && title != "" && EventObj == "")
          this.gObj := GuiCreate(options, title,)
        if (options != "" && title != "" && EventObj != "")
          this.gObj := GuiCreate(options, title, EventObj)
        this.EventObj := EventObj
      }

      BackColor[]
      {
        get => this.gObj.BackColor
        set => this.gObj.BackColor := value
      }
      
      ClientPos[] => this.gObj.ClientPos

      __Item[Name] => this.gObj[Name]

      FocusedCtrl[] => this.gObj.FocusedCtrl

      Hwnd[] => this.gObj.Hwnd

      MarginX[]
      {
        get => this.gObj.MarginX
        set => this.gObj.MarginX := value
      }

      MarginY[]
      {
        get => this.gObj.MarginY
        set => this.gObj.MarginY := value
      }

      MenuBar[]
      {
        get => this.gObj.MenuBar
        set => this.gObj.MenuBar := value
      }

      Name[]
      {
        get => this.gObj.Name
        set => this.gObj.Name := value
      }

      Pos[] => this.gObj.Pos

      Title[] 
      {
        get => this.gObj.Title
        set => this.gObj.Title := value
      }

      Add(ControlType, Options := "", Text := "")
      {
        return this.gObj.Add(ControlType, Options, Text)
      }

      AddText(Options:="", Text := "")
      {
        return this.gObj.AddText(Options, Text)
      }

      AddEdit(Options:="", Text := "")
      {
        return this.gObj.AddEdit(Options, Text)
      }

      AddUpDown(Options:="", Text := "")
      {
        return this.gObj.AddUpDown(Options, Text)
      }

      AddPicture(Options:="", Text := "")
      {
        return this.gObj.AddPicture(Options, Text)
      }

      AddButton(Options:="", Text := "")
      {
        return this.gObj.AddButton(Options, Text)
      }

      AddCheckBox(Options:="", Text := "")
      {
        return this.gObj.AddCheckBox(Options, Text)
      }

      AddRadio(Options:="", Text := "")
      {
        return this.gObj.AddRadio(Options, Text)
      }

      AddDropDownList(Options:="", Text := "")
      {
        return this.gObj.AddDropDownList(Options, Text)
      }

      AddDDL(Options:="", Text := "")
      {
        return this.gObj.AddDropDownList(Options, Text)
      }

      AddComboBox(Options:="", Text := "")
      {
        return this.gObj.AddComboBox(Options, Text)
      }

      AddListBox(Options:="", Text := "")
      {
        return this.gObj.AddListBox(Options, Text)
      }

      AddListView(Options:="", Text := "")
      {
        return this.gObj.AddListView(Options, Text)
      }

      AddTreeView(Options:="", Text := "")
      {
        return this.gObj.AddTreeView(Options, Text)
      }

      AddLink(Options:="", Text := "")
      {
        return this.gObj.AddLink(Options, Text)
      }

      AddHotkey(Options:="", Text := "")
      {
        return this.gObj.AddHotkey(Options, Text)
      }

      AddDateTime(Options:="", Text := "")
      {
        return this.gObj.AddDateTime(Options, Text)
      }

      AddMonthCal(Options:="", Text := "")
      {
        return this.gObj.AddMonthCal(Options, Text)
      }

      AddSlider(Options:="", Text := "")
      {
        return this.gObj.AddSlider(Options, Text)
      }

      AddProgress(Options:="", Text := "")
      {
        return this.gObj.AddProgress(Options, Text)
      }

      AddGroupBox(Options:="", Text := "")
      {
        return this.gObj.AddGroupBox(Options, Text)
      }

      AddTab(Options:="", Text := "")
      {
        return this.gObj.AddTab(Options, Text)
      }

      AddStatusBar(Options:="", Text := "")
      {
        return this.gObj.AddStatusBar(Options, Text)
      }

      AddActiveX(Options:="", Text := "")
      {
        return this.gObj.AddActiveX(Options, Text)
      }

      AddCustom(Options:="", Text := "")
      {
        return this.gObj.AddCustom(Options, Text)
      }

      Destroy()
      {
        return this.gObj.Destroy()
      }

      Flash(Blink := true)
      {
        return this.gObj.Flash(Blink)
      }

      Hide()
      {
        return this.gObj.Hide()
      }

      Maximize()
      {
        return this.gObj.Maximize()
      }

      Restore()
      {
        return this.gObj.Restore()
      }

      Minimize()
      {
        return this.gObj.Minimize()
      }

      __Enum(NumberOfVars)
      {
        return this.gObj.__Enum(NumberOfVars)
      }

      OnEvent(EventName, CallBack, AddRemove := 1)
      {
        return this.gObj.OnEvent(EventName, CallBack, AddRemove)
      }

      Opt(Options)
      {
        return this.gObj.Opt(Options)
      }    

      SetFont(Options := "", FontName := "")    
      {
        return this.gObj.SetFont(Options, FontName)
      }

      Show(Options := "")
      {
        return this.gObj.Show(Options)
      }

      Submit(Hide := true)
      {
        return this.gObj.Submit(Hide)
      }
    } ; End gex.std.Gui
    
    class Events {

      static flashPeriod := 500
      static flashCount := 3
      GuiExitApp(GuiObj)
      {
        ExitApp
      }

      GuiSubmit(GuiCtrlObj, Info)
      {
        MsgBox A_ThisFunc
        GuiCtrlObj.Gui.Submit()
      }

      GuiDestroy(GuiCtrlObj, Info)
      {
        GuiCtrlObj.Gui.Destroy()
      }

      GuiFlashOn(GuiCtrlObj, Info)
      {
        GuiCtrlObj.Gui.Flash(true)
      }

      GuiFlashOff(GuiCtrlObj, Info)
      {
        GuiCtrlObj.Gui.Flash(false)
      }

      GuiFlash(GuiCtrlObj, Info)
      {
        gObj := GuiCtrlObj.Gui
        Loop ex.Events.Common.flashCount*2
        {
          gObj.Flash()
          Sleep ex.Events.Common.flashPeriod
        }
      }

      GuiMaximize(GuiCtrlObj, Info)
      {
        GuiCtrlObj.Gui.Maximize()
      }

      GuiMinimize(GuiCtrlObj, Info)
      {
        GuiCtrlObj.Gui.Minimize()
      }

      GuiRestore(GuiCtrlObj, Info)
      {
        GuiCtrlObj.Gui.Restore()
      }

      GuiHide(GuiCtrlObj, Info)
      {
        GuiCtrlObj.Gui.Hide()
      }
    } ; End gex.std.Events

  } ; End gex.std

  class util {

    class SelectionBox
    {
      static ErrorLevel := 0
      ErrorLevel := 0
      __New(selections, prompt, title, options:="")
      {
        eObj := gex.util.SelectionBox.Events.New(this)
        if (options != "")
        {
          parsedOpts := gex.ParseOptions(options, ["x", "y", "w", "ff", "fs", "AlwaysOnTop", "ToolWindow", "Owner"])
        }
        this.title := title
        this.returnIndex := returnIndex
        this.gObj := GuiCreate(, title, eObj)

        selections := gex.JoinStrArray(selections)
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
            this.ErrorLevel := 2
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

      static Call(selections, prompt, title, options:="")
      {
        called := gex.util.SelectionBox.New(selections, prompt, title, options)
        called.Show()
        result := called.GetResult()
        gex.util.SelectionBox.ErrorLevel := called.ErrorLevel
        return result
      }

      class Events {
        __New(invoker:="")
        {
          this.invoker := invoker
        }

        OnSubmit(GuiCtrlObj, Info)
        {
          GuiCtrlObj.Gui.Submit()
        }

        OnCancel(GuiCtrlObj, Info)
        {
          GuiCtrlObj.Gui.Hide()
          if IsObject(this.invoker)
            this.invoker.ErrorLevel := 1
        }
      } ; End gex.util.SelectionBox.Events
    } ; End gex.util.SelectionBox

  } ; End gex.util

  static JoinStrArray(arr, delim:="|")
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

  static SelectionBox(selections, prompt, title, options:="")
  {
    return %gex.util.SelectionBox%(selections, prompt, title, options)
  }

  static ParseOptions(optionStr, optionNames)
  {
    tokens := StrSplit(optionStr, " ")
    parsed := Map()
    ; TODO: Implement
    /*
      Parse Options:
        x<val> := x position of window
        y<val> := y position of window
        w<val> := width of window 
        ff<val> := font face to use
        fs<val> := font size to use
        AlwaysOnTop := set window to be always on top
        Owner<val> := set the owner of this window
        ToolWindow := set the style of this window to be a toolwindow
    */
    for index,optionName in optionNames
    {
      parsed[optionName] := gex.LookupOption(optionName, tokens)
    }

    return parsed
  }

  static LookupOption(optionName, tokens)
  {
    value:=""
    for index,token in tokens
    {
      found := InStr(token, optionName)
      if (found==1)
      {
        valueStart := found + StrLen(optionName)
        value := SubStr(token, valueStart)
        if (value == "")
          return true
        return value
      }
    }
    return ""
  }

} ; End gex
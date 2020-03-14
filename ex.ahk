class ex {

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



  } ; End ex.Gui

  class Events {

    class Common {
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
    } ; End ex.Events.Common

  } ; End ex.Events

} ; End ex
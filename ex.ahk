class ex {
  class Gui {

  }

  class Events {
    
    class Common {
      static flashPeriod := 500
      static flashCount := 3
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
    }

  }
}
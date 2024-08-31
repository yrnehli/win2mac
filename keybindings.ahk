; Run this script with AutoHotKey v2
; To enable this script at startup, paste this script into your `shell:startup` folder.

; Remap these keys with SharpKeys
; [Regular Keyboard]                [Mac Keyboard]
; - LCtrl => RCtrl                  - LCtrl => RCtrl
; - LWin => LAlt                    - LWin => LCtrl
; - LAlt => LCtrl
; - RAlt => LWin (Optional)

#SingleInstance Force
SendMode("Input")
SetWorkingDir(A_ScriptDir)

; UK Layout Keybindings
; Shift & 3::Send("£")
; !3::Send("{Raw}#")

Ctrl & Tab::AltTab
!Tab::Send("^{Tab}")

; Quit App
^q::Send("!{f4}")

; Screenshot
^+4::Send("#+s")

^Left::{
    Suspend(true)
    Send("{Home}")
    Suspend(false)
    return
}

^Right::{
    Suspend(true)
    Send("{End}")
    Suspend(false)
    return
}

^Up::{
    Suspend(true)
    Send("^{Home}")
    Suspend(false)
    return
}
^Down::{
    Suspend(true)
    Send("^{End}")
    Suspend(false)
    return
}

+^Left::{
    Suspend(true)
    Send("+{Home}")
    Suspend(false)
    return
}

+^Right::{
    Suspend(true)
    Send("+{End}")
    Suspend(false)
    return
}

+^Up::{
    Suspend(true)
    Send("+^{Home}")
    Suspend(false)
    return
}

+^Down::{
    Suspend(true)
    Send("+^{End}")
    Suspend(false)
    return
}

!Left::{
    Suspend(true)
    Send("^{Left}")
    Suspend(false)
    return
}

!Right::{
    Suspend(true)
    Send("^{Right}")
    Suspend(false)
    return
}

+!Left::{
    Suspend(true)
    Send("+^{Left}")
    Suspend(false)
    return
}

+!Right::{
    Suspend(true)
    Send("+^{Right}")
    Suspend(false)
    return
}

>^A::{
    Suspend(true)
    Send("{Home}")
    Suspend(false)
    return
}

>^E::{
    Suspend(true)
    Send("{End}")
    Suspend(false)
    return
}

>^F::{
    Suspend(true)
    Send("{Right}")
    Suspend(false)
    return
}

>^B::{
    Suspend(true)
    Send("{Left}")
    Suspend(false)
    return
}

>^K::{
    Suspend(true)
    Send("{Shift Down}")
    Send("{End}")
    Send("{Shift Up}")
    Send("{Backspace}")
    Suspend(false)
    return
}

^Backspace::{
    Suspend(true)
    Send("{Shift Down}")
    Send("{Home}")
    Send("{Shift Up}")
    Send("{Backspace}")
    Suspend(false)
    return
}

!Backspace::{
    Suspend(true)
    Send("{Ctrl Down}")
    Send("{Backspace}")
    Send("{Ctrl Up}")
    Suspend(false)
    return
}

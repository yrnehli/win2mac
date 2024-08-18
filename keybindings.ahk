; Remap these keys with SharpKeys

; [Regular Keyboard]
; LCtrl => RCtrl
; LWin => LAlt
; LAlt => LCtrl
; RAlt => LWin (Optional)

; [Mac Keyboard]
; LCtrl => RCtrl
; LWin => LCtrl

#SingleInstance Force
SendMode("Input")
SetWorkingDir(A_ScriptDir)

Ctrl & Tab::AltTab
!Tab::Send("^{Tab}")

^q::Send("!{f4}")

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
    Send("{Blind}{Ctrl Up}")
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
}

!Backspace::{
    Suspend(true)
    Send("{Ctrl Down}")
    Send("{Backspace}")
    Send("{Ctrl Up}")
    Suspend(false)
}

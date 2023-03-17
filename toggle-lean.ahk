$*q::ProcessLean("q")
$*e::ProcessLean("e")
$*Shift::ProcessLean()

ProcessLean(key := -1){
	static lean_state := 0
	
    if (key == -1)
        key := lean_state
	if (lean_state != 0){
		Send % "{Blind}{" lean_state " up}"
		;~ ToolTip % lean_state " up"
		wasRelease := (lean_state == key)
		lean_state := 0
		if (wasRelease)
			return
	}
    if (key != 0){
        Send % "{Blind}{" key " down}"
        ;~ ToolTip % key " down"
    }
	lean_state := key
}
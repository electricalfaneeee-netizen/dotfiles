pragma Singleton

import Quickshell

Singleton {
    property bool isOpen: false 
    
    function toggle() {
	isOpen = !isOpen
    }
}

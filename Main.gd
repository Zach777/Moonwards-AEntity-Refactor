extends Node


func _ready() -> void :
	var but : Button = $Control/Button
	but.connect("pressed", self, "ready_d")

func ready_d() -> void :
	var e = $Entity
	var epi : EPIUse
	epi = e.request_epi(Autoload.EPI_USE)
	
	epi.perform()
	

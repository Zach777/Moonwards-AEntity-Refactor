extends Node
class_name EPIBase

export var tree_name : String


func _ready() -> void :
# warning-ignore:return_value_discarded
	connect("renamed", self, "_rename_attempted")

func _rename_attempted() -> void :
	get_tree().quit()

extends Node
class_name AEntity

onready var epis : Node = $EPIs


func request_epi(epi_name : String) -> EPIBase :
	if epis.has_node(epi_name) :
		var return_epi= epis.get_node(epi_name)
		return return_epi
	else :
		return Autoload.get_dummy_epi(epi_name)

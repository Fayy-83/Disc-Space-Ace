extends StaticBody2D


func _ready():
	modulate = Color(Color.MEDIUM_BLUE)

func _process(_delta: float) -> void:
	if Globals.is_dragging:
		visible = true
	else:
		visible = false
	_has_file_in()


func _on_area_2d_area_entered(area: Area2D) -> void:
	var groups = area.get_parent().get_groups()
	var type =  _search_for_type(groups)
	print(type)
	if type in Globals.POSSIBLE_STATES:
		
		print("in if - " + type)
		Globals.state = type
	#self.remove_from_group("droppable")
	

func _on_area_2d_area_exited(area: Area2D) -> void:
	var groups = area.get_parent().get_groups()
	var type = _search_for_type(groups)
	#self.add_to_group("droppable")
	print("area exited")

	if type in Globals.POSSIBLE_STATES:
		Globals.state = "none"

func _search_for_type(groups: Array):
	for i in Globals.POSSIBLE_STATES:
		if groups.has(i):
			return i
	return "none"

func _has_file_in():
	var x = $Area2D
	var areas = x.get_overlapping_areas()
	for i in areas:
		#print(i.get_parent().get_groups())
		if i.get_parent().is_in_group("files"):
			self.remove_from_group("droppable")
			#print(true)
			return true
	self.add_to_group("droppable")
	return false

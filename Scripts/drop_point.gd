extends StaticBody2D

func _ready():
	modulate = Color(Color.MEDIUM_BLUE)

func _process(_delta: float) -> void:
	if Globals.is_dragging:
		visible = true
	else:
		visible = false
		
	_has_file_in_proc()

		

func _on_area_2d_area_entered(_area: Area2D) -> void:
	await(get_tree().create_timer(0.01).timeout)
	print(is_in_group("droppable"))
	self.remove_from_group("droppable")

func _on_area_2d_area_exited(_area: Area2D) -> void:
	print(is_in_group("droppable"))
	self.add_to_group("droppable")

func _has_file_in_proc():
	var x = $Area2D
	var areas = x.get_overlapping_areas()
	for i in areas:
		if i.get_parent().is_in_group("files"):
			self.remove_from_group("droppable")
			return true
	self.add_to_group("droppable")
	return false
	
func _has_file_in():
	var x = $Area2D
	var areas = x.get_overlapping_areas()
	for i in areas:
		if i.get_parent().is_in_group("files"):
			return i.get_parent()
	return null

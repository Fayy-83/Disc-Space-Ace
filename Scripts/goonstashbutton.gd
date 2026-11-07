extends Button
@export var node:PackedScene

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/chase.tscn")
	pass # Replace with function body.

func _process(_delta):
	hide()
	await(get_tree().create_timer(7).timeout)
	show()

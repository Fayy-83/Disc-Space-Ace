extends Node2D



func _on_button_2_pressed() -> void:#quit
	get_tree().quit()


func _on_button_pressed() -> void:#start
	get_tree().change_scene_to_file("res://Scenes/Levels/intro.tscn")

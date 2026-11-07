extends Area2D

#@export var level: PackedScene

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		await(get_tree().create_timer(0.1).timeout)
		get_tree().quit()

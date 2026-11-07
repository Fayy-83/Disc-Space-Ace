extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await(get_tree().create_timer(60).timeout)
	self.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		show()
		await(get_tree().create_timer(30).timeout)
		hide()

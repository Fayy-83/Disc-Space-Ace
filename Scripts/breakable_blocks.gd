extends StaticBody2D

@export var target: Area2D

func _on_top_body_entered(body: Node2D) -> void:
	if(body.is_in_group("heavy")):
		await(get_tree().create_timer(0.1).timeout)
		queue_free()


func _on_left_body_entered(body: Node2D) -> void:
	print("left entered")
	_side_entered(body)


func _on_right_body_entered(body: Node2D) -> void:
	print("right entered")
	_side_entered(body)


func _on_down_body_entered(body: Node2D) -> void:
	print("bottom entered")
	_bottom_entered(body)


func _side_entered(body:Node2D):
	if body.is_in_group("heavy"):
		print("in heavy")
		print(body.velocity.x)
		if abs(body.velocity.x) > 0:
			#play animation
			queue_free()
			
func _bottom_entered(body: Node2D):
	if body.is_in_group("heavy"):
		print("in heavy")
		print(body.velocity.y)
		if !body.is_on_floor():
			#play animation
			queue_free()
	
		
		

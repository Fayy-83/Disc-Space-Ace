extends Area2D
const S_VELOCITY: Vector2 = Vector2(2000,-1000)
const N_VELOCITY: Vector2 = Vector2(1000,-500)
const L_VELOCITY: Vector2 = Vector2(500,-300)
const INVERTER: Vector2 = Vector2(-1,1)

@export var left: bool

func _on_body_entered(body: Node2D) -> void:
	print("body entered")
	if body.is_in_group("Player") and !left:
		body.canmove = false
		print("is player")
		if body.is_in_group("small"):
			body.velocity = S_VELOCITY
		elif body.is_in_group("big"):
			body.velocity = L_VELOCITY
		elif body.is_in_group("zip"):
			pass
		else:
			body.velocity = N_VELOCITY
		await(get_tree().create_timer(1).timeout)
		body.canmove = true
		
	else:
		#body.canmove = false
		if body.is_in_group("small"):
			body.velocity = S_VELOCITY * INVERTER
		elif body.is_in_group("big"):
			body.velocity = L_VELOCITY * INVERTER
		elif body.is_in_group("zip"):
			pass
		else:
			body.velocity = N_VELOCITY * INVERTER
		await(get_tree().create_timer(1).timeout)
		#body.canmove = true
		

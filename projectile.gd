extends Area2D

var speed = 750

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_Bullet_body_entered(body):
	print("body entered")
	if body.is_in_group("Player"):
		print("is player")
		body._handle_damage(1)
		body._handle_knockback_dir(transform.x)
	queue_free()

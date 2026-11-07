extends CharacterBody2D
const DAMAGE: int = 1
const KNOCKBACK: int = -1000
const SPEED: float = 150.0
const JUMP_VELOCITY: float = -400.0
var direction: int = 1

func _physics_process(delta: float) -> void:
	if self.is_on_wall():
		direction = direction * -1
	if not is_on_floor():
		velocity += get_gravity() * delta
	velocity.x = direction * SPEED
	_play_animation(direction)
	move_and_slide()


func _on_d_hitbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("damage"):
		queue_free()


func _on_a_hitbox_area_entered(area: Area2D) -> void:
	var a_parent = area.get_parent()
	
	if a_parent.is_in_group("Player"):
		print("area entered")
		await(get_tree().create_timer(0.02).timeout)
		a_parent.velocity.y = -100
		a_parent.velocity.x = 500 * direction * -1
		move_and_slide()

func _flip(dir):
	if dir == -1:
		$AnimatedSprite2D.flip_h = false
	elif dir == 1:
		$AnimatedSprite2D.flip_h = true
	
func _play_animation(dir:float):
	_flip(dir)
	$AnimatedSprite2D.play("Move")

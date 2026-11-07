extends StaticBody2D
var dcounter: float = 0

@export var Bullet : PackedScene

func shoot():
	var b = Bullet.instantiate()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform


func _on_timer_timeout() -> void:
	$Timer.start()
	shoot()

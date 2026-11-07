extends Area2D
@export var target: Player
@export var amount: Vector2


func _process(_delta: float) -> void:
	position.x = move_toward(position.x,target.position.x,amount.x) 
	position.y = move_toward(position.y, target.position.y, amount.y)
	if position == target.position:
		target._die()

extends StaticBody2D
var p_follow:PathFollow2D
var go_up:bool = false
@export var camera:PackedScene
func _ready():
	p_follow = get_parent()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(go_up) and p_follow.progress_ratio < 1:
		p_follow.progress_ratio += 0.2
		if camera:
			camera._add_trauma(0.3)



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("heavy"):
		go_up = true
		

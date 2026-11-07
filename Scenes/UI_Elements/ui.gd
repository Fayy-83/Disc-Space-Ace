extends CanvasLayer
@export var player:Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$Health_Bar.value = player.health
	if Globals.shortcuts:
		if Input.is_action_just_pressed("1"):
			Globals.state = "none"
			pass
		
		if Input.is_action_just_pressed("2"):
			Globals.state = "small"
			pass
			
		if Input.is_action_just_pressed("3"):
			Globals.state = "big"
			

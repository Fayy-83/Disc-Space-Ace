extends ProgressBar

var Player: CharacterBody2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Player = get_node("res://Scenes/Player.tscn")
	value = Player.MAX_HEALTH
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Player and "health" in Player:
		value = Player.health

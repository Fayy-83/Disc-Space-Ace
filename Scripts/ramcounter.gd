extends Label
var count = 1024
func _ready() -> void:
	text = ""


func _process(_delta):
	await(get_tree().create_timer(2).timeout)
	if count < 128000:
		count += 1024
		text = "%dKb" % count
	else:
		text = "RAM OK   "

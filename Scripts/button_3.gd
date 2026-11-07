extends Button

func _process(_delta):
	hide()
	await(get_tree().create_timer(5).timeout)
	show()

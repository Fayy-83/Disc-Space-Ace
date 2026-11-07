extends Button

func _process(_delta):
	hide()
	await(get_tree().create_timer(4.75).timeout)
	show()

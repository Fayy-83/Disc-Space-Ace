extends Panel

func _process(_delta):
	show()
	await(get_tree().create_timer(7).timeout)
	hide()

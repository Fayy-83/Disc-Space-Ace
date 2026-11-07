extends Panel

func _process(_delta):
	hide()
	await(get_tree().create_timer(1).timeout)
	show()

extends Panel

func _process(_delta):
	show()
	await(get_tree().create_timer(5).timeout)
	hide()

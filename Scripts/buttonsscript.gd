extends VBoxContainer

func _process(_delta):
	hide()
	await(get_tree().create_timer(4.5).timeout)
	show()

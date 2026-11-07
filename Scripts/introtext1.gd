extends Label
var count = 0
func _ready() -> void:
	text = "I was on a noble mission..."


func _process(_delta):
	if count < 32000:
		count += 256
		text = "I was on a noble mission...

"
	elif count < 64000:
		count += 256
		text = "I was on a noble mission...

A noble mission to save my user DISK SPACE

"

	elif count < 96000:
		count += 256
		text = "I was on a noble mission...

A noble mission to save my user DISK SPACE

Little did I know just how 
difficult my journey would become...
"

	else:
		text = "I was on a noble mission...

A noble mission to save my user DISK SPACE

Little did I know just how 
difficult my journey would become...
"
		await(get_tree().create_timer(1).timeout)
		get_parent().get_child(2).show()

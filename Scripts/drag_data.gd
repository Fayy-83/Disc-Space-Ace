class_name ItemDrag

signal drag_completed(data:ItemDrag)

var source: Control 
var preview: Control 
var button: Button 

func drag_data(_source:Control, _preview:Control, _button:Button):
	self.source = _source
	self.preview = _preview
	self.button = _button
	
	self.preview.tree_exiting.connect(on_tree_exiting)
	
func on_tree_exiting():
	drag_completed.emit(self)

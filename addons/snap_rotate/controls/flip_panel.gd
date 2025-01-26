extends EditorProperty

func _init() -> void:
	var hbox = HBoxContainer.new()
	add_child(hbox)
	hbox.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	
	var button:Button = Button.new()
	hbox.add_child(button)
	add_focusable(button)
	button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button.text = 'flip x'
	button.pressed.connect(_change_value.bind(true))
	
	var button2:Button = Button.new()
	hbox.add_child(button2)
	add_focusable(button2)
	button2.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	button2.text = 'flip y'
	button2.pressed.connect(_change_value.bind(false))

func _change_value(is_horizontal:bool) -> void:
	var object:Object = EditorInterface.get_inspector().get_edited_object()
	if is_horizontal:
		object.scale.x *= -1
	else:
		object.scale.y *= -1

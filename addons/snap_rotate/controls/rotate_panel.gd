extends EditorProperty

## The snap values for rotation that should be created.
## Edit this array and the new values will automatically be added
## to the inspector in the order they are arranged.
var rotation_values:Array[int] = [0, 90, 180, 270]

var _edited_property = 'rotation'

func _init() -> void:
	var hbox = HBoxContainer.new()
	add_child(hbox)
	for val in rotation_values:
		var button:Button = Button.new()
		hbox.add_child(button)
		add_focusable(button)
		button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		button.text = str(val) + '°'
		button.pressed.connect(func (): _change_value(val))

func _change_value(val:int) -> void:
	var value = deg_to_rad(val)
	emit_changed(_edited_property, value)

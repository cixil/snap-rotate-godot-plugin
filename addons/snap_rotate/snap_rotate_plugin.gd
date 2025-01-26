extends EditorInspectorPlugin

var rotate_button = preload("res://addons/snap_rotate/controls/rotate_panel.gd")
var flip_buttons = preload("res://addons/snap_rotate/controls/flip_panel.gd")

func _can_handle(object: Object) -> bool:
	if object is Node2D or object is Control:
		return true
	return false

func _parse_property(object: Object, type: Variant.Type, name: String, hint_type: PropertyHint, hint_string: String, usage_flags: int, wide: bool) -> bool:
	# use blank space " " as names so nothing shows
	# these are meant to extend the properties above them so no name is needed
	if name == "rotation" and type == TYPE_FLOAT:
		add_property_editor(name, rotate_button.new(), true, " ")
	if name == "scale":
		add_property_editor(name, flip_buttons.new(), true, " ")
	return false

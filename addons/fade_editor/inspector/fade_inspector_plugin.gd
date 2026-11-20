@tool
extends EditorInspectorPlugin

const FadeVector3Editor = preload("res://addons/fade_editor/inspector/fade_vector3_editor.gd")


func _can_handle(object: Object) -> bool:
	return object is Node3D


func _parse_property(
	object: Object,
	type: Variant.Type,
	property_name: String,
	_hint_type: PropertyHint,
	_hint_string: String,
	_usage_flags: int,
	_wide: bool
) -> bool:
	if type != TYPE_VECTOR3:
		return false

	if property_name != "position" and property_name != "rotation_degrees" and property_name != "scale":
		return false

	var editor := FadeVector3Editor.new()
	editor.setup(property_name)
	add_property_editor(property_name, editor)
	return true

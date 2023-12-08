extends Node;

func _ready():
	var controls:ControlsMap = ControlsMap.new();
	controls.controls = DictToInputMap.save();
	ResourceSaver.save(controls, "res://addons/Controls/DEFAULT.tres")

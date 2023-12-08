class_name DictToInputMap;

static func load(dict:Dictionary):
	for key in dict:
		InputMap.erase_action(key);
		InputMap.add_action(key);
		for i in dict[key]:
			InputMap.action_add_event(key, i);

static func save() -> Dictionary:
	var result:Dictionary;
	for action in InputMap.get_actions():
		if (action.begins_with("ui_")): continue;
		var current_list:Array[InputEvent] = [];
		result[action] = current_list;
		for event in InputMap.action_get_events(action):
			current_list.append(event);
	return result;

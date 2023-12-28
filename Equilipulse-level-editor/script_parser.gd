extends Resource
class_name ScriptParser

@export_category("ScriptParser")

@export var COMMANDS : Array[ScriptCommand]
@export_node_path("Node") var ROOT

var COMMAND_NAMES = []

func preparse():
	for i in COMMANDS:
		if(i.NAME in COMMAND_NAMES):
			var another = COMMANDS[COMMAND_NAMES.find(i.NAME)]
			push_error(i.NAME + " from " + i.resource_path + " redefines " + another.NAME + " from " + another.resource_path)
		COMMAND_NAMES.append(i.NAME)

func parse(path : String):
	var file = FileAccess.open(path, FileAccess.READ)
	var script = file.get_as_text()
	file.close()
	
	var parsed = []
	var step = []
	var lines = script.split("\n")
	
	var i = 1
	while i < len(lines):
		if lines[i] == "STEP_DOWN":
			parsed.append(step)
			step = []
		
		var splitted = lines[i].split(" ")
		step.append([splitted[0], splitted.slice(1)])
		
		i += 1
	return parsed

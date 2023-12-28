extends Resource
class_name ScriptCommand

@export_category("ScriptCommand")

@export var NAME : String
@export_file("*.gd") var SCRIPT
@export var CALLABLE_NAME : String

func execute(root : Node, parameters : Array[Variant]):
	await load(SCRIPT).new().get(CALLABLE_NAME).call(root, parameters)

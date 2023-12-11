extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func load_chart(filename: String):
	var chartjsonstring = FileAccess.get_file_as_string(filename)
	var chartparsed = JSON.parse_string(chartjsonstring)

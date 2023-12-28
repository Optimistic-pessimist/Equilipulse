extends Node


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func load_pack(path: String):
	# Loads a level pack from a .eqpack file
	
	ProjectSettings.load_resource_pack(path)


func unload_pack():
	
	# Deletes a loaded level pack from res://
	var pack_file = FileAccess.open("res://pack.json", FileAccess.READ)
	var pack = JSON.parse_string(pack_file.get_as_text())
	pack_file.close()
	DirAccess.remove_absolute("res://pack.json")
	
	for chart in pack:
		DirAccess.remove_absolute("res://" + chart["jacket"])
		
		var chart_file = FileAccess.open("res://" + chart["path"], FileAccess.READ)
		var chart_data = JSON.parse_string(chart_file.get_as_text())
		chart_file.close()
		DirAccess.remove_absolute("res://" + chart["path"])


func load_chart(path: String):
	# Loads a chart from a .eqchart file
	
	pass

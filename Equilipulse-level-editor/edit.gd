extends Control


func _ready():
	pass


func _process(delta):
	$HSplitContainer/CodeEdit.add_theme_font_size_override("font_size", 28)

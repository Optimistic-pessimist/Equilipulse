extends Node2D


# Called when the node enter's the scene tree for the first time.
func _ready():
	resize_background()
	var chart_loader = preload("res://blocks/chart_loader.gd").new()
	chart_loader.isready()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func resize_background():
	# Resizes background art to fit screen
	
	var width_fit = 1204.0 / $BackgroundArt.texture.get_width()
	var height_fit = 768.0 / $BackgroundArt.texture.get_height()
	if width_fit * $BackgroundArt.texture.get_height() < height_fit * $BackgroundArt.texture.get_width():
		$BackgroundArt.scale *= width_fit
	else:
		$BackgroundArt.scale *= height_fit

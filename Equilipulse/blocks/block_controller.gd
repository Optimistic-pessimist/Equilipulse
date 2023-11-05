extends Node

@onready var chart_loader = preload("res://blocks/chart_loader.gd").new()

# Called when the node enters the scene tree for the first time.
func _ready():
	chart_loader.load_chart("res://resources/chart1.json")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

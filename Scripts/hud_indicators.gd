extends Control

@onready var health_bar = $health/bar
@onready var health_initial_size = health_bar.size.x


func _process(delta):
	health_bar.size.x = Global.hp 
	
	
	

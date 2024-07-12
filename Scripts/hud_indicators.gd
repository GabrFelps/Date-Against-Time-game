extends Control

@onready var player = get_tree().get_first_node_in_group("Player")
@onready var health_bar = $health/bar
@onready var health_initial_size = health_bar.size.x


func _process(delta):
	health_bar.size.x = player.hp 
	
	
	

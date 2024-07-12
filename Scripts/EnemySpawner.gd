extends Node2D

@onready var player = get_tree().get_first_node_in_group("Player")
var can_spawn = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	if can_spawn:
		var _new_ghost = load("res://Scenes/enemy.tscn")
		var _ghost_spawn = _new_ghost.instantiate()
		_ghost_spawn.global_position = get_random_position()
		get_parent().add_child(_ghost_spawn)
	

func get_random_position():
	var vpr = get_viewport_rect().size * randf_range(1.1,1.3)
	var top_left = Vector2(player.global_position.x - vpr.x/2, player.global_position.y - vpr.y/2)
	var top_right = Vector2(player.global_position.x + vpr.x/2, player.global_position.y - vpr.y/2)
	var bottom_left = Vector2(player.global_position.x - vpr.x/2, player.global_position.y + vpr.y/2)
	var bottom_right = Vector2(player.global_position.x + vpr.x/2, player.global_position.y + vpr.y/2)
	var pos_side = ["up"].pick_random()
	var spawn_pos1 = Vector2.ZERO
	var spawn_pos2 = Vector2.ZERO
	
	match pos_side:
		"up":
			spawn_pos1 = top_left
			spawn_pos2 = top_right
		"down":
			spawn_pos1 = bottom_left
			spawn_pos2 = bottom_right
		"left":
			spawn_pos1 = top_left
			spawn_pos2 = bottom_left
		"right":
			spawn_pos1 = top_right
			spawn_pos2 = bottom_right
			
	# picks a random coordinate of the side to spawn the enemy
	var x_spawn = randf_range(spawn_pos1.x , spawn_pos2.x)
	var y_spawn = randf_range(spawn_pos1.y , spawn_pos2.y)
	return Vector2(x_spawn,y_spawn)




func _on_area_2d_area_entered(area):
	can_spawn = true # Replace with function body.

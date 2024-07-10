extends CharacterBody2D

@onready var player = get_tree().get_first_node_in_group("PLayer")

func _on_area_2d_body_entered(body):
	if body is Player:
		Global.transition_to_scene("win") # Replace with function body.

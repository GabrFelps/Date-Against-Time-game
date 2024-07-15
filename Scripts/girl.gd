extends CharacterBody2D

func _on_area_2d_body_entered(body):
	if body is Player:
		Global.final += 1
		if Global.hp >= 120:
			Global.game_over()
		else: 
			Global.transition_to_scene("win") # Replace with function body.


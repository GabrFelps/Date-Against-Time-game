extends CanvasLayer

@onready var restart = $VBoxContainer/Restart as Button
@onready var exit = $VBoxContainer/Exit as Button

func _on_restart_pressed():
	Global.transition_to_scene("game")
	
func _on_exit_pressed():
	Global.transition_to_scene("main_menu")

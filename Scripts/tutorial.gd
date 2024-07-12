extends CanvasLayer

@onready var exit = $VBoxContainer/Exit as Button

func _on_exit_pressed():
	Global.transition_to_scene("main_menu")

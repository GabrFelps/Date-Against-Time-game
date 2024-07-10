extends CanvasLayer

@onready var restart = $VBoxContainer/Restart as Button
@onready var main_menu = $VBoxContainer/Main_Menu as Button



func _on_restart_pressed():
	Global.transition_to_scene("game")
	
func _on_main_menu_pressed():
	Global.transition_to_scene("main_menu")

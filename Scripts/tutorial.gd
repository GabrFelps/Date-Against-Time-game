extends CanvasLayer

@onready var exit : Button = $VBoxContainer/Exit 

func _ready():
	exit.grab_focus()

func _on_exit_pressed():
	Global.transition_to_scene("main_menu")

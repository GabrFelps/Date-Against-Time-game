extends CanvasLayer

@onready var restart = $VBoxContainer/Restart as Button
@onready var exit = $VBoxContainer/Exit as Button
@onready var label_2 = $Label2

func _ready():
	label_2.visible = false
	restart.grab_focus()
	
func _process(delta):
	if Global.hp >= 120 and Global.final > 0:
		label_2.visible = true
	
func _on_restart_pressed():
	Global.transition_to_scene("game")
	
func _on_exit_pressed():
	Global.transition_to_scene("main_menu")

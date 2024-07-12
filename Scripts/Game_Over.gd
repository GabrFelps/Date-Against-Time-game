extends CanvasLayer

@onready var restart = $VBoxContainer/Restart as Button
@onready var exit = $VBoxContainer/Exit as Button
@onready var label_2 = $Label2
@onready var player = get_tree().get_first_node_in_group("Player")

func _ready():
	label_2.visible = false
func _process(delta):
	if player != null:
		if player.hp >= 120:
			label_2.visible = true
	
func _on_restart_pressed():
	Global.transition_to_scene("game")
	
func _on_exit_pressed():
	Global.transition_to_scene("main_menu")

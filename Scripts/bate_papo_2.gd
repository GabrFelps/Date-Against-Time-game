extends CanvasLayer
@onready var button = $Button

func _ready():
	button.grab_focus()
	
func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/world.tscn")

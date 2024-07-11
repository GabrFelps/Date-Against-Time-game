extends CanvasLayer
@onready var start_button = $Start_Button

func _ready():
	start_button.grab_focus()


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/world.tscn")

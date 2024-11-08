extends CanvasLayer

@onready var start_button = $VBoxContainer/Start_Button as Button
@onready var tutorial_button = $VBoxContainer/Tutorial_Button as Button
@onready var exit_button = $VBoxContainer/Exit_Game as Button
@export var start_level = preload("res://Scenes/world.tscn") as PackedScene


func _ready():
	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	tutorial_button.button_down.connect(on_tutorial_pressed)
	start_button.grab_focus()
	
func on_start_pressed() -> void:
	Global.transition_to_scene("game") 
	Global.transition_to_scene("introduction")
func on_tutorial_pressed() -> void:
	Global.transition_to_scene("Tutorial")
	
func on_exit_pressed() -> void:
	get_tree().quit()





	

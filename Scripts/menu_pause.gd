extends CanvasLayer
@onready var resume__button = $VBoxContainer/Resume__Button


func _ready():
	visible = false
func _process(delta):
	pass


func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		visible = true
		get_tree().paused = true
		resume__button.grab_focus()
		
func _on_resume__button_pressed():
	get_tree().paused = false
	visible = false


func _on_menu_button_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Menu_Inicial.tscn")

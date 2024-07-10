extends Node

@onready var can_pause = true
@onready var transition_scene : PackedScene = preload("res://Scenes/fade_in_transition.tscn")

# Cenas principais
var main_scenes := {
	"game" : preload("res://Scenes/world.tscn"),
	#"introduction":preload(), Cena das mensagens aparecendo entre Main Menu e World
	#"Tutorial" : preload(),
	"main_menu" : preload("res://Scenes/Menu_Inicial.tscn"),
	#"game_over" : preload(),
	#"win" : preload()
}

# Função que transiciona as cenas
func transition_to_scene(destiny_scene: String) -> void:
	var trans = transition_scene.instantiate()
	trans.destiny_scene = destiny_scene
	add_child(trans)

func game_over() -> void:
	Global.transition_to_scene("main_menu") # Depois, alterar para tela de game over
	
func win() -> void:
	Global.transition_to_scene("main_menu") # Depois, alterar para win

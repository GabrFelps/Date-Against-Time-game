extends Node

@onready var can_pause = true
@onready var transition_scene : PackedScene = preload("res://Scenes/fade_in_transition.tscn")
var message_index = 0
var pode_spawnar_mensagem = false
var hp = 0

# Cenas principais
var main_scenes := {
	"game" : preload("res://Scenes/world.tscn"),
	"introduction" : preload("res://Scenes/bate_papo_1.tscn"), # Cena das mensagens aparecendo entre Main Menu e World
	"Tutorial" : preload("res://Scenes/tutorial.tscn"),
	"main_menu" : preload("res://Scenes/Menu_Inicial.tscn"),
	"game_over" : preload("res://Scenes/game_over.tscn"),
	"win" : preload("res://Scenes/game_win.tscn")
}

# Função que transiciona as cenas
func transition_to_scene(destiny_scene: String) -> void:
	var trans = transition_scene.instantiate()
	trans.destiny_scene = destiny_scene
	add_child(trans)

func game_over() -> void:
	Global.transition_to_scene("game_over") # Depois, alterar para tela de game over
	
func win() -> void:
	Global.transition_to_scene("win") # Depois, alterar para win

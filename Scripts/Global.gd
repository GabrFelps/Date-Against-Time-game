extends Node

@onready var can_pause = true
@onready var transition_scene : PackedScene = preload("res://Scenes/fade_in_transition.tscn")
var message_index = 0
var pode_spawnar_mensagem = false
var hp = 0
var final = 0
var girlNode : Node2D = null;
var playerNode : Node2D = null;
var arrowAngle : Vector2 = Vector2.ZERO


# Cenas principais
var main_scenes := {
	"game" : preload("res://Scenes/world.tscn"),
	"introduction" : preload("res://Scenes/bate_papo_1.tscn"), # Cena das mensagens aparecendo entre Main Menu e World
	"Tutorial" : preload("res://Scenes/tutorial.tscn"),
	"main_menu" : preload("res://Scenes/Menu_Inicial.tscn"),
	"game_over" : preload("res://Scenes/game_over.tscn"),
	"win" : preload("res://Scenes/game_win.tscn")
}

var songs := {
	"olha_mensagem" : "res://Songs/Fui fui olha a mensagem.mp3",
	"main_music" : "res://Songs/Digital Love [8 Bit Tribute to Daft Punk] - 8 Bit Universe.mp3"
}

func _process(delta):
	if girlNode != null and playerNode != null: 
		# TODO: verificar função is_instance_valid()
		arrowAngle = playerNode.global_position.direction_to(girlNode.global_position)
		

# Função que transiciona as cenas
func transition_to_scene(destiny_scene: String) -> void:
	var trans = transition_scene.instantiate()
	trans.destiny_scene = destiny_scene
	add_child(trans)

func game_over() -> void:
	Global.transition_to_scene("game_over") # Depois, alterar para tela de game over
	
func win() -> void:
	Global.transition_to_scene("win") # Depois, alterar para win

extends CharacterBody2D
class_name Message

@onready var message = $message

var database_message : Dictionary = {
	1 : "Já está vindo?",
	2 : "Que demora é essa??",
	3 : "Cadê você???",
	4 : "Vai me deixar esperando?"
}

@export var SPEED = 48.0
@export var DAMAGE = 100.0
@onready var player = get_tree().get_first_node_in_group("Player")
@onready var sprite = $Sprite2D

func _ready():
	collision_layer = 3
	
	

func _process(_delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = SPEED * direction
	move_and_slide()
	
	#message.text = database_message[Global.message_index]


func _on_area_2d_body_entered(body):
	if body is Player:
		Global.game_over()
		
		

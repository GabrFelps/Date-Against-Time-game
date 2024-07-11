extends CharacterBody2D
class_name Message

@onready var message = $message


var database_message : Dictionary = {
	1 : "cuzin",
	2 : "pauzin",
	3 : "brusquetinha",
	4 : "blackhole games"
	}

@export var SPEED = 50.0
@export var DAMAGE = 100.0
@onready var player = get_tree().get_first_node_in_group("Player")
@onready var sprite = $Sprite2D


func _process(_delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = SPEED * direction
	move_and_slide()
	
	message.text = database_message[Global.message_index]

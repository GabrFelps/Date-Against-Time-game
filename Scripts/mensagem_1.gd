extends CharacterBody2D
class_name Message

@export var SPEED = 50.0
@export var DAMAGE = 100.0
@onready var player = get_tree().get_first_node_in_group("Player")
@onready var sprite = $Sprite2D

func _ready():
	pass 

func _process(_delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = SPEED * direction
	move_and_slide()
	

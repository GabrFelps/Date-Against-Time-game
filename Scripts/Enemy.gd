extends CharacterBody2D
class_name Enemy

@export var SPEED = 50.0
@export var hp = 10.0
@export var DAMAGE = 100.0
@onready var player = get_tree().get_first_node_in_group("Player")
@onready var sprite = $EnemySprite

func _ready():
	pass



func _physics_process(_delta):
	var direction = global_position.direction_to(player.global_position)
	
	
	velocity = SPEED * direction
	if velocity.x < 0:
		sprite.flip_h = true
	else:
		sprite.flip_h = false
	move_and_slide()
	
		

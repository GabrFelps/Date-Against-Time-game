extends CharacterBody2D
class_name Enemy

@export var SPEED = 55.0
@export var hp = 10.0
@export var DAMAGE = 100.0
@onready var player = get_tree().get_first_node_in_group("Player")
@onready var sprite = $EnemySprite
var spawn_distance 
var range = 300

func _ready():
	spawn_distance = self.global_position;


func _physics_process(_delta):
	var direction = global_position.direction_to(player.global_position)
	
	
	velocity = SPEED * direction
	if velocity.x < 0:
		sprite.flip_h = true
	else:
		sprite.flip_h = false
	move_and_slide()
	if (self.global_position - spawn_distance).length() > range:
		queue_free();
	

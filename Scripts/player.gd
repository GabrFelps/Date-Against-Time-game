extends CharacterBody2D
class_name Player

signal hit
@onready var player_sprite = $PlayerSprite
@onready var collision = $CollisionShape2D
var SPEED = 60.0


# Stats do Player
var hp = 0
var max_hp = 120

func _physics_process(_delta):
	movement()
	

# Movimentação do player
func movement() -> void:
	
	# Pegando a direção do player inserida no teclado e calculando para onde ele irá
	var movement_x = Input.get_action_strength("right") - Input.get_action_strength("left")
	var movement_y = Input.get_action_strength("down") - Input.get_action_strength("up")
	var movementvector = Vector2(movement_x, movement_y)
	# Vectorizes player movement
	velocity = movementvector.normalized() * SPEED
	play_animation(movementvector)
	move_and_slide()

# Animações do player
func play_animation(movementvector) -> void:
	if movementvector:
		if movementvector.x:
			player_sprite.play("walk_h")
			if movementvector.x > 0:
				player_sprite.flip_h = false
			elif movementvector.x < 0:
				player_sprite.flip_h = true
		else:
			if movementvector.y > 0:
				player_sprite.play("walk_down")
			elif movementvector.y < 0:
				player_sprite.play("walk_up")
	else:
		player_sprite.play("idle")

# Verificando a colisão do player com os enem
func _on_mouse_entered():
	hide()
	hit.emit()
	collision.set_deferred("disabled", true)

# Hits no player
func _on_hurt_box_body_entered(body):
	if body is Enemy:
		#print("Colisão com fantasama")
		hp += 20
		SPEED = 30
		body.queue_free()
		if hp >= max_hp:
			hp = max_hp
	
	if body is Message:
		print("Player colidiu com mensagem.")
		Global.game_over()
		

	await get_tree().create_timer(2).timeout
	SPEED = 60

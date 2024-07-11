extends Area2D

@onready var enemy_sprite = $"../EnemySprite"
@onready var enemy = $".."
@onready var DAMAGE = 10
@onready var collision = $CollisionShape2D
@onready var disable_hit_box_timer = $DisableHitBoxTimer


func tempdisable() -> void:
	collision.call_deferred("set", "disabled", true)
	disable_hit_box_timer.start()


func _on_disable_hit_box_timer_timeout():
		collision.call_deferred("set", "disabled", false)


#func _on_body_entered(body):
	#if body is Player:
		#await get_tree().create_timer(1).timeout
		#enemy.queue_free()

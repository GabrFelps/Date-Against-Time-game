extends Control

@onready var health_bar = $health/bar
@onready var health_initial_size = health_bar.size.x
@onready var arrow = $heartarrow

func _process(delta):
	health_bar.size.x = Global.hp
	var _ang = Global.arrowAngle.angle();
	var _l = 100;
	arrow.rotation = _ang
	arrow.position.x = get_viewport_rect().size.x / 2 + cos(_ang) * _l
	arrow.position.y = get_viewport_rect().size.y / 2 + sin(_ang) * _l
	
	

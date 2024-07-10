extends Control

var seconds = 0
var minutes = 0
@export_range(0,60) var standard_seconds := 0
@export_range(0,5) var standard_minutes := 1


func _ready():
	$Label.text = str("%02d" % standard_minutes)+":"+str("%02d" % standard_seconds)
	reset_timer()

func _process(_delta):
	if minutes == 0 and seconds == 0:
		Global.transition_to_scene("main_menu")
	


	
func _on_timer_timeout():
	if seconds == 0:
		if minutes > 0:
			minutes -= 1
			seconds = 60
	seconds -= 1
	
	$Label.text = str("%02d" % minutes)+":"+str("%02d" % seconds)

func reset_timer():
	seconds = standard_seconds
	minutes = standard_minutes

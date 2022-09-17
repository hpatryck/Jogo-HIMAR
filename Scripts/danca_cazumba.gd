extends VideoPlayer
onready var timer := $Timer as Timer

func _ready():
	timer.start()
	pass


func _on_Timer_timeout():
	
	get_tree().change_scene("res://Cenas/Epoca.tscn")
	pass # Replace with function body.

extends VideoPlayer

onready var timer := $Timer as Timer

func _ready():
	timer.start()
	$TextureButton/Label.text = "Pular"
	$TextureButton/Label.modulate = Color(0,0,0,1)
	

func _on_Timer_timeout():
	get_tree().change_scene("res://Cenas/Epoca.tscn")
	pass # Replace with function body.


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Cenas/Epoca.tscn")
	pass # Replace with function body.

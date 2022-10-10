extends Sprite


func _ready():
	$AudioStreamPlayer2D.play()
	pass
	
	


func _on_voltar_pressed():
	get_tree().change_scene("res://Cenas/menu.tscn")
	pass # Replace with function body.

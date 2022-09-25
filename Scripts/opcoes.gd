extends Sprite

func _ready():
	$AudioStreamPlayer2D.play(3)
	pass


func _on_TextureButton5_pressed():
	get_tree().change_scene("res://Cenas/menu.tscn"  )
	pass # Replace with function body.

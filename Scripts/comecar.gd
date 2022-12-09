extends Sprite


func _ready():
	$AudioStreamPlayer2D.play(2)
	pass


func _on_TextureButton3_pressed():
	get_tree().change_scene("res://Cenas/menu.tscn"  )
	pass # Replace with function body.


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Cenas/comecajogo.tscn"  )
	pass # Replace with function body.

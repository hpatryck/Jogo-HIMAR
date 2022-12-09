extends Sprite

func _ready():
	$AudioStreamPlayer2D.play(2)
	pass # Replace with function body.


func _on_TextureButton3_pressed():
	get_tree().change_scene("res://Cenas/primeiro_video.tscn" )
	pass # Replace with function body.


func _on_TextureButton2_pressed():
	get_tree().change_scene("res://Cenas/comecar.tscn"  )
	pass # Replace with function body.

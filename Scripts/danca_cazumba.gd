extends VideoPlayer
onready var timer := $Timer as Timer

func _ready():
	$musica.play()
	timer.start()
	$TextureButton/Label.text = "Pular"
	$TextureButton/Label.modulate = Color(0,0,0,1)
	pass


func _on_Timer_timeout():
	fim_game()
	pass # Replace with function body.


func _on_TextureButton_pressed():
	fim_game()
	pass # Replace with function body.



func fim_game():
	
	var file = File.new()
	file.open("res://player.txt", File.READ)
	var cont = file.get_as_text().split(";")[1]
	
	var cont1 = int(cont)
	if cont1 <0:
		get_tree().change_scene("res://Cenas/game_over.tscn")
	else:
		get_tree().change_scene("res://Cenas/Epoca.tscn")
	
	

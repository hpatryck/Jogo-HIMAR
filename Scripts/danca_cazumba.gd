extends VideoPlayer
onready var timer := $Timer as Timer

func _ready():
	$musica.play()
	timer.start()
	pass


func _on_Timer_timeout():
	var file = File.new()
	file.open("res://player.txt", File.READ)
	var cont = file.get_as_text().split(";")[1]
	print(cont)
	var cont1 = int(cont)
	if cont1 <0:
		get_tree().change_scene("res://Cenas/game_over.tscn")
	else:
		get_tree().change_scene("res://Cenas/Epoca.tscn")
	
	pass # Replace with function body.

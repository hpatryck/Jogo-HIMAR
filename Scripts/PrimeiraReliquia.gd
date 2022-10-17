extends Sprite


const reliquias = [
		"res://Materiais/Imagens/news imagens/reliquia/reliquia1.jpeg",
		"res://Materiais/Imagens/news imagens/reliquia/reliquia_1.jpeg"
]
var file = File.new()
func _ready():
	$AudioStreamPlayer2D.play()
	
	file.open("res://Player.txt", File.READ)
	var ep =file.get_as_text().split(":")[1].split(";")[0]
	
	if ep =="Alcântara":
		texture = load(reliquias[1])
		$voltar/Label.text = "Memu"
		$Label.text = "Parabéns! \nVocê encontrou a última relíquia perdida."
	if ep == "Codó":
		texture = load(reliquias[0])
		$voltar/Label.text = "Continuar"
		$Label.text = "Parabés! \n Você encontrou a primeira relíquia."
	pass

func _on_voltar_pressed():
	var ep1 =file.get_as_text().split(":")[1].split(";")[0]
	if ep1 == "Alcântara":
		get_tree().change_scene("res://Cenas/menu.tscn")
	else:
		get_tree().change_scene("res://Cenas/grajau0-1.tscn")
	pass # Replace with function body.

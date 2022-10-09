extends Sprite


const reliquias = [
		"res://Materiais/Imagens/news imagens/reliquia/reliquia1.jpeg",
		"res://Materiais/Imagens/news imagens/reliquia/ultima_reliquia.jpeg"
]
var file = File.new()
func _ready():
	
	file.open("res://Player.txt", File.READ)
	var ep =file.get_as_text().split(":")[1].split(";")[0]
	
	if ep =="Alcântara":
		texture = load(reliquias[1])
		$voltar/Label.text = "Memu"
	if ep == "Codó":
		texture = load(reliquias[0])
		$voltar/Label.text = "continuar"
	
	pass

func write(txt):
	var file = File.new()
	file.open("res://Player.txt", File.WRITE)
	file.store_string(txt)
	
func _on_voltar_pressed():
	var ep1 =file.get_as_text().split(":")[1].split(";")[0]
	if ep1 == "Alcântara":
		get_tree().change_scene("res://Cenas/menu.tscn")
	else:
		get_tree().change_scene("res://Cenas/grajau0-1.tscn")
	pass # Replace with function body.

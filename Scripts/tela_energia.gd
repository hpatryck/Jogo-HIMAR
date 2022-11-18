extends Sprite

var file = File.new()


const energia_azul = [
"res://Materiais/Imagens/news_imagens/sino_azul/sino1azull.png",
 "res://Materiais/Imagens/news_imagens/sino_azul/sino2azull.png",
 "res://Materiais/Imagens/news_imagens/sino_azul/sino3azull.png", 
"res://Materiais/Imagens/news_imagens/sino_azul/sino4azull.png", 
"res://Materiais/Imagens/news_imagens/sino_azul/sino5azull.png",
 "res://Materiais/Imagens/news_imagens/sino_azul/sino6azull.png", 
"res://Materiais/Imagens/news_imagens/sino_azul/sino7azull.png", 
"res://Materiais/Imagens/news_imagens/sino_azul/sino8azull.png", 
"res://Materiais/Imagens/news_imagens/sino_azul/sino9azull.png",
 "res://Materiais/Imagens/news_imagens/sino_azul/sino10azull.png"
	
]



func _ready():
	telaEnergia()
	pass
	

func telaEnergia():
	
	file.open("res://Player.txt", File.READ)
	var eg =file.get_as_text().split(";")[1]
	var cont_e = int(eg)
	texture = load(energia_azul[cont_e])
	

func _on_voltar_pressed():
	get_tree().change_scene("res://Cenas/Epoca.tscn" )
	
	
	pass # Replace with function body.

extends Sprite

var file = File.new()

const energia = [
"res://Materiais/Imagens/news imagens/tela_sino/sino1azul.jpg",
"res://Materiais/Imagens/news imagens/tela_sino/sino2azul.jpg", 
"res://Materiais/Imagens/news imagens/tela_sino/sino3azul.jpg", 
"res://Materiais/Imagens/news imagens/tela_sino/sino4azul.jpg", 
"res://Materiais/Imagens/news imagens/tela_sino/sino5azul.jpg", 
"res://Materiais/Imagens/news imagens/tela_sino/sino6azul.jpg", 
"res://Materiais/Imagens/news imagens/tela_sino/sino7azul.jpg",
 "res://Materiais/Imagens/news imagens/tela_sino/sino8azul.jpg", 
"res://Materiais/Imagens/news imagens/tela_sino/sino9azul.jpg",
 "res://Materiais/Imagens/news imagens/tela_sino/sino10azul.jpg"
]


const energia_azul = [
	"res://Materiais/Imagens/news imagens/sino_azul/sino1azull.png",
	 "res://Materiais/Imagens/news imagens/sino_azul/sino2azull.png", 
	"res://Materiais/Imagens/news imagens/sino_azul/sino3azull.png", 
	"res://Materiais/Imagens/news imagens/sino_azul/sino4azull.png",
	 "res://Materiais/Imagens/news imagens/sino_azul/sino5azull.png", 
	"res://Materiais/Imagens/news imagens/sino_azul/sino6azull.png",
	 "res://Materiais/Imagens/news imagens/sino_azul/sino7azull.png", 
	"res://Materiais/Imagens/news imagens/sino_azul/sino8azull.png", 
	"res://Materiais/Imagens/news imagens/sino_azul/sino9azull.png", 
	"res://Materiais/Imagens/news imagens/sino_azul/sino10azull.png"
	
]


const energia1 ={ 
"0": ["res://Materiais/Imagens/news imagens/tela_sino/sino1azul.jpg"],
"1": ["res://Materiais/Imagens/news imagens/tela_sino/sino2azul.jpg"], 
"2":["res://Materiais/Imagens/news imagens/tela_sino/sino3azul.jpg"], 
"3":["res://Materiais/Imagens/news imagens/tela_sino/sino4azul.jpg"], 
"4":["res://Materiais/Imagens/news imagens/tela_sino/sino5azul.jpg"], 
"5":["res://Materiais/Imagens/news imagens/tela_sino/sino6azul.jpg"], 
"6":["res://Materiais/Imagens/news imagens/tela_sino/sino7azul.jpg"],
 "7":["res://Materiais/Imagens/news imagens/tela_sino/sino8azul.jpg"], 
"8":["res://Materiais/Imagens/news imagens/tela_sino/sino9azul.jpg"],
 "9":["res://Materiais/Imagens/news imagens/tela_sino/sino10azul.jpg"]
}


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

extends Sprite

var file = File.new()


#onready var path2D = get_node("Path2D")
#onready var follow = get_node("Path2D/PathFollow2D")
#onready var play = get_node("Path2D/PathFollow2D/player")
const mapa ={
	"São Luis": ["res://Materiais/Imagens/news_imagens/mapa/telaSaoLuis2.jpg" ],
	"Imperatriz": ["res://Materiais/Imagens/news_imagens/mapa/mapa_imperatriz.jpeg" ],
	"Grajaú": ["res://Materiais/Imagens/news_imagens/mapa/mapa_grajau.jpg"],
	"Carutapera": [ "res://Materiais/Imagens/news_imagens/mapa/Carutapera.jpg" ],
	"Pindaré": ["res://Materiais/Imagens/news_imagens/mapa/telaPindare2.jpg"  ],
	"Alcântara": ["res://Materiais/Imagens/news_imagens/mapa/telaAlcantarap.jpg"],
	"Guimarães": ["res://Materiais/Imagens/news_imagens/mapa/telaguimaraes.jpg"   ],
	"Buriticupu": [ "res://Materiais/Imagens/news_imagens/mapa/buriticupuP.jpg" ],
	"Caxias": ["res://Materiais/Imagens/news_imagens/mapa/telaMapaCaxiasMa2.jpg"  ],
	"Carolina": [ "res://Materiais/Imagens/news_imagens/mapa/carolina1.jpg"  ],
	"Barreirinhas": ["res://Materiais/Imagens/news_imagens/mapa/telaBarerinhas.jpg" ],
	"Codó": [  "res://Materiais/Imagens/news_imagens/mapa/codo1.jpg"  ],
	"Santa Inês": [ "res://Materiais/Imagens/news_imagens/mapa/santaines.jpg"   ],
	"Viana": ["res://Materiais/Imagens/news_imagens/mapa/Viana.jpg" ],
	
	}

const posicao ={
	"São Luis": [Vector2(200,250), Vector2(240,555),Vector2(460,660)],
	"Imperatriz":[Vector2(320,200), Vector2(110,440),Vector2(420,600)],
	"Grajaú":[Vector2(175,320), Vector2(400,575),Vector2(30,780)],
	"Carutapera":[Vector2(230,360),Vector2(250,550),Vector2(220,850)],
	"Pindaré":[Vector2(400,340),Vector2(130,430),Vector2(90,610)],
	"Alcântara": [Vector2(418,318), Vector2(170,450),Vector2(65,740)],
	"Guimarães":[Vector2(390,300), Vector2(185,425),Vector2(315,580)],
	"Buriticupu":[Vector2(220,300), Vector2(330,640),Vector2(180,880)],
	"Caxias":[Vector2(360,410),Vector2(415,570),Vector2(50,570)],   #////////////#
	"Carolina":[Vector2(40,365),Vector2(315,440),Vector2(190,785)],
	"Barreirinhas": [Vector2(290,275), Vector2(450,500),Vector2(110,750)],
	"Codó":[Vector2(100,600), Vector2(330,460),Vector2(230,770)],
	"Santa Inês":[Vector2(490,290), Vector2(380,600),Vector2(125,700)],
	"Viana":[Vector2(40,550),Vector2(450,650),Vector2(320,770)],
}

const start = {
	"São Luis": Vector2(324, 660),
	"Imperatriz": Vector2(425, 470),
	"Grajaú": false,
	"Carutapera": false,
	"Pindaré": Vector2(358, 523),
	"Alcântara": Vector2(240, 584),
	"Guimarães":false,
	"Buriticupu":false,
	"Caxias":Vector2(322, 700),
	"Carolina":false,
	"Barreirinhas": Vector2(508, 736),
	"Codó":false,
	"Santa Inês":false,
	"Viana":Vector2(416, 728)
}

const size_b = {
	"São Luis": [Vector2(370,200), Vector2(150,125),Vector2(230,200)],
	"Imperatriz":[Vector2(250,240), Vector2(300,180),Vector2(230,200)],
	"Grajaú":[Vector2(250,240), Vector2(400,600),Vector2(300,200)],
	"Carutapera":[Vector2(200,110),Vector2(170,170),Vector2(135,135)],
	"Pindaré":[Vector2(170,145),Vector2(180,110),Vector2(220,110)],
	"Alcântara": [Vector2(130,130), Vector2(285,115),Vector2(185,150)],
	"Guimarães":[Vector2(125,100), Vector2(155,90),Vector2(180,220)],
	"Buriticupu":[Vector2(150,110), Vector2(150,150),Vector2(150,140)],
	"Caxias":[Vector2(210,120),Vector2(200,150),Vector2(190,150)], #//////////////#
	"Carolina":[Vector2(180,120),Vector2(145,285),Vector2(150,150)],
	"Barreirinhas": [Vector2(170,222), Vector2(190,210),Vector2(210,170)],
	"Codó":[Vector2(175,100), Vector2(115,200),Vector2(135,135)],
	"Santa Inês":[Vector2(120,100), Vector2(110,130),Vector2(150,140)],
	"Viana":[Vector2(190,110),Vector2(150,140),Vector2(135,135)],
}

const entrances = {
	"São Luis": [Vector2(370,200), Vector2(150,125),Vector2(230,200)],
	"Imperatriz":[Vector2(250,240), Vector2(300,180),Vector2(230,200)],
	"Grajaú":[Vector2(250,240), Vector2(400,600),Vector2(300,200)],
	"Carutapera":[Vector2(200,110),Vector2(170,170),Vector2(135,135)],
	"Pindaré":[Vector2(170,145),Vector2(180,110),Vector2(220,110)],
	"Alcântara": [Vector2(130,130), Vector2(285,115),Vector2(185,150)],
	"Guimarães":[Vector2(125,100), Vector2(155,90),Vector2(180,220)],
	"Buriticupu":[Vector2(150,110), Vector2(150,150),Vector2(150,140)],
	"Caxias":[Vector2(210,120),Vector2(200,150),Vector2(190,150)], #//////////////#
	"Carolina":[Vector2(180,120),Vector2(145,285),Vector2(150,150)],
	"Barreirinhas": [Vector2(170,222), Vector2(190,210),Vector2(210,170)],
	"Codó":[Vector2(175,100), Vector2(115,200),Vector2(135,135)],
	"Santa Inês":[Vector2(120,100), Vector2(110,130),Vector2(150,140)],
	"Viana":[Vector2(190,110),Vector2(150,140),Vector2(135,135)],
}



var op = 0
var ep =""
var cont = false

var opc = ""
var eg = ""


func _ready():
	
	$AudioStreamPlayer2D.play(2)
	
	file.open("res://Player.txt", File.READ)
	eg =file.get_as_text().split(";")[1]
	ep =file.get_as_text().split(":")[1].split(";")[0]
	opc = file.get_as_text().split(":")[0]

	$Cazumbar.rect_size= Vector2(250,90)
	$Cazumbar.rect_position= Vector2(150,10)
	$Cazumbar/Label.modulate = Color(0, 0, 0, 1)
	$Cazumbar/Label.text = "CAZUMBAR"
	
	$Voltar.rect_size= Vector2(250,90)
	$Voltar.rect_position= Vector2(450,10)
	$Voltar/Label2.modulate = Color(0, 0, 0, 1)
	$Voltar/Label2.text = "SAIR"
	
	$Label3.rect_position= Vector2(100,120)
	
	
	
	file.open("res://Player.txt", File.READ)
	$Label3.text = "Você está em " + file.get_as_text().split(":")[1].split(";")[0]
	texture = load(mapa[ep][0])
	$Dica1.rect_position = posicao[ep][0]
	$Dica2.rect_position = posicao[ep][1]
	$Dica3.rect_position = posicao[ep][2]
	
	$Dica1.rect_size = size_b[ep][0]
	$Dica2.rect_size = size_b[ep][1]
	$Dica3.rect_size = size_b[ep][2]
	
	if start[ep]:    
		$player.set_position(start[ep])
	#$centro/shape.position = Vector2(200,300)

	


###################################################### player ###########################################################
var move= false;
var b1= false;
var b2= false;
var b3= false;

#var centro = false

func irPraDica(pos):
	var hit = 5
	$player.move_and_collide($player.position.direction_to(pos)*3)
	if($player.position[0] > pos[0]-hit and $player.position[0] < pos[0]+hit and $player.position[1] > pos[1]-hit and $player.position[1] < pos[1]+hit):
		return true

func _process(delta):
	if b1:
		if irPraDica(d1()):
			if ep == "Codó" or ep == "Alcântara":
				get_tree().change_scene("res://Cenas/PrimeiraReliquia.tscn" )
			else:
				get_tree().change_scene("res://Cenas/grajau01.tscn" )
	if b2:
		if irPraDica(d2()):
			if ep  == "Alcântara":
				get_tree().change_scene("res://Cenas/PrimeiraReliquia.tscn" )
			else:
				get_tree().change_scene("res://Cenas/grajau01.tscn" )
			
	if b3:
		if irPraDica(d3()):
			if ep  == "Alcântara":
				get_tree().change_scene("res://Cenas/PrimeiraReliquia.tscn" )
			else:
				get_tree().change_scene("res://Cenas/grajau01.tscn" )
					
					
func write(txt):
	var file = File.new()
	file.open("res://Player.txt", File.WRITE)
	file.store_string(txt)

func d1():
	$direcao/shape.position = posicao[ep][op]
	
	return posicao[ep][op]+size_b[ep][op]/2

func d2():
	$direcao/shape.position = posicao[ep][op]
	return posicao[ep][op]+size_b[ep][op]/2

func d3():
	$direcao/shape.position = posicao[ep][op]
	return posicao[ep][op]+size_b[ep][op]/2

func movimentacao():
	move = true
#######################################################################################################################3

func _on_Dica1_pressed():
	print(0)
	opc = "0"
	op = 0
	write(opc+ ":" +ep + ";" + eg)
	b1= true
	d1()
	movimentacao()
	

func _on_Dica2_pressed():
	print(1)
	opc = "1"
	op = 1
	write(opc+ ":" +ep + ";" + eg)
	b2 = true
	d2()
	movimentacao()

func _on_Dica3_pressed():
	print(2)
	opc = "2"
	write(opc+ ":" +ep + ";" + eg)
	b3 = true
	op = 2
	d3()
	movimentacao()

func _on_Cazumbar_pressed():
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")

func _on_Voltar_pressed():
	get_tree().change_scene("res://Cenas/menu.tscn")
	pass

	
func _on_Button_pressed():
	get_tree().change_scene( "res://Cenas/grajau0-2.tscn")


func _on_botao1_pressed():
	get_tree().change_scene("res://tela_de_energia.tscn"  )
	
	#$Sprite.texture = load(energia[eg][0])
	$tela_dica.visible = is_visible_in_tree()
	pass # Replace with function body.

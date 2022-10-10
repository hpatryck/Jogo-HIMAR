extends Sprite

var file = File.new()

const mapa ={
	"São Luis": ["res://Materiais/Imagens/news imagens/mapa/telaSaoLuis2.jpg" ],
	"Imperatriz": ["res://Materiais/Imagens/news imagens/mapa/mapa_imperatriz.jpeg" ],
	"Grajaú": ["res://Materiais/Imagens/news imagens/mapa/mapa_grajau.jpg"],
	"Carutapera": [ "res://Materiais/Imagens/news imagens/mapa/13.Carutapera.jpg" ],
	"Pindaré": ["res://Materiais/Imagens/news imagens/mapa/telaPindare2.jpg"  ],
	"Alcântara": ["res://Materiais/Imagens/news imagens/mapa/telaAlcântarap.jpg"],
	"Guimarães": ["res://Materiais/Imagens/news imagens/mapa/telaguimaraes.jpg"   ],
	"Buriticupu": [ "res://Materiais/Imagens/news imagens/mapa/buriticupuP.jpg" ],
	"Caxias": ["res://Materiais/Imagens/news imagens/mapa/telaMapaCaxiasMa2.jpg"  ],
	"Carolina": [ "res://Materiais/Imagens/news imagens/mapa/carolina (1).jpg"  ],
	"Barrerinhas": ["res://Materiais/Imagens/news imagens/mapa/telaBarerinhas.jpg" ],
	"Codó": [  "res://Materiais/Imagens/news imagens/mapa/codo1.jpg"  ],
	"Santa Inês": [ "res://Materiais/Imagens/news imagens/mapa/santaines.jpg"   ],
	"Viana": ["res://Materiais/Imagens/news imagens/mapa/Viana.jpg" ],
	
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
	"Barrerinhas": [Vector2(290,275), Vector2(450,500),Vector2(110,750)],
	"Codó":[Vector2(100,600), Vector2(330,460),Vector2(230,770)],
	"Santa Inês":[Vector2(490,290), Vector2(380,600),Vector2(125,700)],
	"Viana":[Vector2(40,550),Vector2(450,650),Vector2(320,770)],
}

const playerSize = Vector2(20, 60)

const paths = {
	"São Luis": [
		[Vector2(480, 635), Vector2(526, 558), Vector2(490, 480), Vector2(472, 460)], 
		[Vector2(324, 660)], 
		[Vector2(297, 765), Vector2(370, 827), Vector2(460, 840), Vector2(507, 824)], 
		[Vector2(323, 373)]],
	"Imperatriz": [
		[Vector2(392, 438)], 
		[Vector2(489, 468), Vector2(538, 508), Vector2(562, 602)], 
		[Vector2(422, 535), Vector2(374, 626), Vector2(316, 612), Vector2(280, 572)], 
		[Vector2(425, 470)]],
	"Grajaú": [
		[], 
		[], 
		[], 
		[]],
	"Carutapera": [
		[], 
		[], 
		[], 
		[]],
	"Pindaré": [
		[Vector2(398, 476), Vector2(428, 457)], 
		[Vector2(262, 508)], 
		[Vector2(325, 643), Vector2(232, 708), Vector2(169, 706), Vector2(150, 692)], 
		[Vector2(358, 523)]],
	"Alcântara": [       
		[Vector2(435, 572), Vector2(490, 540), Vector2(507, 493), Vector2(490, 457), Vector2(472, 420)], 
		[Vector2(250, 560), Vector2(260, 545)], 
		[Vector2(230, 630), Vector2(244, 782), Vector2(230, 842), Vector2(195, 861)], 
		[Vector2(240, 584)]],
	"Guimarães":[
		[], 
		[], 
		[], 
		[]],
	"Buriticupu":[
		[], 
		[], 
		[], 
		[]],
	"Caxias":[
		[Vector2(398, 640), Vector2(400, 540), Vector2(444, 510)], 
		[Vector2(255, 715), Vector2(205, 710)], 
		[Vector2(410, 735), Vector2(474, 728), Vector2(493, 713)], 
		[Vector2(322, 700)]],
	"Carolina":[
		[], 
		[], 
		[], 
		[]],
	"Barrerinhas": [
		[Vector2(406, 722), Vector2(323, 638), Vector2(335, 560), Vector2(395, 500), Vector2(390, 474)], 
		[Vector2(510, 856), Vector2(410, 898), Vector2(330, 888), Vector2(300, 866)], 
		[Vector2(534, 688)], 
		[Vector2(508, 736)]],
	"Codó":[
		[], 
		[], 
		[], 
		[]],
	"Santa Inês":[[], [], [], []],
	"Viana":[
		[Vector2(249, 737), Vector2(196, 666), Vector2(240, 580), Vector2(270, 540)], 
		[Vector2(433, 873), Vector2(378, 926), Vector2(250, 932)], 
		[Vector2(460, 767)], 
		[Vector2(416, 728)]],
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
	"Barrerinhas": [Vector2(170,222), Vector2(190,210),Vector2(210,170)],
	"Codó":[Vector2(175,100), Vector2(115,200),Vector2(135,135)],
	"Santa Inês":[Vector2(120,100), Vector2(110,130),Vector2(150,140)],
	"Viana":[Vector2(190,110),Vector2(150,140),Vector2(135,135)],
	
}
const personagem = [
	"res://Materiais/imagens teste/personagem1.jpeg",
	"res://Materiais/imagens teste/personagem2.jpeg",
	"res://Materiais/imagens teste/personagem3.jpeg"
]


const energia ={ 
"0":["res://Materiais/Imagens/news imagens/tela_sino/sino1azul.jpg"],
"1":["res://Materiais/Imagens/news imagens/tela_sino/sino2azul.jpg"], 
"2":["res://Materiais/Imagens/news imagens/tela_sino/sino3azul.jpg"], 
"3":["res://Materiais/Imagens/news imagens/tela_sino/sino4azul.jpg"], 
"4":["res://Materiais/Imagens/news imagens/tela_sino/sino5azul.jpg"], 
"5":["res://Materiais/Imagens/news imagens/tela_sino/sino6azul.jpg"], 
"6":["res://Materiais/Imagens/news imagens/tela_sino/sino7azul.jpg"],
"7":["res://Materiais/Imagens/news imagens/tela_sino/sino8azul.jpg"], 
"8":["res://Materiais/Imagens/news imagens/tela_sino/sino9azul.jpg"],
"9":["res://Materiais/Imagens/news imagens/tela_sino/sino10azul.jpg"]
}


var op = 0
var ep =""
var cont = false

var opc = ""
var eg = ""


func _ready():
	
	
	file.open("res://Player.txt", File.READ)
	eg =file.get_as_text().split(";")[1]
	ep =file.get_as_text().split(":")[1].split(";")[0]
	opc = file.get_as_text().split(":")[0]
	
	print(eg + " valor de eg")
	print(opc + " valor de opc")
	print(ep + " valor de ep")
	
	
	
	$Cazumbar.rect_size= Vector2(250,90)
	$Cazumbar.rect_position= Vector2(150,10)
	$Cazumbar/Label.modulate = Color(0, 0, 0, 1)
	$Cazumbar/Label.text = "CAZUMBAR"
	
	$Voltar.rect_size= Vector2(250,90)
	$Voltar.rect_position= Vector2(450,10)
	$Voltar/Label2.modulate = Color(0, 0, 0, 1)
	$Voltar/Label2.text = "VOLTAR"
	
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
	
	if len(paths[ep][3]) > 0:    
		$player.set_position(paths[ep][3][0]-playerSize)
	#$centro/shape.position = Vector2(200,300)

	


###################################################### player ###########################################################
var move= false;
var b1= false;
var b2= false;
var b3= false;

#var centro = false

func goToNextPoint(p):
	$player.move_and_collide($player.position.direction_to(paths[ep][op][p]-playerSize)*0.25)
	if $player.position == paths[ep][op][p]-playerSize:
		if len(paths[ep][op]) < p+1:
			goToNextPoint(p+1)
		else:
			return

func _process(delta):
	if move:
		if len(paths[ep][op]) > 0:
			goToNextPoint(0)
			if ep == "Alcântara":
				get_tree().change_scene("res://Cenas/PrimeiraReliquia.tscn" )
			else:
				get_tree().change_scene("res://Cenas/grajau0-1.tscn" )
			#out()
		else:
			if b1:
				$player.move_and_collide($player.position.direction_to(d1())*3)
				if $player.position >= d1():
					if ep == "Codó" or ep == "Alcântara":
						get_tree().change_scene("res://Cenas/PrimeiraReliquia.tscn" )
					else:
						get_tree().change_scene("res://Cenas/grajau0-1.tscn" )
					#out()
			if b2:
				$player.move_and_collide($player.position.direction_to(d2())*3)
				if $player.position >= d2():
					get_tree().change_scene("res://Cenas/grajau0-1.tscn" )
					#out()
					
			if b3:
				$player.move_and_collide($player.position.direction_to(d3())*3)
				if $player.position >= d3():
					#out()
					get_tree().change_scene("res://Cenas/grajau0-1.tscn" )
					
					
func write(txt):
	var file = File.new()
	file.open("res://Player.txt", File.WRITE)
	file.store_string(txt)

func out():
	#mostrar_dica()
	desabilitar()
	$player.visible = false

func d1():
	$direcao/shape.position = posicao[ep][op]
	
	return posicao[ep][op]+Vector2(0,60)

func d2():
	$direcao/shape.position = posicao[ep][op]
	return posicao[ep][op]+Vector2(0,60)

func d3():
	$direcao/shape.position = posicao[ep][op]
	return posicao[ep][op]+Vector2(0,60)

func movimentacao():
	move = true
	$player/anim.play("andando")
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
	pass

	
func _on_Button_pressed():
	get_tree().change_scene( "res://Cenas/grajau0-2.tscn")

func desabilitar():
	$Dica1.disabled = true
	$Dica2.disabled = true
	$Dica3.disabled = true
	$Cazumbar.disabled = true
	$Voltar.disabled = true
	$contnuacao.visible = true





func _on_botao1_pressed():
	get_tree().change_scene("res://tela_de_energia.tscn"  )
	
	#$Sprite.texture = load(energia[eg][0])
	$tela_dica.visible = is_visible_in_tree()
	pass # Replace with function body.

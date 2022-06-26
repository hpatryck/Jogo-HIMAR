extends Sprite

onready var timer := $Timer as Timer

const mapa ={
	"0": ["res://Materiais/Imagens/mapa/imagem1.png", ],
	"1928": ["res://Materiais/Imagens/mapa/imagem2.png"],
	"1950": ["res://Materiais/Imagens/mapa/imagem3.png"],
	"1988": ["res://Materiais/Imagens/mapa/imagem4.png"],
	"1900": ["res://Materiais/Imagens/mapa/imagem5.png"],
	}
const botao ={
	"0": [Vector2(70,150), Vector2(240,300),Vector2(170,470)],
	"1928":[Vector2(240,170), Vector2(50,240),Vector2(200,430)],
	"1950":[Vector2(200,100), Vector2(40,200),Vector2(230,450)]
}

const size_b = {
	"0": [ Vector2(125,90),Vector2(100,140),Vector2(100,140)],
	"1928": [Vector2(140,150),Vector2(140,150),Vector2(140,150)],
	"1950" : [Vector2(130,100),Vector2(70,220),Vector2(130,100)],
	"1988": [Vector2(110,160),Vector2(110,130),Vector2(110,130)],
	"1900": [Vector2(110,110),Vector2(110,110),Vector2(160,90)]
}

const telaf ={
	"0": [ 
	"res://Materiais/Imagens/cenario_dica/tela1d1.png",
	"res://Materiais/Imagens/cenario_dica/tela1d2.png",
	"res://Materiais/Imagens/cenario_dica/tela1d3.png"
	],
	"1928": [
		"res://Materiais/Imagens/cenario_dica/tela2d1.png",
	"res://Materiais/Imagens/cenario_dica/tela2d2.png",
	"res://Materiais/Imagens/cenario_dica/tela2d3.png"
	],
	"1950": [
		"res://Materiais/Imagens/cenario_dica/tela3d1.png",
		"res://Materiais/Imagens/cenario_dica/tela3d2.png",
		"res://Materiais/Imagens/cenario_dica/tela3d3.png"
	],
	"1988": [
		"res://Materiais/Imagens/cenario_dica/tela5d1.png",
		"res://Materiais/Imagens/cenario_dica/tela5d2.png",
		"res://Materiais/Imagens/cenario_dica/tela5d3.png"
	],
	"1900": [
		"res://Materiais/Imagens/cenario_dica/tela4d1.png",
		"res://Materiais/Imagens/cenario_dica/tela4d2.png",
		"res://Materiais/Imagens/cenario_dica/tela4d3.png"
	]
}

const personagem = [
	"res://Materiais/imagens teste/personagem1.jpeg",
	"res://Materiais/imagens teste/personagem2.jpeg",
	"res://Materiais/imagens teste/personagem3.jpeg"
]

const texto = [
	"primeira dica do primeiro ponto primeira dica do primeiro ponto primeira dica do primeiro ponto ",
	"segunda dica do segundo ponto segunda dica do segundo ponto segunda dica do segundo ponto ",
	"terceira dica do terceiro ponto terceira dica do terceiro ponto terceira dica do terceiro ponto"
]
	
onready var tela = $tela_dica/tela_fundo
onready var pers = $tela_dica/personagem
onready var dica = $tela_dica/Label
var op = 0
var ep =0

func _ready():
	tela.position= Vector2(0,0)
	tela.scale = Vector2(1,1)
	timer.start()
	$Label.modulate = Color(0, 0, 0, 1)
	$Label2.modulate = Color(0, 0, 0, 1)
	$Label3.modulate = Color(0, 0, 0, 1)
	$Label.text = "Cazumbar"
	$Label2.text = "Voltar"
	$tela_dica/Label.modulate = Color(0, 0, 0, 3)
	var file = File.new()
	file.open("res://Player.txt", File.READ)
	$Label3.text = "Estamos em " + file.get_as_text().split(":")[1].split(";")[0]
	ep =file.get_as_text().split(":")[1].split(";")[0]
	texture = load(mapa[ep][0])
	$Dica1.rect_position = botao[ep][0]
	$Dica2.rect_position = botao[ep][1]
	$Dica3.rect_position = botao[ep][2]
	
	$Dica1.rect_size = size_b[ep][0]
	$Dica2.rect_size = size_b[ep][1]
	$Dica3.rect_size = size_b[ep][2]
	#$centro/shape.position = Vector2(200,300)

###################################################### player ###########################################################
var move= false;
var b1= false;
var b2= false;
var b3= false;
#var centro = false

func _process(delta):
	if move:
		if b1:
			$player.move_and_collide($player.position.direction_to(d1())*3)
			if $player.position >= d1():
				print("direcao 1 ok")
				out()
		if b2:
			$player.move_and_collide($player.position.direction_to(d2())*3)
			#centro = false
			print($player.position)
			print(d2())
			
			print("indo para direcao 2")
			#if $player.position >= d2()+Vector2(10,-10)  && !centro:
			#$player.move_and_collide($player.position.direction_to(d2())*3)
			if $player.position >= d2():
				print("direcao 2 ok")
				out()
		if b3:
			$player.move_and_collide($player.position.direction_to(d3())*3)
			if $player.position >= d3():
				print("direcao 3 ok")
				out()

func out():
	mostrar_dica()
	desabilitar()
	$player.visible = false

func d1():
	$direcao/shape.position = botao[ep][op]
	
	return botao[ep][op]+Vector2(0,60)

func d2():
	$direcao/shape.position = botao[ep][op]
	return botao[ep][op]+Vector2(0,60)

func d3():
	$direcao/shape.position = botao[ep][op]
	return botao[ep][op]+Vector2(0,60)

func movimentacao():
	move = true
	$player/anim.play("andando")
#######################################################################################################################3

func _on_Dica1_pressed():
	op = 0
	b1= true
	d1()
	movimentacao()
	

func _on_Dica2_pressed():
	#centro = true
	op = 1
	b2 = true
	d2()
	movimentacao()

func _on_Dica3_pressed():
	b3 = true
	op = 2
	d3()
	movimentacao()

func _on_Cazumbar_pressed():
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")

func _on_Voltar_pressed():
	pass

func _on_Timer_timeout():
	$Timer.wait_time = 0.1
	$tela_dica/Label.visible_characters = $tela_dica/Label.visible_characters+3
	
func _on_Button_pressed():
	get_tree().change_scene( "res://Cenas/grajau0-2.tscn")

func desabilitar():
	$Dica1.disabled = true
	$Dica2.disabled = true
	$Dica3.disabled = true
	$Cazumbar.disabled = true
	$Voltar.disabled = true
	
func mostrar_dica():
	$tela_dica.visible = is_visible_in_tree()
	tela.texture = load(telaf[ep][op])
	#pers.texture = load(personagem[op])
	dica.text = texto[op]
	

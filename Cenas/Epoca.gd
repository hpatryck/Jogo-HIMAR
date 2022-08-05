extends Sprite

onready var timer := $Timer as Timer

const mapa ={
	"0": ["res://Materiais/Imagens/mapa/tela_grajau.jpg" ],
	"1928": ["res://Materiais/Imagens/mapa/imagem2.png"],
	"1950": ["res://Materiais/Imagens/mapa/imagem3.png"],
	"1988": ["res://Materiais/Imagens/mapa/imagem4.png"],
	"1900": ["res://Materiais/Imagens/mapa/imagem5.png"],
	}
const botao ={
	"0": [Vector2(200,300), Vector2(420,600),Vector2(45,800)],
	"1928":[Vector2(470,325), Vector2(92,434),Vector2(340,780)],
	"1950":[Vector2(440,230), Vector2(92,365),Vector2(425,820)],
	"1988":[Vector2(200,315),Vector2(470,480),Vector2(92,750)],
	"1900":[Vector2(322,176),Vector2(65,410),Vector2(290,730)]
}

const size_b = {
	"0": [ Vector2(190,260),Vector2(265,175),Vector2(270,190)],
	"1928": [Vector2(188,260),Vector2(270,280),Vector2(265,210)],
	"1950" : [Vector2(190,260),Vector2(270,280),Vector2(260,210)],
	"1988": [Vector2(188,280),Vector2(188,260),Vector2(260,210)],
	"1900": [Vector2(188,282),Vector2(188,260),Vector2(262,210)]
}

const telaf ={
	"0": [ 
	"res://Materiais/Imagens/dica_1.jpeg",
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
onready var pers = $tela_dica/tela_fundo/personagem
onready var dica = $tela_dica/tela_fundo/Label
var op = 0
var ep =0

func _ready():
	
	$tela_dica/tela_fundo.position = Vector2(360,625)
	$tela_dica/tela_fundo.scale = Vector2(1,1)
	
	timer.start()
	$Cazumbar.rect_size= Vector2(300,90)
	$Cazumbar.rect_position= Vector2(60,40)
	$Cazumbar/Label.modulate = Color(0, 0, 0, 1)
	$Cazumbar/Label.text = "Cazumbar"
	
	$Voltar.rect_size= Vector2(300,90)
	$Voltar.rect_position= Vector2(400,40)
	$Voltar/Label2.modulate = Color(0, 0, 0, 1)
	$Voltar/Label2.text = "Voltar"
	
	$Label3.rect_position= Vector2(60,200)
	$Label3.modulate = Color(0, 0, 0, 1)
	
	
	$tela_dica/tela_fundo/Label.modulate = Color(0, 0, 0, 3)
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
				out()
		if b2:
			$player.move_and_collide($player.position.direction_to(d2())*3)
			if $player.position >= d2():
				out()
				
		if b3:
			$player.move_and_collide($player.position.direction_to(d3())*3)
			if $player.position >= d3():
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
	$tela_dica/tela_fundo/Label.visible_characters = $tela_dica/tela_fundo/Label.visible_characters+3
	
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
	dica.text = texto[op]
	

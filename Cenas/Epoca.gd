extends Sprite

onready var timer := $Timer as Timer

const mapa ={
	"Sao Luis": ["res://Materiais/Imagens/news imagens/mapa_sao_luis.jpeg"],
	"Imperatriz": ["res://Materiais/Imagens/news imagens/mapa_imperatriz.jpeg" ],
	"Grajaú": ["res://Materiais/Imagens/news imagens/mapa_grajau.jpg"],
	"Gurupi": ["res://Materiais/Imagens/mapa/imagem4.png"],
	"Pindaré": ["res://Materiais/Imagens/mapa/imagem5.png"],
	}
const posicao ={
	"Sao Luis": [Vector2(400,250), Vector2(120,750),Vector2(450,680)],
	"Imperatriz":[Vector2(390,170), Vector2(100,400),Vector2(375,570)],
	"Grajaú":[Vector2(220,300), Vector2(400,600),Vector2(30,800)],
	"Gurupi":[Vector2(200,315),Vector2(470,480),Vector2(92,750)],
	"Pindaré":[Vector2(322,176),Vector2(65,410),Vector2(290,730)]
}

const size_b = {
	"Sao Luis": [ Vector2(190,260),Vector2(265,175),Vector2(270,190)],
	"Imperatriz": [Vector2(188,280),Vector2(260,200),Vector2(310,210)],
	"Grajaú" : [Vector2(190,280),Vector2(290,200),Vector2(300,210)],
	"Gurupi": [Vector2(188,280),Vector2(188,260),Vector2(260,210)],
	"Pindaré": [Vector2(188,282),Vector2(188,260),Vector2(262,210)]
}

const telaf ={
	"Sao Luis": [ 
	"res://Materiais/Imagens/news imagens/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/dica3_saoLuis.jpeg"
	],
	"Imperatriz": [
		"res://Materiais/Imagens/cenario_dica/tela2d1.png",
	"res://Materiais/Imagens/cenario_dica/tela2d2.png",
	"res://Materiais/Imagens/cenario_dica/tela2d3.png"
	],
	"Grajaú": [
		"res://Materiais/Imagens/news imagens/dica1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/dica2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/dica3_grajau.jpeg"
	],
	"Gurupi": [
		"res://Materiais/Imagens/cenario_dica/tela5d1.png",
		"res://Materiais/Imagens/cenario_dica/tela5d2.png",
		"res://Materiais/Imagens/cenario_dica/tela5d3.png"
	],
	"Pindaré": [
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

const texto ={
	"Sao Luis": [ 
		"Hê, 'sinhô'! Parece que vi um negócio sim! Um suspeito passou por aqui e perguntou se eu sei onde fica a segunda cidade mais populosa do estado. Aquela que cresceu a economia e a populaçâo cam a criação da estrada Belém_Breasília.",
		"Oiii! Passou simmm, eu vi! Uma pessoa suspeita passou por aqui e disse que ia para a cidade que abastecia o garimpo de Serra Pelada. Eu não entendi foi nada.",
		"O quê? suspeito? Suspeito de quê? Uma pessoa que parecia suspeito por aqui. Ela falou alguma coisa sobre um lugar que até a decada de 1980, vivia o ciclo do arroz. Alguma coisa como Corredor Agrícola. Mas eu sou criança, nem entendi nada disso."
	],
	"Imperatriz": [
		"res://Materiais/Imagens/cenario_dica/tela2d1.png",
	"res://Materiais/Imagens/cenario_dica/tela2d2.png",
	"res://Materiais/Imagens/cenario_dica/tela2d3.png"
	],
	"Grajaú": [
		"oh meu filho/a! Não passou nenhum suspeito por aqui. \n\n\n\n Vá em paz!",
	" 'Mirmã' nao sei nada não! Passou um suspeito por aqui, mas dei muita atenção pra ele. Só lembro que falou alguma coisa sobre a Guerra da Leda no certão do maranhao. Que parece, aconteceu no final do seculo XIX e no inicio do século XX."  ,
	"Hoo meu 'fíí'! Passou um cabôco diferente por aqui! Mas eu nem 'intendi' direito o que ele queria não. Falou umas coisas sobre uma guerra que queria a independencia política do sertão do maranhão. "
	],
	"Gurupi": [
		"res://Materiais/Imagens/cenario_dica/tela5d1.png",
		"res://Materiais/Imagens/cenario_dica/tela5d2.png",
		"res://Materiais/Imagens/cenario_dica/tela5d3.png"
	],
	"Pindaré": [
		"res://Materiais/Imagens/cenario_dica/tela4d1.png",
		"res://Materiais/Imagens/cenario_dica/tela4d2.png",
		"res://Materiais/Imagens/cenario_dica/tela4d3.png"
	]
}


const img_f ={
	"Sao Luis": [ 
	"res://Materiais/Imagens/news imagens/d1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/d2_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/d3_saoluis.jpeg"
	],
	"Imperatriz": [
		"res://Materiais/Imagens/cenario_dica/tela2d1.png",
	"res://Materiais/Imagens/cenario_dica/tela2d2.png",
	"res://Materiais/Imagens/cenario_dica/tela2d3.png"
	],
	"Grajaú": [
		"res://Materiais/Imagens/news imagens/d1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/d2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/d3_grajau.jpeg"
	],
	"Gurupi": [
		"res://Materiais/Imagens/cenario_dica/tela5d1.png",
		"res://Materiais/Imagens/cenario_dica/tela5d2.png",
		"res://Materiais/Imagens/cenario_dica/tela5d3.png"
	],
	"Pindaré": [
		"res://Materiais/Imagens/cenario_dica/tela4d1.png",
		"res://Materiais/Imagens/cenario_dica/tela4d2.png",
		"res://Materiais/Imagens/cenario_dica/tela4d3.png"
	]
}



	
onready var tela = $tela_dica/tela_fundo
onready var pers = $tela_dica/tela_fundo/personagem
onready var dica = $tela_dica/tela_fundo/Label
var op = 0
var ep =""
var cont = false

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
	$Dica1.rect_position = posicao[ep][0]
	$Dica2.rect_position = posicao[ep][1]
	$Dica3.rect_position = posicao[ep][2]
	
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
	$contnuacao.visible = true
	
func mostrar_dica():
	$tela_dica.visible = is_visible_in_tree()
	if cont == false:
		tela.texture = load(telaf[ep][op])
		dica.text = texto[ep][op]
	


func _on_contnuacao_pressed():
	tela.texture = load(img_f[ep][op])
	dica.text = texto[ep][op]
	#if $tela_dica/tela_fundo/Label.visible_characters >50:
	$tela_dica/tela_fundo/Label.lines_skipped = 6
	#timer.start()
	#_on_Timer_timeout()
	
	cont = true
	pass # Replace with function body.

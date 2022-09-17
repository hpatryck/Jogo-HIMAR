extends Sprite

onready var timer := $Timer as Timer


const mapa ={
	"Sao Luis": ["res://Materiais/Imagens/news imagens/mapa/telaSaoLuis2.jpg" ],
	"Imperatriz": ["res://Materiais/Imagens/news imagens/mapa/mapa_imperatriz.jpeg" ],
	"Grajaú": ["res://Materiais/Imagens/news imagens/mapa/mapa_grajau.jpg"],
	"Gurupi": ["res://Materiais/Imagens/news imagens/mapa/telaSaoLuis2.jpg"],
	"Pindaré": ["res://Materiais/Imagens/news imagens/mapa/telaPindare2.jpg"  ],
	#///////////////////////Novas Cidades //////////////////////////////#
	"Alcântara": ["res://Materiais/Imagens/news imagens/mapa/telaAlcântarap.jpg"],
	"Guimarães": ["res://Materiais/Imagens/news imagens/mapa/telaAlcântarap.jpg" ],
	"Buriticupu": [ "res://Materiais/Imagens/news imagens/mapa/buriticupuP.jpg" ],
	"Caxias": ["res://Materiais/Imagens/news imagens/mapa/telaMapaCaxiasMa2.jpg"  ],
	
	"Carolina": ["res://Materiais/Imagens/news imagens/mapa/telaViana.jpg" ],
	"Barrerinhas": ["res://Materiais/Imagens/news imagens/mapa/telaBarerinhas.jpg" ],
	"Codó": ["res://Materiais/Imagens/news imagens/mapa/codo.jpg"   ],
	"Santa Inês": [ "res://Materiais/Imagens/news imagens/mapa/santaines.jpg"   ],
	"Viana": ["res://Materiais/Imagens/news imagens/mapa/telaViana.jpg"  ],
	
	}


const posicao ={
	"Sao Luis": [Vector2(200,250), Vector2(240,555),Vector2(460,660)],
	"Imperatriz":[Vector2(320,200), Vector2(110,440),Vector2(420,600)],
	"Grajaú":[Vector2(175,320), Vector2(400,575),Vector2(30,780)],
	"Gurupi":[Vector2(200,315),Vector2(470,480),Vector2(92,750)],
	"Pindaré":[Vector2(400,340),Vector2(130,430),Vector2(90,610)],
	"Alcântara": [Vector2(418,318), Vector2(130,455),Vector2(50,750)],
	"Guimarães":[Vector2(390,170), Vector2(100,400),Vector2(375,570)],
	"Buriticupu":[Vector2(220,300), Vector2(400,600),Vector2(30,800)],
	"Caxias":[Vector2(360,410),Vector2(415,570),Vector2(50,570)],   #////////////#
	"Carolina":[Vector2(322,176),Vector2(65,410),Vector2(290,730)],
	"Barrerinhas": [Vector2(400,250), Vector2(120,750),Vector2(450,680)],
	"Codó":[Vector2(390,170), Vector2(100,400),Vector2(375,570)],
	"Santa Inês":[Vector2(220,300), Vector2(400,600),Vector2(30,800)],
	"Viana":[Vector2(200,315),Vector2(470,480),Vector2(92,750)],
}

const size_b = {
	"Sao Luis": [Vector2(370,200), Vector2(150,125),Vector2(230,200)],
	"Imperatriz":[Vector2(250,240), Vector2(300,180),Vector2(230,200)],
	"Grajaú":[Vector2(250,240), Vector2(400,600),Vector2(300,200)],
	"Gurupi":[Vector2(200,315),Vector2(470,480),Vector2(92,750)],
	"Pindaré":[Vector2(170,145),Vector2(180,110),Vector2(220,110)],
	"Alcântara": [Vector2(145,118), Vector2(310,90),Vector2(190,115)],
	"Guimarães":[Vector2(390,170), Vector2(100,400),Vector2(375,570)],
	"Buriticupu":[Vector2(220,300), Vector2(400,600),Vector2(30,800)],
	"Caxias":[Vector2(210,120),Vector2(200,150),Vector2(190,150)], #//////////////#
	"Carolina":[Vector2(322,176),Vector2(65,410),Vector2(290,730)],
	"Barrerinhas": [Vector2(400,250), Vector2(120,750),Vector2(450,680)],
	"Codó":[Vector2(390,170), Vector2(100,400),Vector2(375,570)],
	"Santa Inês":[Vector2(220,300), Vector2(400,600),Vector2(30,800)],
	"Viana":[Vector2(200,315),Vector2(470,480),Vector2(92,750)],
	
}
const telaf ={
	"Sao Luis": [ 
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Imperatriz": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Grajaú": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica3_grajau.jpeg"
	],
	"Gurupi": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Pindaré": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica3_grajau.jpeg"
	],
	"Alcântara": [ 
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Guimarães": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Buriticupu": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica3_grajau.jpeg"
	],
	"Caxias": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Carolina": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica3_grajau.jpeg"
	],
	"Barrerinhas": [ 
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Codó": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica3_grajau.jpeg"
	],
	"Santa Inês": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica3_grajau.jpeg"
	],
	"Viana": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	
}

const personagem = [
	"res://Materiais/imagens teste/personagem1.jpeg",
	"res://Materiais/imagens teste/personagem2.jpeg",
	"res://Materiais/imagens teste/personagem3.jpeg"
]

const texto ={
	"Sao Luis": [ 
		"Hê, 'sinhô'! Parece que vi um negócio sim! Um suspeito passou por aqui e perguntou se eu sei onde fica a segunda cidade mais populosa do estado. Aquela que cresceu a economia e a populaçâo cam a criação da estrada Belém_Breasília.",
		"Oiii! Passou simmm, eu vi! Uma pessoa suspeita passou por aqui e disse que ia para a cidade que abastecia o garimpo de Serra Pelada.\n Eu não entendi foi nada.",
		"O quê? suspeito?\n Suspeito de quê?\n Uma pessoa que parecia suspeito por aqui. Ela falou alguma coisa sobre um lugar que até a decada de 1980, vivia o ciclo do arroz.Alguma coisa como Corredor Agrícola. Mas eu sou criança, nem entendi nada disso."
	],
	"Imperatriz": [
		
		" Ho meu filho/a! \n Passou um suspeito por aqui sim!\n Ele falava alguma coisa sem sentido. Queria saber sobrre um atentado contra um tal de Leão Leda.",
		"'Mirmã' nao sei nada não! Passou um suspeito por aqui, mas dei muita atenção pra ele. Só lembro que falou alguma coisa sobre a Guerra da Leda no certão do maranhao. Que parece, aconteceu no final do seculo XIX e no inicio do século XX."  ,
		"Hoo meu 'fíí'! Passou um cabôco diferente por aqui! Mas eu nem 'intendi' direito o que ele queria não. Falou umas coisas sobre uma guerra que queria a independencia política do sertão do maranhão. "
	],
	"Grajaú": [
		"Uma pessoa estranha passou por aqui dizendo que ia atrás da primeira cidade com iluminação elétrica...\n\n Mas por que ? Se na nossa cidade já tem!",
		"Sim, passou sim. Ele falou que ia atrás de açúcar e rapadura em um engenho. Até falei que tinha um comércio aqui perto...\n mas ele me ignorou.",
		"Um suspeito passou dizendo que ia pegar um trem que passasse no terminal dos canaviais... \n\n Eu achei ele meio estranho."
		
	],
	"Gurupi": [
		"Acho que não vi nenhum suspeito por aqui.",
		"não vi nada de estranho por aqui.",
		"nenhuma pessoas suspeita passou por aqui"
	],
	"Pindaré": [
		"Sim, uma pessoa estranha veio me perguntar onde ficava a cidade da umbanda ",
		"Pequeno, um suspeito disse que estava indo atras de um piá chamado Wilson Nonato, ele tambem disse que os pais dele o chama de Bita.",
		"Eu ouvi uma pessoa dizendo para um piá que estava indo para o leste do estado atras de uma fabrica de algodão"
	],
	"Alcântara": [ 
	"res://Materiais/Imagens/news imagens/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/dica3_saoLuis.jpeg"
	],
	"Guimarães": [
	"sinto muito nao poder lhe ajudar \n não avistei nada de estranho por aqui",
	"não, não, \n estar tudo em paz por aqui!",
	"não vi nada de estraho por aqui"
	],
	"Buriticupu": [
		"Suspeito? \n Não vi nenhum aqui não.",
		"não tem nada de estranho por aqui",
		"Não passou nenhum suspeito por aqui"
	],
	"Caxias": [
		"nao vi nada de estranho por aqui ",
	"nao posso lhe ajuda, nao sei de nada"  ,
	"desculpa, mas nao v nenhum suspeito por aqui"
	],
	"Carolina": [
		"Não passou nenhum suspeito por aqui",
		"Não avistei nenhum suspeito. ",
		"por aqui nao passou niguem estranho"
	],
	"Barrerinhas": [ 
	"um suspeito passou dizendo que ía participar do debate contra os higiênitas para nao demolirem a cidade, nao entendi foi nada.",
	"Acho que sim,\n uma pessoa estranha disse que estava indo para uma cidade onde os edificios estava entrando em ruina e as pessoas estavam indo embora de lá"  ,
	"Um suspeito disse que estava a caminho da cidade que foi a maior industria do estado, \n mas ela esta decaindo aos poucos depois da eboliçao da escravatura"
	],
	"Codó": [
	"res://Materiais/Imagens/cenario_dica/tela2d1.png",
	"res://Materiais/Imagens/cenario_dica/tela2d2.png",
	"res://Materiais/Imagens/cenario_dica/tela2d3.png"
	],
	"Santa Inês": [
		"nã, nenhum suspeito passou por aqui",
		"oh querido/a, sinto muito \n mas nao posso lhe ajudar,",
		"Suspeito? \n nããão siô, por aqui esta tudo na santa paz."
	],
	"Viana": [
		"não passou ninguem estranho",
	"nao vi ninguem suspeito por aqui"  ,
	"não vi nada de estranho por aqui"
	],
}

const img_f ={
	"Sao Luis": [ 
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d2_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d3_saoluis.jpeg"
	],
	"Imperatriz": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d2_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d3_saoluis.jpeg"
	],
	"Grajaú": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/d1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d3_grajau.jpeg"
	],
	"Gurupi": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d2_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d3_saoluis.jpeg"
	],
	"Pindaré": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/d1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d3_grajau.jpeg"
	],
	
		"Alcântara": [ 
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d2_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d3_saoluis.jpeg"
	],
	"Guimarães": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d2_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d3_saoluis.jpeg"
	],
	"Buriticupu": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/d1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d3_grajau.jpeg"
	],
	"Caxias": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d2_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d3_saoluis.jpeg"
	],
	"Carolina": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/d1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d3_grajau.jpeg"
	],
	"Barrerinhas": [ 
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Codó": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/d1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d3_grajau.jpeg"
	],
	"Santa Inês": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/d1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/d3_grajau.jpeg"
	],
	"Viana": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d2_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d3_saoluis.jpeg"
	],
	
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

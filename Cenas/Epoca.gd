extends Sprite

onready var timer := $Timer as Timer
var file = File.new()
var eg = 10

const mapa ={
	"São Luis": ["res://Materiais/Imagens/news imagens/mapa/telaSaoLuis2.jpg" ],
	"Imperatriz": ["res://Materiais/Imagens/news imagens/mapa/mapa_imperatriz.jpeg" ],
	"Grajaú": ["res://Materiais/Imagens/news imagens/mapa/mapa_grajau.jpg"],
	"Gurupi": ["res://Materiais/Imagens/news imagens/mapa/telaSaoLuis2.jpg"],####
	"Pindaré": ["res://Materiais/Imagens/news imagens/mapa/telaPindare2.jpg"  ],
	#///////////////////////Novas Cidades //////////////////////////////#
	"Alcântara": ["res://Materiais/Imagens/news imagens/mapa/telaAlcântarap.jpg"],
	"Guimarães": [ "res://Materiais/Imagens/news imagens/mapa/telaguimaraesP (1).jpg"  ],
	"Buriticupu": [ "res://Materiais/Imagens/news imagens/mapa/buriticupuP.jpg" ],
	"Caxias": ["res://Materiais/Imagens/news imagens/mapa/telaMapaCaxiasMa2.jpg"  ],
	
	"Carolina": [ "res://Materiais/Imagens/news imagens/mapa/carolina (1).jpg"  ],
	"Barrerinhas": ["res://Materiais/Imagens/news imagens/mapa/telaBarerinhas.jpg" ],
	"Codó": ["res://Materiais/Imagens/news imagens/mapa/codo.jpg"   ],
	"Santa Inês": [ "res://Materiais/Imagens/news imagens/mapa/santaines.jpg"   ],
	"Viana": ["res://Materiais/Imagens/news imagens/mapa/telaViana.jpg"  ],
	
	}


const posicao ={
	"São Luis": [Vector2(200,250), Vector2(240,555),Vector2(460,660)],
	"Imperatriz":[Vector2(320,200), Vector2(110,440),Vector2(420,600)],
	"Grajaú":[Vector2(175,320), Vector2(400,575),Vector2(30,780)],
	"Gurupi":[Vector2(200,315),Vector2(470,480),Vector2(92,750)],
	"Pindaré":[Vector2(400,340),Vector2(130,430),Vector2(90,610)],
	"Alcântara": [Vector2(418,318), Vector2(170,450),Vector2(65,740)],
	"Guimarães":[Vector2(390,300), Vector2(170,390),Vector2(260,570)],
	"Buriticupu":[Vector2(220,300), Vector2(330,640),Vector2(180,880)],
	"Caxias":[Vector2(360,410),Vector2(415,570),Vector2(50,570)],   #////////////#
	"Carolina":[Vector2(40,365),Vector2(315,440),Vector2(190,785)],
	"Barrerinhas": [Vector2(290,275), Vector2(450,500),Vector2(110,750)],
	"Codó":[Vector2(250,350), Vector2(120,470),Vector2(460,750)],
	"Santa Inês":[Vector2(490,290), Vector2(380,600),Vector2(125,700)],
	"Viana":[Vector2(180,430),Vector2(360,580),Vector2(170,800)],
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
	"Gurupi": [
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
	"Gurupi":[Vector2(200,315),Vector2(470,480),Vector2(92,750)],
	"Pindaré":[Vector2(170,145),Vector2(180,110),Vector2(220,110)],
	"Alcântara": [Vector2(130,130), Vector2(285,115),Vector2(185,150)],
	"Guimarães":[Vector2(120,110), Vector2(160,130),Vector2(150,142)],
	"Buriticupu":[Vector2(150,110), Vector2(150,150),Vector2(150,140)],
	"Caxias":[Vector2(210,120),Vector2(200,150),Vector2(190,150)], #//////////////#
	"Carolina":[Vector2(180,120),Vector2(145,285),Vector2(150,150)],
	"Barrerinhas": [Vector2(170,222), Vector2(190,210),Vector2(210,170)],
	"Codó":[Vector2(250,130), Vector2(160,230),Vector2(170,160)],
	"Santa Inês":[Vector2(120,100), Vector2(110,130),Vector2(150,140)],
	"Viana":[Vector2(180,120),Vector2(250,230),Vector2(180,160)],
	
}
const telaf ={
	"São Luis": [ 
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Imperatriz": [
		 "res://Materiais/Imagens/news imagens/personagens/imperatriz/Claudinho .jpg",
		"res://Materiais/Imagens/news imagens/personagens/imperatriz/Di.jpg", 
		"res://Materiais/Imagens/news imagens/personagens/imperatriz/Léia.jpg"
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
		"res://Materiais/Imagens/news imagens/personagens/pindare/Luizinho.jpg", 
		"res://Materiais/Imagens/news imagens/personagens/pindare/Zezinho.jpg",
		"res://Materiais/Imagens/news imagens/personagens/pindare/Amanda.jpg"
		
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
	"res://Materiais/Imagens/news imagens/personagens/barrerinhas/maria.jpg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Codó": [
	
	"res://Materiais/Imagens/news imagens/personagens/codo/Cah.jpg", 
	"res://Materiais/Imagens/news imagens/personagens/codo/Gi.jpg", 
	"res://Materiais/Imagens/news imagens/personagens/codo/Pedrinho.jpg"
	
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
	"São Luis": [ 
		"Hê, 'sinhô'! Parece que vi um negócio sim! Um suspeito passou por aqui e perguntou se eu sei onde fica a segunda cidade mais populosa do estado. Aquela que cresceu a economia e a população com a criação da estrada Belém Brasília.",
		"Oiii! Passou simmm, eu vi! Uma pessoa suspeita passou por aqui e disse que ia para a cidade que abastecia o garimpo de Serra Pelada. Eu não entendi foi nada.",
		"O quê? suspeito?\n Suspeito de quê?\n Uma pessoa que parecia suspeito por aqui. Ela falou alguma coisa sobre um lugar que até a década de 1980, vivia o ciclo do arroz. Alguma coisa como Corredor Agrícola. Mas eu sou criança, nem entendi nada disso."
	],
	"Imperatriz": [
		
		" Ho meu filho/a! \n Passou um suspeito por aqui sim!\n Ele falava alguma coisa sem sentido. Queria saber sobre um atentado contra um tal de Leão Leda.",
		"'Mirmã' não sei nada não! Passou um suspeito por aqui, mas dei muita atenção pra ele. Só lembro que falou alguma coisa sobre a Guerra da Leda no sertão do maranhão. Que parece, aconteceu no final do século XIX e no inicio do século XX."  ,
		"Hoo meu 'fíí'! Passou um cabôco diferente por aqui! Mas eu nem 'intendi' direito o que ele queria não. Falou umas coisas sobre uma guerra que queria a independência política do sertão do maranhão. "
	],
	"Grajaú": [
	"Um suspeito tinha me dito que um novo município estava sendo gerado a partir da cidade de monção que se chamava engenho de São Pedro de Alcântara.",
	"Sim, passou sim, ele falou que estava indo para uma cidade com um engenho que estava prestes a fechar, pois a indústria açucareira entrou em decadência.",
	"Um suspeito passou dizendo que ia presenciar a construção da  ferrovia que faz ligação ao engenho central e ao porto terminal dos canaviais."

	],
	"Gurupi": [
		"Acho que não vi nenhum suspeito por aqui.",
		"não vi nada de estranho por aqui.",
		"nenhuma pessoa suspeita passou por aqui"
	],
	"Pindaré": [
	"Um suspeito disse que iria para inauguração da primeira indústria da cidade. Ele também disse que a indústria iria se chamar de companhia manufatureira e agrícola. ",
	"Uma pessoa suspeita   tinha me dito que  depois  que o presidente Afonso Pena veio visitar o Estado foi decidido  que iriam colocar uma estação ferroviária em uma cidade da região dos cocais, ele disse que a estrada de ferro é de São Luís até Cajazeira.",
	"Uma pessoa disse para um senhor que estava indo para o leste do estado, atrás de uma cidade da umbanda. "

	],
	"Alcântara": [ 
	"!!!!  ",
	"!!!" ,
	"!!!"
	],
	"Guimarães": [
	"sinto muito não poder lhe ajudar \n não avistei nada de estranho por aqui",
	"não, não, \n estar tudo em paz por aqui!",
	"não vi nada de estranho por aqui"
	],
	"Buriticupu": [
		"Suspeito? \n Não vi nenhum aqui não.",
		"não tem nada de estranho por aqui",
		"Não passou nenhum suspeito por aqui"
	],
	"Caxias": [
		"não vi nada de estranho por aqui ",
	"não posso lhe ajudar, não sei de nada"  ,
	"desculpa, mas não vi nenhum suspeito por aqui"
	],
	"Carolina": [
		"Não passou nenhum suspeito por aqui",
		"Não avistei nenhum suspeito. ",
		"por aqui não passou ninguém estranho"
	],
	"Barrerinhas": [ 
	"Um suspeito passou dizendo que ia participar do debate contra os higiênitas para não demolirem a cidade, não entendi nada.",
	"Acho que sim, uma pessoa estranha disse que estava indo para uma cidade onde os edifícios estavam ficando arruinados e as pessoas estavam indo embora de lá.",
	"Um suspeito disse que estava a caminho da cidade que foi a maior indústria do estado, mas que está decaindo aos poucos depois da abolição da escravatura."
	],
	"Codó": [
	" Siô, uma pessoa estranho esses dias me perguntou na rua pra que rumo ficam os lençóis maranhenses. Acho que muita gente como ele tá se interessando em conhecer esse lugar, afinal, começaram a divulgar bastante as belezas naturais de lá. Ou então ele queria arrumar emprego, porque a demanda de lá deve aumentar agora com essas divulgações,",
	"Rapaz, um dia desse passou um homem perguntando por um lugar que haviam descoberto pertróleo aqui no Maranhão. Eu não me lembro direito, mas um pessoal respondeu a ele que nesse lugar tinha umas dunas de areia. Agora eu mesmo não sei onde fica isso, você sabe!?",
	"Meu fi, esses dias um rapaz me perguntou onde ficava um lugar que tinha acabado de se emancipar lá pro norte. Eu não soube respondê-lo, mas ele, convicto, disse que estava a caminho de lá"
	],
	"Santa Inês": [
		"não, nenhum suspeito passou por aqui",
		"oh querido/a, sinto muito \n mas não posso lhe ajudar,",
		"Suspeito? \n nããão siô, por aqui está tudo na santa paz."
	],
	"Viana": [
		"não passou ninguém estranho",
	"não vi ninguém suspeito por aqui"  ,
	"não vi nada de estranho por aqui"
	],
}


const img_f ={
	"São Luis": [       
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Imperatriz": [
		 "res://Materiais/Imagens/news imagens/personagens/imperatriz/Claudinho .jpg",
		"res://Materiais/Imagens/news imagens/personagens/imperatriz/Di.jpg", 
		"res://Materiais/Imagens/news imagens/personagens/imperatriz/Léia.jpg"
	],
	"Grajaú": [
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica1_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica2_grajau.jpeg",
		"res://Materiais/Imagens/news imagens/personagens/grajau/dica3_grajau.jpeg"
	],
	"Gurupi": [
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d1_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d2_saoLuis.jpeg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/d3_saoluis.jpeg"
	],
	"Pindaré": [
		"res://Materiais/Imagens/news imagens/personagens/pindare/Luizinho.jpg", 
	"res://Materiais/Imagens/news imagens/personagens/pindare/Zezinho.jpg",
		"res://Materiais/Imagens/news imagens/personagens/pindare/Amanda.jpg"
		
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
	"res://Materiais/Imagens/news imagens/personagens/barrerinhas/maria.jpg",
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,
	"res://Materiais/Imagens/news imagens/personagens/saoLuis/dica3_saoLuis.jpeg"
	],
	"Codó": [
		"res://Materiais/Imagens/news imagens/personagens/codo/Cah.jpg", 
		"res://Materiais/Imagens/news imagens/personagens/codo/Gi.jpg", 
		"res://Materiais/Imagens/news imagens/personagens/codo/Pedrinho.jpg"
		
		
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


onready var tela = $tela_dica/tela_fundo
onready var pers = $tela_dica/tela_fundo/personagem
onready var dica = $tela_dica/tela_fundo/Label
var op = 0
var ep =""
var cont = false

func _ready():
	
	
	
	
	#$AudioStreamPlayer2D.play(2)
	$tela_dica/tela_fundo.position = Vector2(360,640)
	$tela_dica/tela_fundo.scale = Vector2(1,1)
	
	timer.start()
	$Cazumbar.rect_size= Vector2(250,90)
	$Cazumbar.rect_position= Vector2(150,10)
	$Cazumbar/Label.modulate = Color(0, 0, 0, 1)
	$Cazumbar/Label.text = "CAZUMBAR"
	
	$Voltar.rect_size= Vector2(250,90)
	$Voltar.rect_position= Vector2(450,10)
	$Voltar/Label2.modulate = Color(0, 0, 0, 1)
	$Voltar/Label2.text = "VOLTAR"
	
	$Label3.rect_position= Vector2(100,120)
	#$Label3.modulate = Color(0, 0, 0, 1)
	
	
	$tela_dica/tela_fundo/Label.modulate = Color(0, 0, 0, 3)
	#var file = File.new()
	file.open("res://Player.txt", File.READ)
	$Label3.text = "Você está em " + file.get_as_text().split(":")[1].split(";")[0]
	ep =file.get_as_text().split(":")[1].split(";")[0]
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

func _process(delta):
	if move:
		if len(paths[ep][op]) > 0:
			for i in paths[ep][op]:
				$player.move_and_collide($player.position.direction_to(i-playerSize)*0.25)
				if $player.position == i-playerSize:
					pass
			#out()
		else:
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
	print(0)
	op = 0
	b1= true
	d1()
	movimentacao()
	

func _on_Dica2_pressed():
	print(1)
	op = 1
	b2 = true
	d2()
	movimentacao()

func _on_Dica3_pressed():
	print(2)
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
	$tela_dica/tela_fundo/Label.visible_characters = $tela_dica/tela_fundo/Label.visible_characters+1

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
	$tela_dica/tela_fundo/Label.lines_skipped = 7
	#timer.start()
	#_on_Timer_timeout()
	
	cont = true
	pass # Replace with function body.


func _on_botao1_pressed():
	get_tree().change_scene("res://tela_de_energia.tscn"  )
	
	file.open("res://Player.txt", File.READ)
	var eg =file.get_as_text().split(";")[1]
	#$Sprite.texture = load(energia[eg][0])
	$tela_dica.visible = is_visible_in_tree()
	print(eg)
	pass # Replace with function body.

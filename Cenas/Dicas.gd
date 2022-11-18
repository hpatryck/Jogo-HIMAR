extends Node2D

onready var timer := $Timer as Timer

const telaf ={
	"São Luis": [ 
	"res://Materiais/Imagens/news_imagens/personagens/saoLuis/Di.jpg",#2-
	"res://Materiais/Imagens/news_imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,#4-
	"res://Materiais/Imagens/news_imagens/personagens/saoLuis/dica3_saoLuis.jpeg"#3
	],
	"Imperatriz": [
		 "res://Materiais/Imagens/news_imagens/personagens/imperatriz/Claudinho.jpg",#2-
		"res://Materiais/Imagens/news_imagens/personagens/imperatriz/Leia.jpg",#2-
		"res://Materiais/Imagens/news_imagens/personagens/imperatriz/SeuJorge.jpeg"  #1obs
		
	],
	"Grajaú": [
		"res://Materiais/Imagens/news_imagens/personagens/grajau/dica1_grajau.jpeg",#1
		"res://Materiais/Imagens/news_imagens/personagens/grajau/dica2_grajau.jpeg",#2-
		"res://Materiais/Imagens/news_imagens/personagens/grajau/dica3_grajau.jpeg"#2-
	],
	"Carutapera": [
	"res://Materiais/Imagens/news_imagens/personagens/codo/Pedrinho.jpg",#2
	"res://Materiais/Imagens/news_imagens/personagens/codo/Luizinho.jpg",#1
	"res://Materiais/Imagens/news_imagens/personagens/codo/Gi.jpg"#2-
	],
	"Pindaré": [
		"res://Materiais/Imagens/news_imagens/personagens/pindare/Zezinho.jpg",#3-
		"res://Materiais/Imagens/news_imagens/personagens/pindare/Pescadori2.jpg", #1
		"res://Materiais/Imagens/news_imagens/personagens/pindare/Amanda.jpg"#1
		
	],
	"Alcântara": [ 
	"res://Materiais/Imagens/news_imagens/personagens/saoLuis/dica1_saoLuis.jpeg",#2
	"res://Materiais/Imagens/news_imagens/personagens/saoLuis/dica2_saoLuis.jpeg"  ,#4-
	"res://Materiais/Imagens/news_imagens/personagens/saoLuis/dica3_saoLuis.jpeg"#3
	],
	"Guimarães": [
		"res://Materiais/Imagens/news_imagens/personagens/barrerinhas/SeuChico.jpg",#2-
		"res://Materiais/Imagens/news_imagens/personagens/saoLuis/dica2_saoLuis.jpeg" ,#4
		"res://Materiais/Imagens/news_imagens/personagens/pindare/Pescador22.jpg"#1
	
	],
	"Buriticupu": [
		"res://Materiais/Imagens/news_imagens/personagens/alcantara/Ruan.jpg",#3-
		"res://Materiais/Imagens/news_imagens/personagens/grajau/dica2_grajau.jpeg",#2
		"res://Materiais/Imagens/news_imagens/personagens/grajau/dica3_grajau.jpeg"#2
	],
	"Caxias": [
		"res://Materiais/Imagens/news_imagens/personagens/barrerinhas/Maycon.jpg",#2-
		"res://Materiais/Imagens/news_imagens/personagens/codo/Pedrinho.jpg",#2-
		"res://Materiais/Imagens/news_imagens/personagens/imperatriz/Leia.jpg"#2
	],
	"Carolina": [
		"res://Materiais/Imagens/news_imagens/personagens/saoLuis/Di.jpg",#2
		"res://Materiais/Imagens/news_imagens/personagens/pindare/Zezinho.jpg",#3-
		"res://Materiais/Imagens/news_imagens/personagens/imperatriz/Claudinho.jpg"#2
	],
	"Barreirinhas": [ 
	"res://Materiais/Imagens/news_imagens/personagens/barrerinhas/maria.jpg",#1
	"res://Materiais/Imagens/news_imagens/personagens/barrerinhas/Maycon.jpg",#2
	 "res://Materiais/Imagens/news_imagens/personagens/barrerinhas/SeuChico.jpg"#2
	
	],
	"Codó": [
	"res://Materiais/Imagens/news_imagens/personagens/codo/Pedrinho.jpg",#2
	"res://Materiais/Imagens/news_imagens/personagens/codo/Luizinho.jpg",#1
	"res://Materiais/Imagens/news_imagens/personagens/codo/Gi.jpg"#2-
	
	
	],
	"Santa Inês": [
		"res://Materiais/Imagens/news_imagens/personagens/barrerinhas/maria.jpg",#2
		"res://Materiais/Imagens/news_imagens/personagens/alcantara/Joao.jpg",#1
		"res://Materiais/Imagens/news_imagens/personagens/alcantara/Ruan.jpg",#3-
	],
	"Viana": [
	"res://Materiais/Imagens/news_imagens/personagens/alcantara/Ruan.jpg",#3
	"res://Materiais/Imagens/news_imagens/personagens/pindare/Zezinho.jpg",#3
	"res://Materiais/Imagens/news_imagens/personagens/codo/Gi.jpg"#2
	],
	
}

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
	"Carutapera": [
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
	"Sinto muito não poder lhe ajudar \n não avistei nada de estranho por aqui",
	"Não, não, \n estar tudo em paz por aqui!",
	"Não vi nada de estranho por aqui"
	],
	"Buriticupu": [
		"Suspeito? \n Não vi nenhum aqui não.",
		"Não tem nada de estranho por aqui",
		"Não passou nenhum suspeito por aqui"
	],
	"Caxias": [
		"Não vi nada de estranho por aqui ",
	"Não posso lhe ajudar, não sei de nada"  ,
	"Desculpa, mas não vi nenhum suspeito por aqui"
	],
	"Carolina": [
		"Não passou nenhum suspeito por aqui",
		"Não avistei nenhum suspeito. ",
		"Por aqui não passou ninguém estranho"
	],
	"Barreirinhas": [ 
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
		"Não, nenhum suspeito passou por aqui",
		"Oh querido/a, sinto muito \n mas não posso lhe ajudar,",
		"Suspeito? \n nããão siô, por aqui está tudo na santa paz."
	],
	"Viana": [
		"Não passou ninguém estranho",
	"Não vi ninguém suspeito por aqui"  ,
	"Não vi nada de estranho por aqui"
	],
}

var opc = ""
var ep = ""
var eg = ""

func _ready():
	timer.start()
	
	$tela_fundo/Label.visible_characters = 0
	$tela_fundo.scale = Vector2(0.5,0.5)
	$tela_fundo.position = Vector2(180,320)
	var file = File.new()
	file.open("res://Player.txt", File.READ)
	ep =file.get_as_text().split(":")[1].split(";")[0]
	opc = file.get_as_text().split(":")[0]
	eg =  file.get_as_text().split(";")[1]
	dica()
	
	$tela_fundo/cazumbar.rect_position = Vector2(-300,-600)
	$tela_fundo/cazumbar/Label.modulate = Color(0,0,0,1)
	$tela_fundo/cazumbar/Label.text = "CAZUMBAR"
	
	$tela_fundo/voltar.rect_position = Vector2(90,-600)
	$tela_fundo/Label.rect_position= Vector2(-190,250)
	$tela_fundo/voltar/Label.text = "VOLTAR"
	
	$tela_fundo/voltar/Label.modulate = Color(0,0,0,1)
	
func dica():
	var op_c = int(opc)
	$tela_fundo.texture = load(telaf[ep][op_c])
	$tela_fundo/Label.text = texto[ep][op_c]
	
	
func _on_cazumbar_pressed():
	
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")
	pass # Replace with function body.


func _on_voltar_pressed():
	get_tree().change_scene( "res://Cenas/Epoca.tscn")
	pass # Replace with function body.
	
func _process(delta):
	pass



var num =0
var s1 =0.0
var s2= 0.0
var s3 = 0.0
var soma = 0.0


#var total = $tela_fundo/Label.percent_visible
func _on_Timer_timeout():
	$Timer.wait_time = 0.1
	if $tela_fundo/Label.visible_characters == 140 and num==0:
		s1 = $tela_fundo/Label.percent_visible
		soma = s1 + s2 + s3
		$tela_fundo/Label.lines_skipped =6
		$tela_fundo/Label.visible_characters = 0
		
		num= num+1
	if  $tela_fundo/Label.visible_characters == 140 and num ==1:
		s2 = $tela_fundo/Label.percent_visible
		soma = s1 + s2 + s3
		
		$tela_fundo/Label.lines_skipped =12
		$tela_fundo/Label.visible_characters = 0
		
		num= num+1
		
	if $tela_fundo/Label.visible_characters == 140 and num ==2:
		s3 = $tela_fundo/Label.percent_visible
		$tela_fundo/Label.lines_skipped =18
		$tela_fundo/Label.visible_characters = 0
		
		soma = s1 + s2 + s3
		
		num= num+1
		
	$tela_fundo/Label.visible_characters = $tela_fundo/Label.visible_characters+1
	if soma >0.99:
		timer.one_shot = true
		
		
	pass # Replace with function body.

extends Node2D

onready var timer := $Timer as Timer

#########################
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
	
	#print("op ="+ opc + "\n ep = "+ ep +"\n eg ="+eg)
	
	$tela_fundo/cazumbar.rect_position = Vector2(-200,-600)
	$tela_fundo/cazumbar/Label.modulate = Color(0,0,0,1)
	$tela_fundo/cazumbar/Label.text = "CAZUMBAR"
	
	$tela_fundo/voltar.rect_position = Vector2(80,-600)
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
		print("entrou no 1° if")
		print (soma)
		num= num+1
	if  $tela_fundo/Label.visible_characters == 140 and num ==1:
		s2 = $tela_fundo/Label.percent_visible
		soma = s1 + s2 + s3
		
		$tela_fundo/Label.lines_skipped =12
		$tela_fundo/Label.visible_characters = 0
		print("entrou no 2° if")
		print (soma)
		num= num+1
		
	if $tela_fundo/Label.visible_characters == 140 and num ==2:
		s3 = $tela_fundo/Label.percent_visible
		$tela_fundo/Label.lines_skipped =18
		$tela_fundo/Label.visible_characters = 0
		print("entrou no 3° if")
		soma = s1 + s2 + s3
		print (soma)
		num= num+1
		
	$tela_fundo/Label.visible_characters = $tela_fundo/Label.visible_characters+1
	if soma >0.99:
		timer.one_shot = true
		print(soma)
		print("fim")
		
	pass # Replace with function body.

extends Sprite



const tela_menu = ["res://Materiais/Imagens/imagem_menu/começa.jpg",
	"res://Materiais/Imagens/imagem_menu/menu_ranking.jpeg",
	"res://Materiais/Imagens/imagem_menu/menuPrincipalSemBotao.jpg" ]

const botao = [ "res://Materiais/Botões/botão.png",
	"res://Materiais/Botões/botãoAoClicar.png",
	"res://Materiais/Botões/BotaoClique.png"
]

func _ready():
	position= Vector2(180,320)
	scale = Vector2(0.5,0.5)
	$botao1.rect_position = Vector2(-140,-156)
	$botao1.rect_size = Vector2(273,104)
	$Label.rect_position = Vector2(-140,-156)
	$Label.rect_size = Vector2(273,104)
	$Label.text = "COMECAR"
	
	$botao2.rect_position = Vector2(-138,-18)
	$botao2.rect_size = Vector2(278,97)
	$Label2.rect_position = Vector2(-138,-18)
	$Label2.rect_size = Vector2(278,97)
	$Label2.text = "OPÇOES"
	
	$botao3.rect_position = Vector2(-138,130)
	$botao3.rect_size = Vector2(273,104)
	$Label3.rect_position = Vector2(-138,130)
	$Label3.rect_size = Vector2(273,104)
	$Label3.text = "RANKING"
	
	$botao4.rect_position = Vector2(-145,283)
	$botao4.rect_size = Vector2(296,100)
	$Label4.rect_position = Vector2(-145,283)
	$Label4.rect_size = Vector2(296,100)
	$Label4.text = "INSTRUÇÕES"
	
	pass
	
	


func _on_botao1_pressed():
	get_tree().change_scene("res://Cenas/comecar.tscn"  )
	pass # Replace with function body.


func _on_botao2_pressed():
	get_tree().change_scene("res://Cenas/opcoes.tscn"  )
	pass # Replace with function body.


func _on_botao3_pressed():
	get_tree().change_scene("res://Cenas/ranking.tscn"  )
	pass # Replace with function body.


func _on_botao4_pressed():
	get_tree().change_scene("res://Cenas/instrucoes.tscn"  )
	pass # Replace with function body.

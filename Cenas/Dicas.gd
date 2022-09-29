extends Node2D

func _ready():
	
	var file = File.new()
	file.open("res://Player.txt", File.READ)
	var ep =file.get_as_text().split(":")[1].split(";")[0]
	
	$tela_fundo/cazumbar.rect_position = Vector2(-200,-600)
	$tela_fundo/cazumbar/Label.modulate = Color(0,0,0,1)
	$tela_fundo/cazumbar/Label.text = "CAZUMBAR"
	
	$tela_fundo/voltar.rect_position = Vector2(80,-600)
	$tela_fundo/Label.rect_position= Vector2(-190,250)
	$tela_fundo/voltar/Label.text = "VOLTAR"
	
	$tela_fundo/voltar/Label.modulate = Color(0,0,0,1)
	
func _on_cazumbar_pressed():
	
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")
	pass # Replace with function body.


func _on_voltar_pressed():
	get_tree().change_scene( "res://Cenas/Epoca.tscn")
	pass # Replace with function body.
	
func _process(delta):
	pass

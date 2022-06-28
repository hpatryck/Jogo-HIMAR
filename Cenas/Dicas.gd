extends Node2D

func _ready():
	#$Label.rect_position = Vector2(-79,160)
	$tela_fundo.position = Vector2(30,12)
	$tela_fundo.scale = Vector2(0.8,0.8)
	$cazumbar/Label.text = "CAZUMBAR"
	$voltar/Label.text = "VOLTAR"
	$cazumbar/Label.modulate = Color(0,0,0,1)
	$voltar/Label.modulate = Color(0,0,0,1)
	$tela_fundo.position= Vector2(0,0)
	$tela_fundo.scale= Vector2(1.2,1.2)

func _on_cazumbar_pressed():
	
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")
	pass # Replace with function body.


func _on_voltar_pressed():
	get_tree().change_scene( "res://Cenas/Epoca.tscn" )
	pass # Replace with function body.
func _process(delta):
	pass

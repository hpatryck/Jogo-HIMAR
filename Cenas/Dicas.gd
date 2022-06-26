extends Node2D

func _ready():
	$cazumbar/Label.text = "CAZUMBAR"
	$voltar/Label.text = "VOLTAR"
	$cazumbar/Label.modulate = Color(0,0,0,1)
	$voltar/Label.modulate = Color(0,0,0,1)
	$tela_fundo.position= Vector2(0,0)
	$tela_fundo.scale= Vector2(1.2,1.2)
	#$"../".show_behind_parent = true
	#$tela_dica.visible = is_visible_in_tree()
	#$Label.modulate = Color(2, 4, 0, 9)
	pass # Replace with function body.

func _on_cazumbar_pressed():
	
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")
	pass # Replace with function body.


func _on_voltar_pressed():
	get_tree().change_scene( "res://Cenas/Epoca.tscn" )
	pass # Replace with function body.
func _process(delta):
	pass

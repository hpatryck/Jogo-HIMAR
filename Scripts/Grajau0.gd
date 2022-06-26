extends Node2D

func _ready():
	var file = File.new()
	file.open("res://player.txt", File.WRITE)
	file.store_string("player1:0;0")

func _on_Pista1_pressed():
	get_tree().change_scene("res://Cenas/grajau0-1.tscn")
	
func _on_Pista2_pressed():
	get_tree().change_scene("res://Cenas/grajau0-2.tscn")
	
func _on_Pista3_pressed():
	get_tree().change_scene("res://Cenas/grajau0-3.tscn")


func _on_Cazumbar_pressed():
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")


func _on_Voltar_pressed():
	pass # Replace with function body.


func _on_pista1_pressed():
	get_tree().change_scene("res://Cenas/grajau0-1.tscn")
	pass # Replace with function body.


func _on_pista2_pressed():
	get_tree().change_scene("res://Cenas/grajau0-2.tscn")
	pass # Replace with function body.


func _on_pista3_pressed():
	get_tree().change_scene("res://Cenas/grajau0-3.tscn")
	pass # Replace with function body.


func _on_cazumbar_pressed():
	get_tree().change_scene("res://Cenas/Cazumbar.tscn")
	pass # Replace with function body.


func _on_voltar_pressed():
	pass # Replace with function body.

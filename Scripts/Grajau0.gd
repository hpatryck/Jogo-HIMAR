extends Node2D

const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db
var db_name = "res://SQLite/database.db"

func _ready():
	db = SQLite.new()
	db.path = db_name
	db.open_db()

#Colocar nas cenas para modificar a pontuação
func moveu(cenaout, cenain):
	db.query_with_bindings("select * from infojogador where status = '1';")
	var player = db.query_result
	db.query_with_bindings("select pont from pontuacao where cenaout = ? and cenain = ?;", [cenaout, cenain])
	var incremento = db.query_result
	db.query_with_bindings("""update infojogador set score = ? where
	 	id = ?;""", [player[0].score+incremento[0].pont, player[0].id])
	db.close()

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

extends Sprite

const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db
var db_name = "res://SQLite/database.db"

func _ready():
	$AudioStreamPlayer2D.play(2)
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	db.query("update infojogador set status = '0';")
	db.close_db()
	db.open_db()
	
func _insertDB():
	var name = $TextEdit.get_text().strip_edges()
	if name == "":
		return false
	db.query_with_bindings("select * from infojogador where nome = ?;", [name])
	var player = db.query_result
	if len(player) == 0:
		db.query_with_bindings("insert into infojogador (nome) values (?);", [name])
		db.close_db()
		db.open_db()
		db.query_with_bindings("select * from infojogador where nome = ?;", [name])
		player = db.query_result
	db.query_with_bindings("update infojogador set status = '1' where id = ?;", [player[0]["id"]])
	
	db.close_db()
	return true
	
func _on_TextureButton3_pressed():
	if _insertDB():
		get_tree().change_scene("res://Cenas/Epoca.tscn"  )
	pass # Replace with function body.

func _on_TextureButton2_pressed():
	get_tree().change_scene("res://Cenas/comecar.tscn"  )
	pass # Replace with function body.

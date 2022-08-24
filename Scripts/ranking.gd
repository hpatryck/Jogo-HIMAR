extends Sprite

const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db
var db_name = "res://SQLite/database.db"

func _ready():
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	
	var tableName = "infojogador"
	db.query("select * from infojogador order by score desc, nome;")
	print(db.query_result)
	
	var players = db.query_result
	pass


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Cenas/menu.tscn"  )
	pass # Replace with function body.

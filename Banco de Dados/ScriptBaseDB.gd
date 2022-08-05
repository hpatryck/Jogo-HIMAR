extends Node

const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db
var db_name = "res://SQLite/database.db"

func _ready():
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	
	var tableName = "infojogador"
	db.query("select * from infojogador;")
	print(db.query_result)
	
	var dict : Dictionary = Dictionary()
	dict["nome"] = "fulano"      
	dict["score"] = 100
	pass

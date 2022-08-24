extends TextEdit

const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db
var db_name = "res://SQLite/database.db"

func _ready():
	
	var players
	
	
	"""var text = db.split(".", false)
	#var players = []
	var sortplayers = []
	$ranking.text = db
	for i in text:
		players = (i.split(",", false))
		if(len(sortplayers) > 0):
			var ver = false
			for j in range(len(sortplayers)):
				if int(sortplayers[j][1]) < int(players[1]):
					sortplayers.insert(j, players)
					ver = true
					break
			if(!ver):
				sortplayers.insert(len(sortplayers), players)
		else:
			sortplayers.append(players)"""
			
func get_not_text():
	
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	
	var tableName = "infojogador"
	db.open("infojogador", db.READ)
	var content = db.get_as_text()
	db.close()
	return content
	
	var player = [-1]
	var nome = 1

func _on_TextureButton_pressed():
	var db = $Sprite/TextEdit1.get_text()
	var text = get_not_text()
	var note = text.split(".", false)
	var players = []
	var player = [-1]
	for i in range(len(note)):
		players.append(note[i].split(",", false))
		if players[i][0] == db:
			player[0] = i
			print(player)
	if player[0] == -1:
		players.append([db, 0])
		player[0] = len(players)
		text += ("%s," % players[-1][0]) + ("%s." % players[-1][1])
		save(text)
	get_tree().change_scene("res://scenes/tela_grajau.tscn")

	if ($Sprite/TextEdit1.text != ""):
		db = $Sprite/TextEdit1.get_text() + "\t"
		text = get_not_text() + "\n"
		note = text.split(".", false)
		players = []
		for i in range(len(note)):
			players.append(note[i].split(",", false))
			if players[i][0] == db:
				player[0] = i
				print(player)
		if player[0] == -1:
			players.append([db, 0])
			player[0] = len(players)
			text += ("%s," % players[-1][0]) + ("%s." % players[-1][1])
			save(text)
		get_tree().change_scene("res://scenes/tela_grajau.tscn")

	#save(db)
	#print(db.split("."))
	
	
func _insertAtDB():
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	
	var tableName = "infojogador"
	var dict : Dictionary = Dictionary()
	dict["nome"] = get_not_text()      
	dict["score"] = null
	db.open("infojogador", db.READ)
	
func save(content):
	var file = File.new()
	file.open("infojogador", File.WRITE)
	file.store_string(content)
	file.close()

	
func _on_button_voltar_pressed():
	get_tree().change_scene("res://scenes/comecar.tscn")
	pass # Replace with function body.
	

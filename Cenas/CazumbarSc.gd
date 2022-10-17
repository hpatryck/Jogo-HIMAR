extends Sprite


const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db
var db_name = "res://SQLite/database.db"

const path = {
	"São Luis": ["Imperatriz", "Guimarães", "Carutapera"],
	"Imperatriz": ["Viana", "Grajaú", "Buriticupu"],
	"Grajaú": ["Santa Inês", "Pindaré", "Carolina"],
	"Carutapera": ["São Luis", "Guimarães", "Buriticupu"],
	"Pindaré": ["Carolina", "Carutapera", "Codó"],
	"Alcântara": ["Santa Inês", "Viana", "Codó"],
	"Guimarães": ["Caxias", "Buriticupu", "São Luis"],
	"Buriticupu": ["Viana", "Caxias", "Grajaú"],
	"Caxias": ["Carolina", "Imperatriz", "Santa Inês"],
	"Carolina": ["São Luis", "Caxias", "Pindaré"],
	"Barrerinhas": ["Alcântara", "Viana", "Caxias"],
	"Codó": ["Guimarães", "Buriticupu", "Barrerinhas"],
	"Santa Inês": ["Imperatriz", "Guimarães", "Carutapera"],
	"Viana": ["São Luis", "Imperatriz", "Caxias"],
	
}
var current = ""

func _ready():
	db = SQLite.new()
	db.path = db_name
	db.open_db()
	$AudioStreamPlayer2D.play(2)
	var file = File.new()
	file.open("res://player.txt", File.READ)
	current = file.get_as_text().split(":")[1].split(";")[0]
	print(current)
	var cor = Color(0, 0, 0, 1)
	$estamos_em.modulate = cor
	$estamos_em.text = "Estamos em "+ current +" \nVamos para "
	$Voltar/Label.text = "Voltar"
	$Voltar/Label.modulate = cor
	$Opt1/Label.modulate = cor
	$Opt2/Label2.modulate = cor
	$Opt3/Label3.modulate = cor
	$Opt1/Label.text = (path[current][0])
	$Opt2/Label2.text = (path[current][1])
	$Opt3/Label3.text = (path[current][2])
	pass


func saveCurrent(current):
	var file = File.new()
	file.open("res://Player.txt", File.READ)
	var info = file.get_as_text().split(":")
	var leve = info[1].split(";")
	var eg =  file.get_as_text().split(";")[1]
	#moveu(leve[0], current)
	
	var eg1 = int(eg) - 1
	leve[1] = str(eg1)
	
	leve[0] = current
	print(info[0] + ":" + leve[0] + ";" + leve[1])
	write(info[0] + ":" + leve[0] + ";" + leve[1])
	
	pass
	
func moveu(cenaout, cenain):
	db.query_with_bindings("select id from cidades where nome = ?;", [cenaout])
	var ids = [db.query_result[0]]
	db.query_with_bindings("select id from cidades where nome = ?;", [cenain])
	ids.append(db.query_result[0])
	print(ids)
	db.query_with_bindings("select * from infojogador where status = '1';")
	var player = db.query_result
	print(player)
	db.query_with_bindings("select ponto from pontos where cenaout = ? and cenain = ?;", [ids[0].id, ids[1].id])
	var incremento = db.query_result
	print(incremento)
	db.query_with_bindings("""update infojogador set score = ? where
	 	id = ?;""", [player[0].score+incremento[0].ponto, player[0].id])
	db.close_db()

func write(txt):
	var file = File.new()
	file.open("res://Player.txt", File.WRITE)
	file.store_string(txt)

func _on_Voltar_pressed():
	get_tree().change_scene("res://Cenas/Epoca.tscn")
	


func _on_Opt1_pressed():
	current = path[current][0]
	saveCurrent(current)
	get_tree().change_scene("res://Cenas/danca_cazumba.tscn")
	
	
func _on_Opt2_pressed():
	current = path[current][1]
	saveCurrent(current)
	get_tree().change_scene("res://Cenas/danca_cazumba.tscn")

func _on_Opt3_pressed():
	current = path[current][2]
	saveCurrent(current)
	get_tree().change_scene("res://Cenas/danca_cazumba.tscn")
	
func _on_Opt4_pressed():
	if current != 0:
		current = 0
		saveCurrent(current)
		get_tree().change_scene("res://Cenas/danca_cazumba.tscn")
		
		#get_tree().change_scene("res://Cenas/Grajau0.tscn")

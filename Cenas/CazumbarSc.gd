extends Sprite


const path = {
	"Sao Luis": ["Imperatriz", "Guimarães", "Gurupi"],
	"Imperatriz": ["Viana", "Grajaú", "Sao Luis"],
	"Grajaú": ["Imperatriz", "Pindaré", "Carolina"],
	"Gurupi": ["Caxias", "Carolina", "Buriticupu"],
	"Pindaré": ["Sao Luis", "Gurupi", "Codó"],
	"Alcântara": ["Santa Inês", "Viana", "Codó"],
	"Guimarães": ["Caxias", "Santa Inês", "Sao Luis"],
	"Buriticupu": ["Imperatriz", "Carolina", "Gurupi"],
	"Caxias": ["Sao Luis", "Imperatriz", "Santa Inês"],
	"Carolina": ["Sao Luis", "Viana", "Santa Inês"],
	"Barrerinhas": ["Alcântara", "Viana", "Caxias"],
	"Codó": ["Guimarães", "Buriticupu", "Barrerinhas"],
	"Santa Inês": ["Imperatriz", "Guimarães", "Gurupi"],
	"Viana": ["Sao Luis", "Imperatriz", "Caxias"],
	
}
var current = ""

func _ready():
	var file = File.new()
	file.open("res://player.txt", File.READ)
	current = file.get_as_text().split(":")[1].split(";")[0]
	print(current)
	var cor = Color(0, 0, 0, 1)
	$estamos_em.modulate = cor
	$estamos_em.text = "Estamos em "+ current +" \nVamos para: "
	$Voltar/Label.text = "Voltar"
	$Voltar/Label.modulate = cor
	$Opt1/Label.modulate = cor
	$Opt2/Label2.modulate = cor
	$Opt3/Label3.modulate = cor
	$Opt1/Label.text = (path[current][0])
	$Opt2/Label2.text = (path[current][1])
	$Opt3/Label3.text = (path[current][2])


func saveCurrent(current):
	var file = File.new()
	file.open("res://Player.txt", File.READ)
	var info = file.get_as_text().split(":")
	var leve = info[1].split(";")
	leve[0] = current
	print(info[0] + ":" + leve[0] + ";" + leve[1])
	write(info[0] + ":" + leve[0] + ";" + leve[1])

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
	
	#get_tree().change_scene("res://Cenas/Epoca.tscn")


func _on_Opt2_pressed():
	current = path[current][1]
	saveCurrent(current)
	get_tree().change_scene("res://Cenas/danca_cazumba.tscn")
	#get_tree().change_scene("res://Cenas/Epoca.tscn")


func _on_Opt3_pressed():
	current = path[current][2]
	saveCurrent(current)
	get_tree().change_scene("res://Cenas/danca_cazumba.tscn")
	#get_tree().change_scene("res://Cenas/Epoca.tscn")


func _on_Opt4_pressed():
	if current != 0:
		current = 0
		saveCurrent(current)
		get_tree().change_scene("res://Cenas/danca_cazumba.tscn")
		
		#get_tree().change_scene("res://Cenas/Grajau0.tscn")

extends Sprite

const path = {
	"0": ["1928", "1950", "1988"],
	"1928": ["1900", "1950", "1902"],
	"1950": ["1903", "1904", "1905"],
	"1988": ["1906", "1907", "1908"],
	"1900": ["10", "0", "0"],
	"1901": ["0", "0", "0"],
	"1902": ["0", "0", "0"],
	"1903": ["0", "0", "0"],
	"1904": ["0", "0", "0"],
	"1905": ["0", "0", "0"],
	"1906": ["0", "0", "0"],
	"1907": ["0", "0", "0"],
	"1908": ["0", "0", "0"],
}
var current = 0

func _ready():
	var file = File.new()
	file.open("res://player.txt", File.READ)
	current = file.get_as_text().split(":")[1].split(";")[0]
	print(current)
	var cor = Color(0, 0, 0, 1)
	$Label.modulate = cor
	$Label2.modulate = cor
	$Label3.modulate = cor
	$Label.text = (path[current][0])
	$Label2.text = (path[current][1])
	$Label3.text = (path[current][2])


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
	get_tree().change_scene("res://Cenas/Grajau0.tscn")


func _on_Opt1_pressed():
	current = path[current][0]
	saveCurrent(current)
	get_tree().change_scene("res://Cenas/Epoca.tscn")


func _on_Opt2_pressed():
	current = path[current][1]
	saveCurrent(current)
	get_tree().change_scene("res://Cenas/Epoca.tscn")


func _on_Opt3_pressed():
	current = path[current][2]
	saveCurrent(current)
	get_tree().change_scene("res://Cenas/Epoca.tscn")


func _on_Opt4_pressed():
	if current != 0:
		current = 0
		saveCurrent(current)
		get_tree().change_scene("res://Cenas/Grajau0.tscn")

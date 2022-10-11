extends PathFollow2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var path = get_node(".")

# Called when the node enters the scene tree for the first time.
func _process(delta):
	set_offset(get_offset()+150*delta)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

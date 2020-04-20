extends CanvasLayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_key_getThing(texture, name):
	get_node("Control/have/background/Texture").texture=texture
	get_node("Control/have/Label").text=name
	pass # Replace with function body.

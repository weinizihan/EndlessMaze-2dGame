extends AcceptDialog

var NextLevel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	popup()
	rect_position=get_parent().get("position")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rect_position=get_parent().get("position")


func _on_AcceptDialog_confirmed():
	get_tree().change_scene(NextLevel)

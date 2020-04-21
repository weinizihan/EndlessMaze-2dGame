extends Area2D

export var NextLevel = ""

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_DestinationFlag_body_entered(body):
#	print("!!!恭喜你通过了这一关!!!")
#	var cam = get_parent().get_node("Camera2D")
#
#	var dialog = load("res://object/LevelClearDialog.tscn")
#	var node=dialog.instance()
#	if cam==null:
#		get_parent().add_child(node)
#	else:
#		get_parent().get_node("Camera2D").add_child(node)
#	node.NextLevel=NextLevel
#	#find_node("AcceptDialog").popup()  #AcceptDialog 中信号处理
	get_node("CanvasLayer/Dialog").popup_centered()


func _on_Dialog_confirmed():
	get_tree().change_scene(NextLevel)

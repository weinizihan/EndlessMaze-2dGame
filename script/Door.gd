extends Area2D

export var keyName="key"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Door_body_entered(body):
	if body.name == "PlayerBody":
		if get_parent().find_node("PlayerBody").have==keyName:
			#print("des")
			#find_node("StaticBody2D").free()
			#disconnect("body_entered", self, "_on_Door_body_entered")
			queue_free()

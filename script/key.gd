extends Area2D

export var thingName="key"
signal getThing(texture, name)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_key_body_entered(body):
	if body.name == "PlayerBody":
#		get_parent().find_node("PlayerBody").have=thingName
		Global.player.have=thingName
#		emit_signal("getThing",)
		Hud._on_key_getThing(get_node("Sprite").texture, thingName)
		queue_free()
	pass # Replace with function body.

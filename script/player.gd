extends KinematicBody2D

var speed=200
var have=""
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	find_node("Player").play("stand")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var walk=false
	if(Input.is_action_pressed("ui_left")):
		walk=true
		move_and_slide(Vector2(-speed,0))
	if(Input.is_action_pressed("ui_right")):
		walk=true
		move_and_slide(Vector2(speed,0))
	if(Input.is_action_pressed("ui_up")):
		walk=true
		move_and_slide(Vector2(0,-speed))
	if(Input.is_action_pressed("ui_down")):
		walk=true
		move_and_slide(Vector2(0,speed))
	if(walk):
		find_node("Player").play("walking")
	else:
		find_node("Player").play("stand")


func _on_PlayerBody_body_entered(body):
	print(body.name)

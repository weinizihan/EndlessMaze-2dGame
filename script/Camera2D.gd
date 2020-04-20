extends Camera2D
export var playerboundary = 200
export var camSpeed = 0
export var camSpeedD = 4

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.cam = self
	position = get_parent().find_node("PlayerBody").get("position")
	current=true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	var playPos = get_parent().find_node("PlayerBody").get("position")
#	var camPos = get("position")
#	if playPos[0] - camPos[0] > playerboundary:
#		position += Vector2(camSpeed + (playPos[0] - camPos[0] + playerboundary)/camSpeedD, 0) * delta
#	if playPos[0] - camPos[0] < -playerboundary:
#		position -= Vector2(camSpeed - (playPos[0] - camPos[0] - playerboundary)/camSpeedD, 0) * delta
#	if playPos[1] - camPos[1] > playerboundary:
#		position += Vector2(0, camSpeed + (playPos[1] - camPos[1] + playerboundary)/camSpeedD) * delta
#	if playPos[1] - camPos[1] < -playerboundary:
#		position -= Vector2(0, camSpeed- (playPos[1] - camPos[1] - playerboundary)/camSpeedD) * delta 
	position=get_parent().find_node("PlayerBody").get("position")
	#print(position)

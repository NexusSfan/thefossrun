extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# get_node("./Music").play(0.0)
	print("fix bug")
	randomize()
	# seed("The Foss Run".hash())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_released("player_quit"):
		get_tree().quit()

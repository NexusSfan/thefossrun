extends Sprite2D
var jumping = false
@export var rotation_speed = 1.5
var rotation_direction = 0

func _physics_process(delta):
	var onfloor = get_parent().onfloor
	if Input.is_action_just_pressed("player_jump"):
		jumping = true
	if Input.is_action_just_released("player_jump"):
		jumping = false
	rotation_direction = 3.0
	if not onfloor:
		rotation += rotation_direction * rotation_speed * delta
	else:
		rotation = 0

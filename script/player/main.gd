extends CharacterBody2D
@export var SPEED = 300.0
@export var JUMP_VELOCITY = -700.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var jumping = false
var onfloor = false
var attempt = 1.0

var playerpos
var oldpos

func _ready():
	oldpos = Vector2(position.x, position.y)

func _physics_process(delta):
	oldpos = Vector2(position.x, position.y)
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		onfloor = false
	else:
		onfloor = true
	if Input.is_action_just_pressed("player_jump"):
		jumping = true
	if Input.is_action_just_released("player_jump"):
		jumping = false
	# Handle jump.
	if jumping == true and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	velocity.x = SPEED

	move_and_slide()
	
	playerpos = position
	
	print(position)
	print(oldpos)
	if (oldpos == position):
		die()


func _on_deadly_1_body_entered(body):
	if(body.name == "player"):
		die()

func die():
	position = Vector2(-610,545)
	attempt += 1.0
	# get_node("../Music").stop()
	# get_node("../Music").play(0.0)

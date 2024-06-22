extends Camera2D
@export var speed = 100 # How fast the player will move (pixels/sec).
var screen_size = get_viewport_rect().size # Size of the game window.

# Called when the node enters the scene tree for the first time.
func _ready():
	print(typeof(screen_size))


func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	velocity.x += 40
	if Input.is_action_pressed("ui_select"):
		velocity.y += -40

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		position += velocity * delta


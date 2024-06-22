extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	print("ATTEMPT" + str(get_node("../../player").attempt))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str("Attempt " + str(get_node("../../player").attempt))

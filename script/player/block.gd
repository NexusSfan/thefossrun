extends Area2D

func _process(delta):
	position = Vector2(get_node("../player").playerpos.x + 50, get_node("../player").playerpos.y)

func _on_area_entered(area):
	print(area.name)
	if area.name == "blockcollide":
		get_node("../player").die()

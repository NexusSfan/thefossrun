extends Area2D


func _process(delta):
	position = Vector2(get_node("../player").playerpos.x, get_node("../player").playerpos.y)

func _on_area_entered(area):
	print(area.name)

func _on_body_entered(body):
	print(body.name)

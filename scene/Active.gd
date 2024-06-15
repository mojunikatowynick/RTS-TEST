extends State
class_name  Active

@export var player: CharacterBody2D
@export var active_rec: Polygon2D

func Enter():
	active_rec.visible = true

func Physics_update(delta: float):
	pass

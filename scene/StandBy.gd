extends State
class_name  StandBy

@export var player: CharacterBody2D

func Enter():
	player.active_rec.visible = false

func Physics_update(delta: float):
	if player.selected:
		Transitioned.emit(self, "Active")

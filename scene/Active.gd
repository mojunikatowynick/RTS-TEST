extends State
class_name  Active

@export var player: CharacterBody2D

func Enter():
	player.active_rec.visible = true
	player.navigation_agent_2d.path_desired_distance = 4.0
	player.navigation_agent_2d.target_desired_distance = 4.0

func Physics_update(delta: float):
	if player.selected == false:
		Transitioned.emit(self, "StandBy")
		
	if player.target:
		player.move_and_slide()
		var next_path_pos: Vector2 = player.navigation_agent_2d.get_next_path_position()
		var direction: Vector2 = (next_path_pos - player.global_position).normalized()
		player.navigation_agent_2d.target_position = player.target
		player.velocity = direction * player.speed
		if player.velocity.length() > 0:
			player.rotation = player.velocity.angle()
		if player.position.distance_to(player.target) < player.target_radius:
			player.target = null


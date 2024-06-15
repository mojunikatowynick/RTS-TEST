extends CharacterBody2D

@export var speed = 100  # movement speed
@export var active_rec: Polygon2D

@onready var State_machine = $StateMachine
@onready var navigation_agent_2d = $NavigationAgent2D
@onready var detect = $Detect

var av = Vector2.ZERO  # avoidance vector
var avoid_weight = 0.1  # how strongly to avoid other units
var target_radius = 50  # stop when this close to target
var selected = false:
	set = set_selected
var target = null:
	set = set_target

func _ready():
	pass
	
#func _physics_process(delta):
	

func set_selected(value):
	selected = value

func set_target(value):
	target = value

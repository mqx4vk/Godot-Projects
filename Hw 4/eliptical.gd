extends Node2D

@export var rotation_speed : float
@export var oscillation_frequency : float = 1.0
@export var amplitude : float = 0.2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var oscillation = amplitude * sin(oscillation_frequency * delta)
	transform = transform.rotated_local(rotation_speed + oscillation)

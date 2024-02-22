extends Camera3D

# Adjust the sensitivity based on your preference.
const SENSITIVITY = 0.25
const MOVEMENT_SPEED = 2.0

var mouse_dragging = false
var initial_mouse_pos = Vector2()
var velocity = Vector3()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				mouse_dragging = true
				initial_mouse_pos = event.global_position
			else:
				mouse_dragging = false

	if event is InputEventMouseMotion and mouse_dragging:
		var delta = event.global_position - initial_mouse_pos
		initial_mouse_pos = event.global_position

		# Adjust sensitivity based on your preference.
		rotate_y(deg_to_rad(-delta.x * SENSITIVITY))
		rotate_object_local(Vector3(1, 0, 0), deg_to_rad(-delta.y * SENSITIVITY))
func _process(delta):
	# Get input direction for movement
	var direction = Vector3.ZERO
	if Input.is_action_pressed("right"):
		direction -= transform.basis.z
	if Input.is_action_pressed("left"):
		direction += transform.basis.z
	if Input.is_action_pressed("forward"):
		direction -= transform.basis.x
	if Input.is_action_pressed("back"):
		direction += transform.basis.x

	# Normalize the direction vector to ensure consistent movement speed in all directions
	direction = direction.normalized()

	# Apply movement
	velocity = direction * MOVEMENT_SPEED
	# Move the camera
	translate(velocity * delta)

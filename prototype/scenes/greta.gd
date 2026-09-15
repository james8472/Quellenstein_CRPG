extends CharacterBody2D

@export var speed := 250.0

@onready var nav: NavigationAgent2D = get_node_or_null("NavigationAgent2D")

func _physics_process_org(delta):
	var direction := Input.get_vector(
		"ui_left",
		"ui_right",
		"ui_up",
		"ui_down"
	)
	
	velocity = direction * speed
	move_and_slide()

func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				nav.target_position = get_global_mouse_position()

func _physics_process(delta):

	var next_point = nav.get_next_path_position()
	var direction = global_position.direction_to(next_point)
	velocity = direction * speed
	move_and_slide()
	

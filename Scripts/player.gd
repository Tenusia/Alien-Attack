extends CharacterBody2D

var moveSpeed = 400

func _physics_process(delta):
	velocity = Vector2(0,0)
	
	if Input.is_action_pressed("move_right"):
		velocity.x = moveSpeed
	if Input.is_action_pressed("move_left"):
		velocity.x = -moveSpeed
	if Input.is_action_pressed("move_up"):
		velocity.y = -moveSpeed
	if Input.is_action_pressed("move_down"):
		velocity.y = moveSpeed
	
	move_and_slide()
	
	if global_position.x < 40:
		global_position.x = 40;

	print(global_position)


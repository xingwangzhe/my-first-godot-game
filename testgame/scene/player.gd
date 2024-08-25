extends CharacterBody2D


const SPEED = 250.0
const JUMP_VELOCITY = -350.0
@onready var character_body_2d: AnimatedSprite2D = $CharacterBody2D


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left_move", "right_move")
	# return -1,0,1,i forgget it!!
	if direction>0:
		character_body_2d.flip_h=0
	elif direction<0:
		character_body_2d.flip_h=1 
	if is_on_floor():
		if direction==0:
			character_body_2d.play("move");
		elif direction!=0:
			character_body_2d.play("run");
	else:
			character_body_2d.play("jump");
	

	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		

	move_and_slide()

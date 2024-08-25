extends AnimatableBody2D
@onready var ray_castright: RayCast2D = $RayCastright
@onready var ray_castleft: RayCast2D = $RayCastleft
var direction =1;
const SPEED=30;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_castleft.is_colliding():
		direction=1;
	elif ray_castright.is_colliding():
		direction=-1;
	if direction:
		position.x+= direction * SPEED*delta;
	else:
		position.x+=direction*SPEED*delta;

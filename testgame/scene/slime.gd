extends Node2D
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const SPEED=30;
var direction=1;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elap sed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_left.is_colliding()||ray_cast_right.is_colliding():
		direction*=-1
		animated_sprite_2d.flip_h=!animated_sprite_2d.flip_h
	position.x+=SPEED*delta*direction;

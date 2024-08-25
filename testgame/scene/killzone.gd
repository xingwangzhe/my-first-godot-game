extends Area2D

@onready var timer: Timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
	print("死了");
	Engine.time_scale=0.5;
	body.get_node("player").queue_free();
	body.character_body_2d.flip_v=1;
	body.velocity.y=-100;
	timer.start();
	


func _on_timer_timeout() -> void:
	pass # Replace with function body.
	Engine.time_scale=1;
	get_tree().reload_current_scene();

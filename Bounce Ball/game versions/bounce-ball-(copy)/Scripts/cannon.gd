extends Sprite2D

var veiwpoint
var cannon_bounce = true

var speed = 1200


const ball_scene = preload("res://ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if cannon_bounce == true:
		global_position.x = move_toward(global_position.x, 509, 300 * delta)
		if global_position.x == 509:
			cannon_bounce = false
	
	
	if cannon_bounce == false:
		global_position.x = move_toward(global_position.x, -500, 300 * delta)
		if global_position.x == -500:
			cannon_bounce = true
	
	$Node2D/Sprite2D.look_at(get_global_mouse_position())
	$Node2D/Sprite2D.rotation += deg_to_rad(90)
	
	var shifted_angle = wrapf($Node2D/Sprite2D.global_rotation_degrees - 180.0, -180.0, 180.0)
		
	
	$Node2D/Sprite2D.global_rotation_degrees = clampf(shifted_angle, -90, 90)

	if Input.is_action_just_pressed("shoot"):
		
		var ball_instance = ball_scene.instantiate()
		
		ball_instance.global_transform = $Node2D/Sprite2D.global_transform 
		
		get_tree().current_scene.add_child.call_deferred(ball_instance)
		
		var direction = (get_global_mouse_position() - $Node2D/Sprite2D.global_position).normalized()
		ball_instance.linear_velocity = direction * speed









func _on_area_2d_2_area_entered(area):
	speed += 500

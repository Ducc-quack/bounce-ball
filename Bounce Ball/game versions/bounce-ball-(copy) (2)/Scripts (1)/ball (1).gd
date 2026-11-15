extends RigidBody2D


var kill_check = false

func kill():
	
	if kill_check == true:
		queue_free()
	


# Called when the node enters the scene tree for the first time.
func _ready():
	EventBus.kill_ball.connect(kill)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		
	EventBus.ball_height.emit()


func _on_area_2d_area_entered(area):
	kill_check = true 

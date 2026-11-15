extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func add_points2():
	$"../Control/ProgressBar".value += 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


func _on_score_area_body_entered(body):
	
	$score_area/Blue.modulate = Color(1.5, 1.5, 1.0, 1.0)
	add_points2()
	await get_tree().create_timer(1.0).timeout
	$score_area/Blue.modulate = Color(1.0, 1.0, 1.0, 1.0)


func _on_score_area_2_body_entered(body):
	$score_area2/Blue2.modulate = Color(1.5, 1.5, 1.0, 1.0)
	add_points2()
	await get_tree().create_timer(1.0).timeout
	$score_area2/Blue2.modulate = Color(1.0, 1.0, 1.0, 1.0)

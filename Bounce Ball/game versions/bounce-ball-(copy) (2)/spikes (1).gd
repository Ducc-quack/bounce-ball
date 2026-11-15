extends Node2D
@onready var sfx_contact_spk: AudioStreamPlayer2D = $"../SFX_CONTACT_SPK" #ge audio loc



# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func add_points():
	$"../Control/ProgressBar".value += 10
	



func _on_spike_area_body_entered(body):
	if body == $"Yellow2/StaticBody2D2":
		return
	else:
		$Yellow2.modulate = Color(1.5, 1.5, 1.0, 1.0)
		sfx_contact_spk.play()
		add_points()
		await get_tree().create_timer(1.0).timeout
		$Yellow2.modulate = Color(1.0, 1.0, 1.0, 1.0)


func _on_spike_area_2_body_entered(body):
	if body == $"Yellow/StaticBody2D2":
		return
	else:
		sfx_contact_spk.play()
		$Yellow.modulate = Color(1.5, 1.5, 1.0, 1.0)
		add_points()
		await get_tree().create_timer(1.0).timeout
		$Yellow.modulate = Color(1.0, 1.0, 1.0, 1.0)


func _on_spike_area_3_body_entered(body):
	if body == $"Yellow3/StaticBody2D2":
		return
	else:
		sfx_contact_spk.play()
		$Yellow3.modulate = Color(1.5, 1.5, 1.0, 1.0)
		add_points()
		await get_tree().create_timer(1.0).timeout
		$Yellow3.modulate = Color(1.0, 1.0, 1.0, 1.0)


func _on_spike_area_4_body_entered(body):
	if body == $"Yellow4/StaticBody2D2":
		return
	else:
		sfx_contact_spk.play()
		$Yellow4.modulate = Color(1.5, 1.5, 1.0, 1.0)
		add_points()
		await get_tree().create_timer(1.0).timeout
		$Yellow4.modulate = Color(1.0, 1.0, 1.0, 1.0)

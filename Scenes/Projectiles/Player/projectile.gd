extends Area3D


## Attributes
const SPEED = 15.0
const distance_range = 50.0
var curr_distance = 0.0


func _physics_process(delta):
	position += -transform.basis.z * SPEED * delta # Moves projectile in the direction its facing
	curr_distance += SPEED * delta
	
	# If the bullet reaches a certain range delete it
	if (curr_distance >= distance_range):
		queue_free()


func _on_body_entered(body):
	if body.is_in_group("enemies"):
		body._on_projectile_hit(50)
		queue_free()
		
	else :
		queue_free()

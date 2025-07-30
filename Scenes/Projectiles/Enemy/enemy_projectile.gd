extends Area3D


## Attributes
const SPEED = 13.0
const distance_range = 100.0
var curr_distance = 0.0


func _physics_process(delta):
	position += -transform.basis.z * SPEED * delta # Moves projectile in the direction its facing
	curr_distance += SPEED * delta
	
	# If the bullet reaches a certain range delete it
	if (curr_distance >= distance_range):
		queue_free()


func _on_body_entered(body):
	if body.is_in_group("player"):
		body._take_damage(10)
		queue_free()
		
	else :
		queue_free()

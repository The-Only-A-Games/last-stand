extends CharacterBody3D


## Enemy Attributes
const SPEED = 5
var health = 100
var can_shoot = true

## Tools
var player
var state = "CHASE"
@onready var nav_agent = $NavigationAgent3D
@onready var detect_player = $DetectPlayer
@onready var marker = $Marker
const ENEMY_PROJECTILE = preload("res://Scenes/Projectiles/Enemy/enemy_projectile.tscn")
@onready var timer = $Timer


func _ready():
	player = get_parent().get_parent().get_node("player")
	timer.wait_time = randf_range(1.5, 5.0)


func _physics_process(delta):
	## Kill player if health is below or equals to 0
	if health <= 0:
		queue_free()
	
	_on_raycast_collide()
	
	if (player != null && state == "CHASE"):
		## Set the target position
		nav_agent.set_target_position(player.global_position) # Set it to the players global position
		
		## Using the taget position we have set, capture the next path position
		var next_nav_point = nav_agent.get_next_path_position()
		
		## Set the enemy to look at its target direction
		var lookDirection = Vector3(player.global_position.x, 0.0, player.global_position.z)
		look_at(lookDirection)
		
		"""
			next_nav_point captures our next position
			
			TO MAKE ENEMY MOVE TO THE DIRECTION OF ITS TARGET:
				1. subtract it global position with the targets position
				2. The subtract serves as a forward direction, hence it moves in the direction of the target
				3. Just multiply it by speed to set its moving / travelling speed
		"""
		velocity = (next_nav_point - global_position).normalized() * SPEED
		move_and_slide()
		
	elif state == "MELEE":
		pass ## Don't do anything for now


## If enemy is at a good distance to perform a melee attack change state
func _on_malee_attack_point_body_entered(body):
	if body.is_in_group("player"):
		state = "MELEE"


## If player existed melle box revert to CHASE state
func _on_malee_attack_point_body_exited(body):
	if body.is_in_group("player"):
		state = "CHASE"


## Reduces enemy health when they killed
func _on_projectile_hit(hits):
	health -= hits


## Shooting mechanic
func _on_raycast_collide():
	if detect_player.is_colliding():
		var collider = detect_player.get_collider()
		
		if (can_shoot && collider.is_in_group("player")):
			_shoot()
	
	can_shoot = false

func _shoot():
	var bullet = ENEMY_PROJECTILE.instantiate()
	marker.add_child(bullet)
	bullet.global_transform = marker.global_transform


func _on_timer_timeout():
	can_shoot = true

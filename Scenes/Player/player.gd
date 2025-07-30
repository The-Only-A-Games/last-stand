extends CharacterBody3D


## Attributes
var health = 100.0
const SPEED = 7.0
const accelaration = 2
@export_range(0.0, 1.0) var CAMERA_SENSITIVITY = 0.25
var camera_input_direction


## Tool attributes
@onready var marker = $Marker
const PROJECTILE = preload("res://Scenes/Projectiles/Player/projectile.tscn")
@onready var camera = %Camera
@onready var pivot = %Pivot
@onready var canvas_layer = $"../CanvasLayer"


func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _unhandled_input(event):
	if (event is InputEventMouseMotion and Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED):
		# Faces the player in the direction of the mouse
		rotation_degrees.y -= event.relative.x * CAMERA_SENSITIVITY
		#camera_input_direction = event.screen_relative * CAMERA_SENSITIVITY
		pass
	
	# Brings back mouse
	if (Input.is_action_just_pressed("ui_cancel")):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE


func _physics_process(delta):
	# Capturing inputs
	var input_direction_2d = Input.get_vector("move_left", "move_right", "move_forward", "move_backwards")
	var input_direction_3d = Vector3(input_direction_2d.x, 0.0, input_direction_2d.y)
	
	# transform.basis moves player and not the world itself
	var direction = (transform.basis * input_direction_3d).normalized()
	
	
	velocity.y -= 20 * delta
	velocity.x = direction.x * SPEED
	velocity.z = direction.z * SPEED
	move_and_slide()
	
	if Input.is_action_just_pressed("shoot"):
		shoot()


func shoot():
	var bullet = PROJECTILE.instantiate()
	marker.add_child(bullet)
	bullet.global_transform = marker.global_transform


func _take_damage(hit):
	if (canvas_layer.get_health() > 0):
		canvas_layer.decrease_health(hit)

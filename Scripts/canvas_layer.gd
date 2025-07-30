extends CanvasLayer

## Tools
@onready var score = $Score
@onready var health_bar = $HealthBar


# Updates the score on the UI
func set_score(n):
	score.text = "Score: " + str(n)

# Decrease player health when called
func decrease_health(n):
	health_bar.value -= n

func get_health():
	return health_bar.value

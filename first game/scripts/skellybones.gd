extends CharacterBody2D

const speed = 30
var dir: Vector2

var is_skellybones_chase: bool

func _ready():
	is_skellybones_chase = false

func _on_timer_timeout():
	$timer.wait_time = choose([1.0, 2.0, 3.0])
	if !is_skellybones_chase:
		dir = choose ([Vector2.RIGHT, Vector2.LEFT, Vector2.UP, Vector2.DOWN ])
		print(dir)

func choose(array):
	array.shuffle()
	return array.front()

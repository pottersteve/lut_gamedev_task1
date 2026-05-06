extends Node2D

const SPEED := 60

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	var direction := Vector2.ZERO
	
	"""if Input.is_action_pressed("ui_left"):
		$Icon.position.x -= SPEED * delta
	if Input.is_action_pressed("ui_right"):
		$Icon.position.x += SPEED * delta
	if Input.is_action_pressed("ui_up"):
		$Icon.position.y -= SPEED * delta
	if Input.is_action_pressed("ui_down"):
		$Icon.position.y += SPEED * delta"""
		
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	
	if direction.length() > 0:
		direction = direction.normalized()
		
	$Icon.position += direction * SPEED * delta

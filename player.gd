extends CharacterBody2D

@export var speed : float = 130.0

func _physics_process(_delta):
	# Читаем нажатия клавиш стрелочек или WASD
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if direction != Vector2.ZERO:
		velocity = direction * speed
	else:
		velocity = velocity.move_toward(Vector2.ZERO, speed)

	move_and_slide()

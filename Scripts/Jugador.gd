extends CharacterBody2D #Aquest script pertany a un CharacterBody2D

var velocitat := 200

func _ready() -> void:
	position = Vector2(576, 337)

func _process(delta: float) -> void:
	var direccio = Vector2.ZERO
	direccio = Input.get_vector("mou_esquerra", "mou_dreta", "mou_amunt", "mou_avall")
	velocity = direccio * velocitat
	move_and_slide()
	anima(velocity, delta)

	#if Input.is_action_pressed("mou_dreta"):
		#direccio += Vector2.RIGHT
	#if Input.is_action_pressed("mou_esquerra"):
		#direccio += Vector2.LEFT
	#if Input.is_action_pressed("mou_amunt"):
		#direccio += Vector2.UP
	#if Input.is_action_pressed("mou_avall"):
		#direccio += Vector2.DOWN
	
	#position = position + direccio * velocitat * delta
	
	#position = position + velocitat
	#rotation = rotation + 1
	#scale = scale + escala * delta

func anima(velocitat: Vector2, delta: float) -> void:
	var velocitat_angular = 0.01
	
	$Pare/Fill.rotation += velocitat_angular * velocitat.x * delta
	$Pare/Fill2.rotation += velocitat_angular * velocitat.x * delta

extends Area2D

@export var color_entrada = Color(1,1,1)
@export var color_sortida = Color(1,1,1)

func _on_body_exited(body: Node2D) -> void:
	$ColorRect.color = color_sortida


func _on_body_entered(body: Node2D) -> void:
	$ColorRect.color = color_entrada

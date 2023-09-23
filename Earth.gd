extends Sprite2D

@onready var ap = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	ap.play("idle")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventMouseButton and event.is_pressed() and get_rect().has_point(to_local(event.position)):
		self.transform.x += Vector2(0.3, 0)
		self.transform.y += Vector2(0, 0.3)
		$"..".clicked()
		await get_tree().create_timer(0.1).timeout
		self.transform.x -= Vector2(0.3, 0)
		self.transform.y -= Vector2(0, 0.3)

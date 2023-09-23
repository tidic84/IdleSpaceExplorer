extends Sprite2D

@onready var ap = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	self.position = Vector2(1200, 0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.translate(Vector2(-1,1.5))
	self.rotate(0.03)
	pass

func _input(event):
	if event is InputEventMouseButton and event.is_pressed() and get_rect().has_point(to_local(event.position)) and self.frame != 7:
		ap.play("explode")

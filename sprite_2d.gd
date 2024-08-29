extends Sprite2D

var speed = 400
var angular_speed = PI

func _process(delta):
	# rotates the image at its own place
	rotation += angular_speed * delta
	
	# changes the position of the image
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta

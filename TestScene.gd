extends Spatial


func get_path_direction(position):
	var offset = $track_2/Path.curve.get_closest_offset(position)
	$track_2/Path/PathFollow.offset = offset
	return $track_2/Path/PathFollow.transform.basis.z

func _ready():
	$Camera.set_target(get_node("CarSUV/CarMesh"))
	print($track_2["transform"])

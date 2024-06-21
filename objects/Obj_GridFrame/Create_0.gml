if instance_exists(Obj_Grid) <= 0 {
	show_message("Shouldn't be made unless you can hang a grid on it")
	instance_destroy()
}
size = sprite_width
width = 0
height = 0
depth = 10
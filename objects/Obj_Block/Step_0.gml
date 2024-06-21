if ((instance_exists(Obj_Grid) && !Obj_Grid.gridComplete) || !instance_exists(Obj_Grid)) {
	if position_meeting(mouse_x, mouse_y, id){
		if mouse_check_button_pressed(mb_left)
			blockData.ChangeState(1)
		else if mouse_check_button_pressed(mb_right)
			blockData.ChangeState(2)
	}
}


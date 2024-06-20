if !Obj_Grid.gridComplete
	if position_meeting(mouse_x, mouse_y, id){
		if mouse_check_button_pressed(mb_left)
			blockData.ChangeState(1)
		else if mouse_check_button_pressed(mb_right)
			blockData.ChangeState(2)
	}


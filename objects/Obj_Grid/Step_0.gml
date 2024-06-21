if !gridComplete {
	if mouse_check_button_pressed(mb_left) {
		gridComplete = true
		for (var i = 0; i < rows; i++) {
			for (var j = 0; j < columns; j++) {
		
				if grid[i][j].blockData.desiredState
					if grid[i][j].blockData.state != 1
						gridComplete = false
				
				if !grid[i][j].blockData.desiredState
					if grid[i][j].blockData.state == 1
						gridComplete = false
			}
		}
	}
		
	var nearestBlock = instance_nearest(mouse_x-blockSize/2, mouse_y-blockSize/2, Obj_Block)
	if position_meeting(mouse_x, mouse_y, nearestBlock) {
		gridLinesX = nearestBlock.x
		gridLinesY = nearestBlock.y
	} else {
		ResetGridLines()
	}
}

if !gridComplete {
	
	var nearestBlock = instance_nearest(mouse_x-blockSize/2, mouse_y-blockSize/2, Obj_Block)
	if position_meeting(mouse_x, mouse_y, nearestBlock) {
		gridLinesX = nearestBlock.x
		gridLinesY = nearestBlock.y
		
		if mouse_check_button_pressed(mb_left){
			if(room == Rm_GridCreate && colorMode) {
				nearestBlock.blockData.color = c_white
			} else {
				nearestBlock.blockData.ChangeState(1, true)
				markManyBlocks = nearestBlock.blockData.state
			}
		} else if mouse_check_button_pressed(mb_right) {
			nearestBlock.blockData.ChangeState(2, true)
			markManyBlocks = nearestBlock.blockData.state
		}
		
		if ((mouse_check_button(mb_left) || mouse_check_button(mb_right)) && markManyBlocks > -1)
			nearestBlock.blockData.ChangeState(markManyBlocks, false)
		else
			markManyBlocks = -1
		
		
	} else
		ResetGridLines()
	
	
	if mouse_check_button_pressed(mb_left) {
		if (room == Rm_GridGame) {
			gridComplete = true
			
			for (var i = 0; i < rows; i++) {
				for (var j = 0; j < columns; j++) {
					
					var gridBlock = grid[i][j].blockData
					if gridBlock.desiredState
						if gridBlock.state != 1
							gridComplete = false
				
					if !gridBlock.desiredState
						if gridBlock.state == 1
							gridComplete = false
				}
			}
			colorMode = gridComplete
		} 
		
		else { // room == Rm_GridCreate
			for (var i = 0; i < rows; i++) {
				for (var j = 0; j < columns; j++) {
					grid[i][j].blockData.desiredState = grid[i][j].blockData.state
				}
			}
		}
	}
}

SetBlockColors(colorMode)
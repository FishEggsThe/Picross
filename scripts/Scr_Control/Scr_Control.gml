function SetGridSize(row, column) {
	with Obj_Control {
		rowNum = row
		columnNum = column
	}
}

function CreateGridCode(row, column, blocks) {
	var grid_code = ""
	// Say we have a 2x2 grid, the code would be in three parts
	// 1) The grid matrix (2x2)
	
	
	// 2) The seperator
	grid_code += "&"
	
	// 3) Each block's desired state and color from left to right, up to down
	for(var i = 0; row; i++) {
		for(var j = 0; column; j++) {
			var lol = blocks[i][j].blockData.state
		}
		
	}
	
	return grid_code
}

function TranslateGridCode() {
	// See CreateGridCode function for a good idea how it'll be translated
}
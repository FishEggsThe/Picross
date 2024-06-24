function SetGrid(rows, columns) {
	//TranslateGridCode(code)
	
	with Obj_Control {
		rowNum = rows
		columnNum = columns
	}
}

function CreateGridCode(rows, columns, grid) {
	var grid_code = ""
	// Say we have a 2x2 grid, the code would be in three parts
	// 1) The grid matrix (2x2)               2) The seperator
	grid_code += string(rows) + "x" + string(columns) + "&"
	
	// 3) Each block's desired state and color from left to right, up to down
	for(var i = 0; rows; i++) {
		for(var j = 0; columns; j++) {
			grid_code += string(grid[i][j].blockData.state)
		}
		
	}
	
	return grid_code
}

function TranslateGridCode(code) {
	// See CreateGridCode function for a good idea how it'll be translated
}
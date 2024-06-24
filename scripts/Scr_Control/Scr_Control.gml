function SetGrid(rows, columns) {
	//TranslateGridCode(code)
	
	with Obj_Control {
		rowNum = rows
		columnNum = columns
		//blockArray = theGrid
})
	}
}

function CreateGridCode(rows, columns, grid) {
	var grid_code = ""
	// Say we have a 2x2 grid, the code would be in two parts
	// 1) The grid matrix (2x2)
	grid_code += string(rows) + "&" + string(columns) + "&"
	
	// 2) Each block's desired state and color from left to right, up to down
	for(var i = 0; rows; i++) {
		for(var j = 0; columns; j++) {
			grid_code += string(grid[i][j].blockData.state)
			grid_code += string_char_at(global.base_twenty, grid[i][j].blockData.blockColor)
		}
	}
	
	show_debug_message(grid_code)
	return grid_code
}

function TranslateGridCode(code) {
	// See CreateGridCode function for a good idea how it'll be translated
	with Obj_Control {
		var info = string_split(code, "&")
	
			rowNum = info[0]
			columnNum = info[1]
	
		blockArray = array_create_ext(rows, function() {
			return array_create(columns, noone)
		})
		var index = 0
		for(var i = 0; rowNum; i++) {
			for(var j = 0; columnNum; j++) {
				infoState = real(string_char_at(info[2], index))
				infoColor = string_char_at(info[2], index+1)
				blockArray[i][j] = new Block(infoState, infoColor)
				index+=2
			}
		}
	}
}